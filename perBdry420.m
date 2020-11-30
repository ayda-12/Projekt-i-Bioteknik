
% testing some shit 
% definitions 

% e.g. INITIAL MIDDLE pos = [20,25]
x = 20;
y = 25;
posB1 = x + 1;
posB2 = y + 1;

% def all the nghbrs of a target cell 
% these are to be fed into the perBdry function
% such that its neighbors are assigned  

% testing nghbr cond
pos1b = x-1,y-1;
pos2b = x-1,y;
pos3b = x-1,y+1;
pos4b = x,  y-1;
pos5b = x,  y+1;
pos6b = x+1,y-1;
pos7b = x+1,y;
pos8b = x+1,y+1;
pos9b = x,  y;

% WE ARE NOW LOOKING AT NEIGHBORING CELL [20, 26]
% now we have to write the same thing for all other ngbrs 

% enter modulus function 
modVal1 = 25; % what we divide by

%newX = perBdry(posB2,modVal1);
newY = perBdry(posB2,modVal1);

% for one lonley cell on the other side of the matrix
newPosBxy = [x, newY]

 function retValy = perBdry(posB,modVal)
    retModValy = mod(posB,modVal);
    if retModValy < 0
        retValy = retModValy + modVal
    else
        retValy = retModValy 
    end
 end
 
 
 