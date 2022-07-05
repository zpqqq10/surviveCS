function adjustedImage = whitebalance(imageData)
% force the average image color to be gray

% find the average values for each channel
pageSize = size(imageData, 1) * size(imageData, 2);
avg_rgb = mean(reshape(imageData, [pageSize, 3])); 

% find the average gray value and compute the scaling array
avg_all = mean(avg_rgb);
scaleArray = max(avg_all, 128)./avg_rgb;
scaleArray = reshape(scaleArray, 1, 1, 3);

% adjust the image to the new gray value
imageData = gpuArray(imageData); % use gpu
adjustedImage = uint8(bsxfun(@times, double(imageData), scaleArray));
end