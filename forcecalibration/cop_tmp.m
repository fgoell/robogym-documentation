load calibration_data
measurementPoints = fieldnames(force);
measurementPoints = measurementPoints(contains(measurementPoints,'COP'));

T_robot_2_sensor = [ -1  0  0 ;
                      0  1  0 ;
                      0  0 -1];
z0 = 0.08;
forceThreshold = 20;

for mp=1:length(measurementPoints)
    
    senForce   = T_robot_2_sensor * force.(measurementPoints{mp})(1:3)';
    senMoments = T_robot_2_sensor * force.(measurementPoints{mp})(4:6)';
    
    if norm(senForce) > forceThreshold
    
        senCOP(1) = senMoments(2)/senForce(3) + senForce(1)/senForce(3)*z0;
        senCOP(2) = senMoments(1)/senForce(3) + senForce(2)/senForce(3)*z0;
        senCOP(3) = z0
        
    else
        
        senCOP = [0 0 0.035]
        
    end
    
%     if abs(senCOP(1)) > 0.2 || abs(senCOP(2)) > 0.3
%         
%         syms x y z
%         eqn = [senMoments(2) - senForce(3) * x + senForce(1) * z == 0,...
%                senMoments(1) - senForce(3) * y - senForce(2) * z == 0,...
%                senMoments(3) + senForce(1) * y - senForce(2) * x == 0];
%         S = solve(eqn,[x y z]);
%         S.x
%         S.y
%         S.z
%     end
end