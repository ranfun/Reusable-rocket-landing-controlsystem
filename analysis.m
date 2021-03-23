%analysis
i=pole(model)
ctrb_mat=ctrb(model);
if(rank(ctrb_mat)== size(A,1))
 disp("System is controllable");
end
figure;
step(model)