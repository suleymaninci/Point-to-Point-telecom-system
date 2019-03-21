function [f]=runfreq(f)
R=zeros(1,length(f));
z=0
for i=1:1:length(f)
    if (f(i)==1)
        z=z+1
        R(i)=z/i;
    else
        R(i)=z/i;
    end
    
    
end
plot(R);title('freq');xlabel('number of bit');ylabel('Freq.');
end
