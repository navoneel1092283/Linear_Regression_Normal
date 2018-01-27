function [theta]=pmodel2(data,m,n)
	% Managing Missing Values :
	data = data(~any(isnan(data), 2), :);
	X = data(:, 1:n-1);
	% Select the y label
	y = data(:, n);
	m = length(y);
	X = [ones(m, 1) X];
	theta = normalEqn(X, y);
	


