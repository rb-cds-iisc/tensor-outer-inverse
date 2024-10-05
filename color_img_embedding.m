function [si, Qs, Rc] = color_img_embedding(cover_img, secret_img, alpha)
    
    Ac = imread(cover_img);
    As = imread(secret_img);
    Ac=double(Ac);
    As=double(As);
    % Perform QR decomposition
    [Qc, Rc] = tqr(double(Ac));
    [Qs, Rs] = tqr(double(As));
    
    % Embed both matrices
    Rn = Rc + alpha * Rs;
    
    % Produce the stego-image
    si = tprod(Qc,Rn);
    si = double(si);
end