%generate data from normal distribution
X=randn(10000,1);
Y=randn(10000,1);
R=(X.^2+Y.^2).^0.5;
[f,x_R] = ecdf(R);
plot(x_R,f) % plot ecdf
hold on;
plot(x_R,wblcdf(x_R,1.4,2));% plot parsimonious model
legend('ecdf','parsimonious model ');
hold off;
rng('default');
