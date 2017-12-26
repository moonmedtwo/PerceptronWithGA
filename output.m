function out=output(X,W)
% @brief output: calculate output 
% @param [in] W: weights of neural network
% @param [in] X: 4 pairs of input
for i = 1:4
    net_h1= sum(sum(W(:,1:2)'*X(i,:)),2);
    out_h1=logsig(net_h1);

    net_h2= sum(sum(W(:,3:4)'*X(i,:)),2);
    out_h2=logsig(net_h2);

    out(i,1) = logsig(out_h1*W(:,5)+out_h2*W(:,6));
    
    if(out(i,1)>0.5)
        out(i,1) = 1;
    else
        out(i,1) = 0;
    end
end
end