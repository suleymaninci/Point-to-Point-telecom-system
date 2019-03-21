clc
clear
N = 1000;

bitErrorMatrix = zeros(1,N);

noe = 0;
    
L = 3;
       
epsilon = 0.1
        
b = generatebits(N);
        
x = ChannelEncoder(b,L);
       
y = BinarySymmetricChannel(x,epsilon);
       
d = MajorityDecoder(y,L);

c = Compression(d);
        
b_hat = Decompression(c);

[number,ratio] = biterr(b,b_hat) 


for i=1:1:N
        bitErrorMatrix(i) = biterr(b(1:i),b_hat(1:i))/i

end
plot(1:1:N,bitErrorMatrix)
    


%%%%%%%











