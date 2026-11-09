%dcg generates ${1:clause} --> ${0:body}.
% clause --&gt; body.
%rule generates ${1:functor_name}(${2:argument}) :-\n\t${0:%% body}
% rule --&gt; body.
%face generates ${1:functor_name}(${2:argument}).
% face --&gt; body.
