% Copyright (C) 2024 Fondazione Istitito Italiano di Tecnologia (IIT)
% All Rights Reserved.

classdef ObstacleMode < Simulink.IntEnumType
    enumeration
        Off(0)
        On(1)
    end
    methods (Static = true)
        function retVal = addClassNameToEnumNames()
            retVal = true;
        end
    end    
end
