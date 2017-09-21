function mm=meannonan(x)
% Takes the mean of numbers in an array, ignoring NaN and Inf

notin=isnan(x) | isinf(x);

% Get the size on x
[xsize, ~] = size(x);

% Get the indices where the NaN or Inf is located
[xindices, yindices] = find(notin);

% Iterate through each bad entry and replace entry with mean of row
% (preserves column mean)
for entry = 1:length(xindices)
    
    % Generate mask vector with 1 for good entries in column and 0 for bad
    mask = ones(xsize, 1);
    mask(xindices(entry)) = 0;
    
    % Get the mean of the column without the bad entry
    column = x(:, yindices(entry));
    column_mean = mean(column(logical(mask)));
    
    % Replace with mean of column
    x(xindices(entry), yindices(entry)) = column_mean;
    
end

mm=mean(x);
end