function drawDigit(handles, value)
%
%
%        drawDigit(handles, value)
%
%
% Digit
% An automatic MATLAB app for the digitalization of archaeological drawings. 
% http://vcg.isti.cnr.it
% 
% Copyright (C) 2016-17
% Visual Computing Laboratory - ISTI CNR
% http://vcg.isti.cnr.it
% Main author: Francesco Banterle
% 
% This Source Code Form is subject to the terms of the Mozilla Public
% License, v. 2.0. If a copy of the MPL was not distributed with this
% file, You can obtain one at http://mozilla.org/MPL/2.0/.
%

if(value)    
    imshow(handles.img);
else    
    imshow(ones(size(handles.img)));
end

hold on;

drawProfiles(handles.inside_profile, handles.outside_profile );
drawProfiles(handles.handle_ip, handles.handle_op );
drawAxis(handles.axis_profile);
drawAxis(handles.scale_points);
drawPolyLine(handles.handle_section, 'red');

end