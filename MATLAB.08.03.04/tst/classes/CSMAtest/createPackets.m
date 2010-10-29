function [a,event] = createPackets(a,nPkts)
for k = 1:nPkts
	pkt = struct(...
		'source', a.ID,...
		'pkt_nr',k);
	p.outBuff = [p.outBuff pkt];
end
event = struct(...
	'type','transmit',...
	'source',a.ID)
