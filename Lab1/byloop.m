% Read the color image
colorImage = imread('Plampi.png'); % Replace with your image path
% Get the dimensions of the image
[height, width, ~] = size(colorImage);

% Initialize a black and white image

bwhiteImage = zeros(height, width);

% Convert each pixel to black and white using a threshold value
threshold = 128; % Adjust this threshold as needed

for i = 1:height
    for j = 1:width
        % Extract RGB values for the current pixel
        R = double(colorImage(i, j, 1));
        G = double(colorImage(i, j, 2));
        B = double(colorImage(i, j, 3));
        
        % Calculate average intensity for the current pixel
        avgIntensity = round((R + G + B) / 3);
        
        % Compare the average intensity with the threshold
        if avgIntensity >= threshold
            bwhiteImage(i, j) = 255; % White
        else
            bwhiteImage(i, j) = 0;   % Black
        end
    end
end

% Display the original color image and the black and white image
subplot(1, 2, 1);
imshow(colorImage);
title('Original Color Image');

subplot(1, 2, 2);
imshow(uint8(bwhiteImage));
title('Black and White Image');

% Save the black and white image to a file
imwrite(uint8(bwhiteImage), 'bw_image.jpg'); % You can change the filename if needed