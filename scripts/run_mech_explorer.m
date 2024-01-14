function run_mech_explorer(pendulum_type)
%#ok<*NASGU>

mdl_name = 'view_mech_explorer';
load_system(mdl_name);
mdl_ws = get_param(mdl_name, 'ModelWorkspace');

setVariablePart(mdl_ws, 'pendulum_type.Value', pendulum_type);
logsout = evalin('base', 'logsout');
sim(mdl_name);

pause(5);
close_system(mdl_name, 0);

end

