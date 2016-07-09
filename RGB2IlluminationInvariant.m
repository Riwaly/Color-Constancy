function [ ii_image ] = RGB2IlluminationInvariant( image, alpha )
%RGB2IlluminationInvariant Convert RGB to illumination invariant
ii_image = 0.5 + log(image(:,:,2)) - ...
    alpha * log(image(:,:,3)) - ...
    (1 - alpha) * log(image(:,:,1));
end

