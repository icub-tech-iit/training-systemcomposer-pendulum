% Copyright (C) 2024 Fondazione Istitito Italiano di Tecnologia (IIT)
% All Rights Reserved.

classdef PendulumTypes < Simulink.IntEnumType
    enumeration
        Pendulum_1(1)
        Pendulum_2(2)
    end
    methods (Static = true)
        function retVal = addClassNameToEnumNames()
            retVal = true;
        end
    end    
end
