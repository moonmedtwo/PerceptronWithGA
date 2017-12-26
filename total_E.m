function E=total_E(W,X,D)
% @brief total_E: return accumulative error of each pair of input
% @param [in] W: weights of neural network
% @param [in] X: 4 pairs of input
% @param [in] D: desired output
E=0;
out = output(X,W); %calculate output 
for i = 1:4
    E = E+((out(i,1)-D(i,1))^2)/2;
end
end
    
