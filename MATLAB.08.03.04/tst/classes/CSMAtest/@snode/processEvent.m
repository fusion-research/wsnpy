function a = processEvent(a)
global nL %Node lists
% Create new packet and send it to the destination
pkt = struct(...
	type,'DATA',...
	pktSrc,a.ID,...
	)
nL{2} = rec(nL{2},pkt,a.ID)
