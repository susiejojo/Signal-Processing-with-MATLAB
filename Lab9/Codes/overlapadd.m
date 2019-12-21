function y = overlapadd(h,x,N)

% If N is not already a power of 2, replace it with the next power of 2
k = log(N)/ log (2) ; 
if (2 ^ round(k) ~= N )
    N = 2^(nextpow2(N));
end 

% Compute important lengths
M = length(h);
L = N-M+1;
Lx = length(x);

% Length-N DFT of filter

H = fft(h , N );

% Initialize y (include some extra zeros at end)
y = zeros (1 , Lx +N + M -1);

% Pad x with zeros to be a multiple of L
x = [x,zeros(1, M -1 )];

% How many blocks will we have?
K = length(x) / L ; 

% Loop over blocks
for i=1:K
    
    % Extract length-L block from x 
    block = x(1 + (i-1 ) * L : L +(i-1) * L );
    
    % Take length-N FFT of this block
    B = fft(block , N);
    
    % Compute product in frequency domain and take inverse DFT
    yblock =ifft ( B .* H ); 
    
    % If first block, initialize y
   % if i==1
   %     y(1:N) = yblock;
   % else  % Add the result to the appropriate location in y
     y(1+ (i-1)*L : N + (i -1 )*L) = y(1+ (i-1)*L : N + (i -1 )*L) + yblock;
    %end
    
end

% Trim extra zeros from the end of y to get the correct length convolution

y = y(1 : Lx + M -1);
end