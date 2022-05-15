function plotData(X, y)

  
  %Seperating positive and negative results
  pos = find(y==1); %index of positive results
  neg = find(y==0); %index of negative results
  
  % Create New Figure
  figure;
  
  %Plotting Positive Results on 
  %    X_axis: Exam1 Score =  X(pos,1)
  %    Y_axis: Exam2 Score =  X(pos,2)
  plot(X(pos,1),X(pos,2),'g+');
  
  %To keep above plotted graph as it is.
  hold on;  
  
  %Plotting Negative Results on 
  %    X_axis: Exam1 Score =  X(neg,1)
  %    Y_axis: Exam2 Score =  X(neg,2)
  plot(X(neg,1),X(neg,2),'ro');
  
  % =========================================================================
  
  hold off;
end
