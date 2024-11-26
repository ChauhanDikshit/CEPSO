% Objective: To understand the implementaion of basic PSO algorithm

% Basic Program for Particle Swarm Optimization, Anupam Yadav, 
% NIT Uttarakhand, 11.07.2015
% Email: anupuam@gmail.com
function [bestfit,gbest,bestvalues]=TS_PSO(func_num,maxitr,ps)

 w=0.9;c1=2;c2=2;
[lb,ub,D]=benchmark_range(func_num);
r1=0.129; r2=1-r1; itr=1;%% PSO Parameters
bestvalues=[];
% Generation of initial population
pos=initialization(D,ps,ub,lb);
pbest=pos;

%Evaluation of objective funciton
for i=1:ps
    fit(i)=benchmark(pos(i,:),func_num,D);
end
%Imnentification of best fitness value
[bestfit,idx]=min(fit);

% Identification of Global Best
gbest=pos(idx,:);
vel=zeros(ps,D);
% Main PSO scheme
while itr<maxitr

vel=w*vel +c1*r1*(pbest-pos)+c2*r2*(repmat(gbest,ps,1)-pos);
% Position Update Equation
pos=pos+vel;

for i=1:ps
    fit_n(i)=benchmark(pos(i,:),func_num,D);
end
[bestfit_n, idx1]=min(fit_n);
if bestfit_n < bestfit
    gbest =pos(idx1,:);
    bestfit=bestfit_n;
end

% Updation process of Personal best
bestfit=min(bestfit,bestfit_n);
j=find(fit_n < fit);
fit=fit_n;
pbest(j,:)=pos(j,:);
itr=itr+1;
bestvalues=[bestvalues,bestfit];                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
end
end