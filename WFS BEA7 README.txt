Glossary;

WFS PC - the black rack box which contains the pc with linux that renders the audio for the WFS system.

Startup Procedure

1 - Boot Mac Pro
2 - Boot WFS PC
3 - On the Mac Pro start the WFSCollider application which is in the dock and also in /Applications.
4 - Wait until all the servers appear as green in the WFSCollider GUI.

That's it, you're ready to go !

Shutdown procedure:

1 - Double click on the "SHUTDOWN WFS PC" icon on the desktop. (this will remotely turn off the WFS pc).
2 - Turn off the Mac Pro as usual.

Mixer - WFS interfacing:
		0. make sure that mixer & pro tools word clock is set to external.

	Mixer -> WFS

		Live inputs from the mixer can routed to WFS system and spatialized:
	     1 - Select the "wfs" setting in the mixer library. 
		1 - To send a channel of the mixer to the WFS system, select the channel in the mixer (select button) and choose one output bus from 9 to 16 (ADAT OUT 1-8). The bus buttons are below the usual 8 genelec output assign buttons in the area named "OUTPUT ASSING".
		2 - In WFSCollider create a new UChain with units wfsServerIn and a wfs panner. 
		3 - In the wfsServerIn unit select the correct bus in the number box. The mixer bus outputs 9 to 16 are mapped to wfs input busses 64 to 71.

	WFS -> Mixer
		The 8 genelec speakers + subwoofer can be used together with the wfs white panels to get more even frequency response.
		1 - Select the "wfs" setting in the mixer library. 
		2 - The signals from the wfs to the 8 genelec speakers are mapped to channels 41 to 48 (ADAT IN 1-8). These faders should be already up at a standard level.
		3 - Use the big volume knob to have more or less contribution from the genelec speakers. Eventually a default level should be determined.
		4 - The 8 channels coming from the WFS are being summed and sent to the subwoofer. To control the subwoofer level use the Auxiliar 1 master fader.

Sound files:
	The Mac Pro automatically mounts the network folder /WFSSoundFiles which corresponds to that folder on the WFS PC.
	After opening that folder in finder or when through dialog panels for opening files from within WFSCollider it takes some seconds until the contents of the folder appear. Be patient...
	If one wants to take a piece done in BEA7 and play it the big system, make sure that to use the same directory structure in both places. (i.e. if you use /WFSSoundFiles/JohnDoe/MyGreatWFSPiece on one system, use that also on the other system).

Troubleshooting:
	1 - The servers don't show up as green:
		1 - Did you start up the WFS PC ? (is there a green light in black rack box ?) If not startup the PC.
		2 - If you did startup the pc, then try shutting down the pc using the shutdown scripts and booting again.
		3 - If this does not work contact maintenance.
	2 - I don't see my files in /WFSSoundFiles:
		1 - give it a bit of time for them to appear.
		2 - If you see the files in finder but not in the open dialog of WFSCollider, then quit WFSCollider and start it again.
		2 - reboot WFS pc (do the shutdown scripts and then start it up again from the physical button).
		3 - contact maintenance.
	3 - I don't hear any sound.
		1 - Are all servers green in the WFSCollider gui ? If not make sure the WFS PC is running.
		2 - Are the white panel's amplifiers turned on ? If not, turned them on !
		3 - Are you sure you are playing something through the system ? 
			run :
			WFSServers.default.multiServers[0].servers[0].meter
			and see if there is output in the servers, you can change 'servers[0]' from 0 to 5 to see all the 5 servers.
	4 - There is no sound going to the genelecs.
		1 -  Did you select the WFS setting in mixer library ?
		2 -  Do Cmd-. until you see the server windows with one synth each, i.e., "Synths/Defs: 1/182"
	5 - I pressed stop but the sound did not stop.
		1 - Sometimes this happens - press Cmd-. the sound should stop.
					

Bug Reports (i.e. WFSCollider cranes or does not function as expected) should be done only in https://github.com/GameOfLife/WFSCollider/issues. 
			
		
	
		
		






