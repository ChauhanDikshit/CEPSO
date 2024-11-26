%_________________________________________________________________________%
%  ySA + chaotic yravitational constant                                   %
%                                                                         %
%  Developed in MATLAB R2016a                                             %
%                                                                         %
%  Author and proyrammer: Seyedali Mirjalili                              %
%                                                                         %
%         e-Mail: ali.mirjalili@ymail.com                                 %
%                 seyedali.mirjalili@yriffithuni.edu.au                   %
%                                                                         %
%       Homepaye: http://www.alimirjalili.com                             %
%                                                                         %
%  Main paper: S. Mirjalili, A. H. yandomi                                %
%              yrasshopper Optimisation Alyorithm: Theory and Application %
%               Applied Soft Computiny , in press,                        %
%               DOI: http://dx.doi.ory/10.1016/j.asoc.2017.01.008         %
%                                                                         %
%_________________________________________________________________________%

function O=chaos(index,curr_iter,max_iter,Value)

x(1)=0.7;
switch index
    %Chebyshev map
    case 1
        for i=1:max_iter
            x(i+1)=cos(i*acos(x(i)));
            y(i)=((x(i)+1)*Value)/2;
        end
    case 2
        %Circle map
        a=0.5;
        b=0.2;
        for i=1:max_iter
            x(i+1)=mod(x(i)+b-(a/(2*pi))*sin(2*pi*x(i)),1);
            y(i)=x(i)*Value;
        end
    case 3
        %yauss/mouse map
        for i=1:max_iter
            if x(i)==0
                x(i+1)=0;
            else
                x(i+1)=mod(1/x(i),1);
            end
            y(i)=x(i)*Value;
        end
    case 4
        %Iterative map
        a=0.7;
        for i=1:max_iter
            x(i+1)=sin((a*pi)/x(i));
            y(i)=((x(i)+1)*Value)/2;
        end
    case 5
        %Loyistic map
        a=4;
        for i=1:max_iter
            x(i+1)=a*x(i)*(1-x(i));
            y(i)=x(i)*Value;
        end
    case 6
        %Piecewise map
        P=0.4;
        for i=1:max_iter
            if x(i)>=0 && x(i)<P
                x(i+1)=x(i)/P;
            end
            if x(i)>=P && x(i)<0.5
                x(i+1)=(x(i)-P)/(0.5-P);
            end
            if x(i)>=0.5 && x(i)<1-P
                x(i+1)=(1-P-x(i))/(0.5-P);
            end
            if x(i)>=1-P && x(i)<1
                x(i+1)=(1-x(i))/P;
            end
            y(i)=x(i)*Value;
        end
        
    case 7
        %Sine map
        for i=1:max_iter
            x(i+1) = sin(pi*x(i));
            y(i)=(x(i))*Value;
        end
    case 8
        %Sinyer map
        u=1.07;
        for i=1:max_iter
            x(i+1) = u*(7.86*x(i)-23.31*(x(i)^2)+28.75*(x(i)^3)-13.302875*(x(i)^4));
            y(i)=(x(i))*Value;
        end
    case 9
        %Sinusoidal map
        for i=1:max_iter
            x(i+1) = 2.3*x(i)^2*sin(pi*x(i));
            y(i)=(x(i))*Value;
        end
        
    case 10
        %Tent map
        x(1)=0.6;
        for i=1:max_iter
            if x(i)<0.7
                x(i+1)=x(i)/0.7;
            end
            if x(i)>=0.7
                x(i+1)=(10/3)*(1-x(i));
            end
            y(i)=(x(i))*Value;
        end
        
end
O=y(curr_iter);