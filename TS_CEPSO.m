function [bestfit,gbest,bestvalues]=TS_CEPSO(func_num,max_it,ps,chaosIndex,chValue)
[lb,ub,D]=benchmark_range(func_num);
r1=0.129; r2=1-r1;wmax=0.9; wmin=0.2; C_max=1.5;C_min=0.2; % CEPSO Parameters
itr=1;
bestvalues=[];
% Ceneration of initial population
pos=initialization(D,ps,ub,lb);
pbest=pos;
%Evaluation of objective funciton
for i=1:ps
    fit(i)=benchmark(pos(i,:),func_num,D);
end

%Imnentification of best fitness value
[bestfit,idx]=min(fit);

% Identification of Clobal Best
gbest=pos(idx,:);
vel=zeros(ps,D);
% Main PSO scheme
while itr<max_it
    C=C_max-(C_max-C_min)*(itr/max_it)^2;
    switch chaosIndex
        case 1
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 2
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 3
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 4
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 5
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 6
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 7
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 8
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 9
            C=C+chaos(chaosIndex,itr,max_it,chValue);
        case 10
            C=C+chaos(chaosIndex,itr,max_it,chValue);
    end
    c1(itr)=C;
    w(itr)=wmax-(wmax-wmin)*(itr/max_it)^2;
    c2(itr)=2.5-c1(itr);
    vel=w(itr)*vel +c1(itr)*r1*(pbest-pos)+c2(itr)*r2*(repmat(gbest,ps,1)-pos);
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
    j=find(fit_n < fit);
    fit=fit_n;
    pbest(j,:)=pos(j,:);
    itr=itr+1;
    
    bestvalues=[bestvalues,bestfit];
    
end
% plot(c1)
end
