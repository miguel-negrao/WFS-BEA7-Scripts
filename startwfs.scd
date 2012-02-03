
Server.program = "scsynth";

~theta = 4.45/360*2pi;
~tantheta = tan(~theta);
c = 2.225;
d = cos(~theta)*(c+~tantheta);
e = ~tantheta*d;
~wfsspeakerconf = WFSSpeakerConf(
	WFSArrayConf(24, 2.77, 1.5pi, 0, 0.17),
	WFSArrayConf(32, d, (180-4.45)/360*2pi, e.neg, 0.17),
	WFSArrayConf(24, 2.83, 0.5pi, 0, 0.17),
	WFSArrayConf(32, d, 4.45/360*2pi, e, 0.17)
);

~conf = (
	speakConf: ~ wfsspeakerconf,
	ips: ["127.0.0.1"] ,
	hostname: \WFSBea7,
	startPorts: [58000],
	numSpeakers:120,
	numInputs: 72, 
	scsynthsPerSystem:6,
	usesSASync: false,
	makeWindow: false
);

WFS.startupCustom(~conf)
