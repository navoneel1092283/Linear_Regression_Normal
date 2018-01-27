function [predict,ytest,mtest]=traintest2(n,data,theta)
	Xtest = data(:,1:n-1);
	ytest = data(:,n);
	[mtest,abc] = size(ytest);
	for i=1:mtest
		predict(i)=evaluate2(Xtest(i,:),theta);
	end;
end



