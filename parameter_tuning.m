%parameter tuning
responseTime=2;
steadyError=0.1;
RTrack=TuningGoal.Tracking(model.InputName,model.OutputName,responseTime,steadyError);
RTrack.InputScaling=[6000 100 1];
Rreject = TuningGoal.Gain(model.InputName,model.OutputName,0.1);
%[model,fsoft]=systune(model,[RTrack, Rreject]);
