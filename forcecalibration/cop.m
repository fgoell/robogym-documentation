function [copLocal, copGlobal, forceGlobal] = cop(force, position, threshold, System, Plate)


copLocal         = single(zeros(1,3));
forceGlobal      = single(zeros(1,6));
copGlobal        = single(position(1:3)/1000);

offset = 0.115;

if nargin < 5
    fprintf('Not enough input arguments. Please specify all 4 input arguments.\n')
    return
end
if nargin > 5
    fprintf('Too many input arguments. Please specify only 4 input arguments.\n')
    return
end

switch Plate
    case '9735M'
        a = [ 0 -1  0 ;
              1  0  0 ;
              0  0  0 ];
        b = [ 1  0  0 ;
              0 -1  0 ;
              0  0  0 ]; 
        plateOffset = [-0.0012 ; 
                        0.0014 ; 
                       -0.0392 ];
        z0 = plateOffset(3); 
        
    case '9743M'
        a = [ 0 -1  0 ;
              1  0  0 ;
              0  0  0 ];
        b = [ 1  0  0 ;
              0  1  0 ;
              0  0  0 ]; 
        plateOffset =  [ 0.000365 ; 
                        -0.000116 ; 
                        -0.041919 ];
            
        z0 = plateOffset(3);
        
    case 'Omega191'
        a = [ 0 -1  0 ;
              1  0  0 ;
              0  0  0 ];
        b = [ 1  0  0 ;
              0  1  0 ;
              0  0  0 ]; 
        plateOffset =  [ 0.000365 ; 
                        -0.000116 ; 
                        -0.041919 ];
            
        z0 = plateOffset(3);
    otherwise
        fprintf('Please chose a valiable plate number.\n')
        return
end

switch System 
    case 'RoboGymForcePlate'
        T_Plate_Robot = [ 0  0 -1 ;
                          1  0  0 ;
                          0 -1  0 ];
    case 'RoboGymSensor'
        T_Plate_Robot = [ 0  0 -1 ;
                          1  0  0 ;
                          0 -1  0 ];
    case 'Haileg'
        T_Plate_Robot = [ 0  0 -1 ;
                          1  0  0 ;
                          0 -1  0 ];  
    otherwise
        fprintf('Please chose a valiable system.\n')
        return
end

a = position(4)*pi/180; b = position(5)*pi/180; c = position(6)*pi/180;
Rz = [ cos(a) , -sin(a)  , 0 ;
       sin(a) ,  cos(a)  , 0 ;
       0      , 0       , 1 ];
Ry = [  cos(b) , 0 , sin(b)  ;
        0      , 1 , 0       ;
       -sin(b) , 0 , cos(b) ];
Rx = [ 1 , 0      ,  0       ;
       0 , cos(c) , -sin(c)  ;
       0 , sin(c) ,  cos(c) ];
M = Rz * Ry * Rx;



if force(3) >= threshold
    copLocal         = (( a * force(4:6)' + b * force(1:3)' * z0 ) / force(3))';
    forceGlobal(1:3) =  force(1:3) * (T_Plate_Robot.*(-1));
    forceGlobal(4:6) =  (force(4:6) - cross(copLocal,force(1:3)))*(T_Plate_Robot.*(-1));
    copGlobal        =  copLocal*T_Plate_Robot + (position(1:3)/1000 + []);
end

end