function run_mech_explorer(pendulum_type, filename)
%#ok<*NASGU>

data = load(filename);
Tend = data.torque.Time(end);

mdl = 'view_mech_explorer';
load_system(mdl);

set_param(mdl, 'StopTime', num2str(Tend));

mdlws = get_param(mdl, 'ModelWorkspace');
setVariablePart(mdlws, 'pendulum_type.Value', pendulum_type);
set_param([mdl '/From File'], 'FileName', filename);

set_param(mdl, 'SimulationCommand', 'Update');
pause(5);

sim(mdl);
pause(5);

close_system(mdl, 0);

end
