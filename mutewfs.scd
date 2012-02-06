//mute wfs
WFSServers.default.multiServers[0].servers.do{ |s|SynthDef(\mute,{ ReplaceOut.ar(0, DC.ar(0).dup(112)) }).send(s) };
v = WFSServers.default.multiServers[0].servers.collect{ |s| Synth.tail(Group.basicNew(s,1),\mute) }
v.do(_.free)