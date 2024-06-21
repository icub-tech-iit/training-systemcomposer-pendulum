function run_mech_explorer(pendulum_type, obstacle_enable, varargin)
% Copyright (C) 2024 Fondazione Istitito Italiano di Tecnologia (IIT)
% All Rights Reserved.
%#ok<*AGROW>
%#ok<*NASGU>

    if nargin == 2
        S1 = dir('./cache');
        S1 = S1(~[S1.isdir]);
        S2 = [];
        for i = 1:length(S1)
            if contains(S1(i).name, 'voltage')
                S2 = [S2; S1(i)];
            end
        end
        [~, idx] = sort([S2.datenum]);
        filename = ['./cache/' S2(idx(end)).name];
    else
        filename = varargin{1};
    end

    data = load(filename);
    Tend = data.voltage.Time(end);

    mdl = 'playback_mech_explorer';
    load_system(mdl);

    set_param(mdl, 'StopTime', num2str(Tend));

    mdlws = get_param(mdl, 'ModelWorkspace');
    setVariablePart(mdlws, 'pendulum_type.Value', pendulum_type);
    setVariablePart(mdlws, 'obstacle_enable.Value', obstacle_enable);
    set_param([mdl '/From File'], 'FileName', filename);

    set_param(mdl, 'SimulationCommand', 'Update');
    pause(3);

    sim(mdl);
    pause(3);

    close_system(mdl, 0);

end
