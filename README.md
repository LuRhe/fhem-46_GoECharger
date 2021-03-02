# fhem-46_GoECharger
FHEM - Modul 46_GoECharger


Module purpose:

	- controlling go-ECharger wallboxes ( made by go-e GmbH, https://go-e.co/ ) via FHEM

    - with this module it's possible to read data and set some functions of the wallbox to monitor and control car battery charging

More Help:
	- after installation use device specific help;
	- before installation you may look into the .pm code file (near the end);
	- generic reference about go-eCharger API is available at go-e website and github via search
	- german FHEM forum https://forum.fhem.de/index.php/topic,110282.msg1129798.html#msg1129798 
	  (Topic "Modul für Steuerung einer Go-ECharger Wallbox [= go-e oder go-echarger]") 
	
Installation and update:

at your FHEM installation use commandline to add repository via command:

	update add https://raw.githubusercontent.com/LuRhe/fhem-46_GoECharger/controls_46_GoECharger.txt

then update your FHEM: via command:
	update
	
and don't forget to reboot via command:
	shutdown restart

I'm not responsible in case of any unexpected behaviours, failures, damages. That's not a deep inspected, reviewed or monitored software. It's an open source tool in relation to a proprietary commercial product: the product or it's API may be in change by future deliveries or firmware updates. Feel free to inspect and adopt the code.
