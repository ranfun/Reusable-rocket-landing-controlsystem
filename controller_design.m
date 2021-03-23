%controller design
p=[-100,-25,-6,-2,-1,-0.5];
k=place(ss(model).a,ss(model).b,p)
controlmodel=feedback(ss(model),k);