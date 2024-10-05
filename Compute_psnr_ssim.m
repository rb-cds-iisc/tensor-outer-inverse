clear all;
clc;

% Define file paths for cover and stego images
cover_img_base = 'Ic%d.jpeg';
stego_img_base = 'Output_stego1/stego_%d.jpeg';

% Define alpha values
alpha_values = 0:0.005:.35;

% Initialize array to store result_stego2
result_stego2 = zeros(length(alpha_values), 3);

% Iterate over alpha values
for i = 1:length(alpha_values)
    % Generate file paths for current images
    cover_img_path = sprintf(cover_img_base, 2);
    stego_img_path = sprintf(stego_img_base, i);
    
    % Calculate PSNR and SSIM for current images
    [psnr_value, ssim_value] = psnr_ssim_img(cover_img_path, stego_img_path);
    
    % Store result_stego2 in the array
    result_stego2(i, 1) = alpha_values(i);
    result_stego2(i, 2) = psnr_value;
    result_stego2(i, 3) = ssim_value;

end

% Save result_stego2 to CSV file
csvwrite('result_stego2.csv', result_stego2);









% Define file paths for cover and stego images
secret_img_base = 'Is%d.jpeg';
out_img_base = 'Output_secret1/secret_%d.jpeg';

% Define alpha values
alpha_values = 0:0.005:.35;
% Initialize array to store result_stego2
result_secret2 = zeros(length(alpha_values), 3);

% Iterate over alpha values
for i = 1:length(alpha_values)
    % Generate file paths for current images
    secret_img_path = sprintf(secret_img_base, 2);
    out_img_path = sprintf(out_img_base, i);
    
    % Calculate PSNR and SSIM for current images
    [psnr_value, ssim_value] = psnr_ssim_img(secret_img_path, out_img_path);
    
    % Store result_stego2 in the array
    result_out2(i, 1) = alpha_values(i);
    result_out2(i, 2) = psnr_value;
    result_out2(i, 3) = ssim_value;

end

% Save result_stego2 to CSV file
csvwrite('result_out2.csv', result_out2);



