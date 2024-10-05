function [psnr_value, ssim_value] = psnr_ssim_img(cover_img_path, stego_img_path)
    % Read images
    cover_img = imread(cover_img_path);
    stego_img = imread(stego_img_path);
    
    % Convert to double
    cover_img = im2double(cover_img);
    stego_img = im2double(stego_img);

    % Calculate PSNR
    mse = immse(cover_img, stego_img);
    max_val = 1; % Assuming images are normalized (0 to 1)
    psnr_value = 10 * log10((max_val^2) / mse);
    
    % Calculate SSIM
    ssim_value = ssim(cover_img, stego_img);
end
