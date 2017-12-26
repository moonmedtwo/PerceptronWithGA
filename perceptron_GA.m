%% NOTE
% change D (D_or/D_and/D_xor/D_nand) in hFitnessFunction to specified desired output
%% initialize 
%input
%4 pairs (0,0) (0,1) (1,0) (1,1)
X=[ 0  0; 0 1; 1 0; 1 1];
%desired output
D_or=[ 0 ; 1 ; 1 ; 1];
D_and=[ 0 ; 0 ; 0 ; 1];
D_xor=[ 0 ; 1 ; 1 ; 0];
D_nand=[ 1 ; 1 ; 1 ; 0];
%% GA for finding best weights W
hFitnessFunction = @(W)total_E(W,X,D_xor) %handle to fitness function
numberOfVariables = 6;
%% Do Genetic algorithm and Loop until acquired specified precision
% Cost function: total_E
minimum_Error = 1;
while(minimum_Error>0.1)
    [W,minimum_Error] = ga(hFitnessFunction,numberOfVariables,[],[],[],[],[],[],[]);
end

W
minimum_Error




    
   