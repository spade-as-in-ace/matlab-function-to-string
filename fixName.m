%%
% George Bizos 2020
%%
function str = fixName(varargin)
    str = func2str(varargin{1});
    str = str((strfind(str,')') + 1):length(str));
    if(nargin == 1)
        str = inputname(1) + " = " + str;
    elseif(nargin >= 2)
        str = varargin{2} + " = " + str;
    end
end