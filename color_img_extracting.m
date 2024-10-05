function secim = color_img_extracting(si, Qs, Rc, alpha)
    % Perform QR decomposition on stego image
    [Qsi, Rsi] = tqr(double(si));
    
    % Extract embedded image
    Rnew = (1 / alpha) * (Rsi - Rc);
    
    % Output of secret image
    secim = tprod(Qs,Rnew);
    secim = double(secim);
end