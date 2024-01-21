% Close all open models discarding changes
bdclose('all');

% Clear test file from Test Manager
sltest.testmanager.clear;

% Clear results from Test Manager
sltest.testmanager.clearResults;

% Close Test Manager
sltest.testmanager.close;

% Close Requirement sets and editor discarding changes
slreq.clear();