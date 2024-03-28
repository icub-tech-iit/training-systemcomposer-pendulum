% Copyright (C) 2024 Fondazione Istitito Italiano di Tecnologia (IIT)
% All Rights Reserved.

% Close all open models discarding pending changes
bdclose('all');

% Clear test file from Test Manager
sltest.testmanager.clear;

% Clear results from Test Manager
sltest.testmanager.clearResults;

% Close Test Manager
sltest.testmanager.close;

% Close Requirement sets and editor discarding pending changes
slreq.clear();

% Close all dictionaries discarding pending changes
Simulink.data.dictionary.closeAll('-discard');