% CEPSO: A Feasibility Restoration Particle Swarm Optimizer with Chaotic Maps for Two-stage Fixed-charge Transportation Problems
% Cite as: Chauhan, Dikshit, Shivani, and Deepika Rani. "A feasibility restoration particle swarm optimizer with chaotic maps for two-stage fixed-charge transportation problems." Swarm and Evolutionary Computation 91 (2024): 101776.

clc; clear; close all;
format short
for i=1
    for run=1:1
        rng('default');
        rng(1);
        N=30;
        chValue=1;
        max_it=1000;
        rand('seed', sum(100*clock));
        func_num=i
       
        for Algorithm_num=1:10
            if Algorithm_num==1  %Chebyshev map
                [Fbest_Chebyshev,Lbest1,BestValues1]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Chebyshev
            end
            if Algorithm_num==2  %Circle map
                [Fbest_Circle,Lbest2,BestValues2]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Circle
            end
            if Algorithm_num==3  %Gauss/mouse map
                [Fbest_Gauss,Lbest3,BestValues3]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Gauss
            end
            if Algorithm_num==4  %Iterative map
                [Fbest_Iterative,Lbest4,BestValues4]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Iterative
            end
            if Algorithm_num==5  %Logistic map
                [Fbest_Logistic,Lbest5,BestValues5]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Logistic
            end
            if Algorithm_num==6  %Piecewise map
                [Fbest_Piecewise,Lbest6,BestValues6]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Piecewise
            end
            if Algorithm_num==7  %Sine map
                [Fbest_Sine,Lbest7,BestValues7]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Sine
            end
            if Algorithm_num==8  %Singer map
                [Fbest_Singer,Lbest8,BestValues8]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Singer
            end
            if Algorithm_num==9  %Sinusoidal map
                [Fbest_Sinusoidal,Lbest9,BestValues9]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Sinusoidal
            end
            if Algorithm_num==10 %Tent map
                [Fbest_Tent,Lbest10,BestValues10]=TS_CEPSO(func_num,max_it,N,Algorithm_num,chValue);Fbest_Tent
            end
        end
        
        [Fbest,Lbest,BestValues]=TS_PSO(func_num,max_it,N);Fbest
        %% Figure
%         semilogy(BestValues1);
%         
%         xlabel('Iteration');ylabel('Best-so-far');
%         legend('CEPSO')
        
    end
end