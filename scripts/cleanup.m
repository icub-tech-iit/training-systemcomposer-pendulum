% Copyright (C) 2024 Fondazione Istitito Italiano di Tecnologia (IIT)
% All Rights Reserved.

% Clear results from Test Manager
sltest.testmanager.clearResults;

% Clear test file from Test Manager
sltest.testmanager.clear;

% Close Test Manager
sltest.testmanager.close;

% Close Requirement sets and editor discarding pending changes
slreq.clear();

% Close all open models discarding pending changes
bdclose('all');

% Close all dictionaries discarding pending changes
Simulink.data.dictionary.closeAll('-discard');