% Implementation of Conway's 'Game of Life' by Adam Matthews

% Instructions:
% Input an int X from 1-4 for basic demonstrations
% 5 or greater will generate a random board of size X
% Standard game of life rules apply

function lifeBBC(demoNum)
switch demoNum
    case 1
        % Blinker - period 2 blinker
        Board=int8([0 0 0 0 0;
                   0 0 1 0 0;
                   0 0 1 0 0;
                   0 0 1 0 0;
                   0 0 0 0 0]);
       generations = 20;
    case 2
        % Canada Goose - Jason Summers 1999 - period 4 spaceship
        Board=int8([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0 1 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 1 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 0 1 1 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]);
        generations = 140;
    case 3
        % Clock - period 4 oscillator
        Board=int8([0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 1 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 1 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 1 1 1 0 0 0 0 0;
                   0 1 1 0 1 0 0 0 0 1 0 0 0 0;
                   0 1 1 0 1 0 1 1 0 1 0 0 0 0;
                   0 0 0 0 1 0 0 0 1 1 0 1 1 0;
                   0 0 0 0 1 0 0 0 0 1 0 1 1 0;
                   0 0 0 0 0 1 1 1 1 0 0 0 0 0; 
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 1 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 1 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0]);
         generations = 20;
    case 4
        % Kok's Galaxy - Jason Summers 2003 - period 8 oscillator
        Board=int8([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 1 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 1 1 0 0 1 1 1 0 0 0 0;
                   0 0 0 0 1 0 0 0 1 0 1 1 1 0 0;
                   0 0 0 0 1 1 0 1 0 0 0 0 1 0 0;
                   0 0 0 0 0 0 1 0 1 0 0 0 0 0 0;
                   0 0 1 0 0 0 0 1 0 1 1 0 0 0 0;
                   0 0 1 1 1 0 1 0 0 0 1 0 0 0 0;
                   0 0 0 0 1 1 1 0 0 1 1 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 1 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]);
         generations = 53;
    otherwise
        % Randomly generated starting values
        if demoNum >= 5 && demoNum <= 500
            Board=int8(rand(demoNum)); 
        else
            Board=int8(rand(100));
        end
        generations = 100;
end

delayTime = 3/generations; % Such that total delay time is ~ 3 seconds
boardSize = size(Board,1); % Assumes symetrical board

% Basic periodic boundary conditions, where a border value is shifted by 1
% (+ or - depending on direction)
% Note: could have used the same array for north/west and east/south as
% they are identical, however I opted not to for readability.
[northShift,westShift] = deal([boardSize,1:boardSize-1]);
[eastShift,southShift] = deal([2:boardSize,1]);

% Initialise an array to temporarily store number of neighbours for a given cell
neighbourCount = int8(zeros(boardSize,boardSize));
colormap(winter(2));

for i=1:generations
    for y=1:boardSize
        for x=1:boardSize
% Checks in order:
%   123 |
%   8#4 Y
%   765 |
%  --X--          
            neighbourCount(y,x) = ...
                +Board(northShift(y),westShift(x))...   %1 ...
                +Board(northShift(y),x)...              %2 ...                
                +Board(northShift(y),eastShift(x))...   %3 ...
                +Board(y,eastShift(x))...               %4 ...
                +Board(southShift(y),eastShift(x))...   %5 ...
                +Board(southShift(y),x)...              %6 ...
                +Board(southShift(y),westShift(x))...   %7 ...
                +Board(y,westShift(x));                 %8 
        end      
    end
    
    for y=1:boardSize
        for x=1:boardSize
            if Board(x,y) == 0
                if neighbourCount(x,y) == 3
                    Board(x,y) = 1;
                end
            else
                if neighbourCount(x,y) == 2 || neighbourCount(x,y) == 3
                    Board(x,y) = 1;
                else
                    Board(x,y) = 0;
                end
            end
        end
    end
    image(Board);
    pause(delayTime);
end