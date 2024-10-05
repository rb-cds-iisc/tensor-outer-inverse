clear all;
clc;
close all;
% Example for embedding

% Input parameters
cover_img = 'Ic2.jpeg';
secret_img = 'Is2.jpeg';
alpha = 0:0.005:.35;
for i = 1:length(alpha)
    % Perform Embedding process & Save stego image
    [si, Qs, Rc] = color_img_embedding(cover_img, secret_img, alpha(i));     
    imwrite(uint8(si), sprintf('Output_stego1/stego_%d.jpeg', i));
    
    % Perform extraction and Save extracted image
    secim = color_img_extracting(si, Qs, Rc, alpha(i));
    imwrite(uint8(secim), sprintf('Output_secret1/secret_%d.jpeg', i));
end




