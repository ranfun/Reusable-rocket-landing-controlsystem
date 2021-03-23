%state space modelling
A=[0 1 0 0 0 0; 0 0 0 0 Fe/m 0; 0 0 0 1 0 0; ...
 0 0 0 0 (-Fe*psi-Fs)/m 0; 0 0 0 0 0 1; 0 0 0 0 0 0];
B=[0 0 0; (theta+psi)/m 1/m Fe/m; 0 0 0; ...
 (1-psi*theta)/m -theta/m -Fe*theta/m; 0 0 0;
-psi*(l1+ln)/J l2/J -Fe*(l1+ln)/J];
C=eye(6);
D=0;
model=ss(A,B,C,D);
model=tunableSS('model',size(A,2),size(C,1),size(B,2),'full');
model.StateName={'X-Position','X-Velocity'...
 'Z-Position','Z-Velocity','Angle','Angular Velocity'};
model.InputName={'Main Thruster','Side Thruster','Thruster Angle'};
model.OutputName={'X-Position','X-Velocity'...
 'Z-Position','Z-Velocity','Angle','Angular Velocity'};
