# fhem-46_GoECharger
FHEM - Modul 46_GoECharger


Module purpose:

 - controlling go-ECharger wallboxes via FHEM ( EV charger made by go-e® GmbH , https://go-e.co/ )
 - with this module it's possible to read data and set some functions of the wallbox 
   to monitor and control car battery charging

More Help:

 - after installation use device specific help;
 - before installation you may look into the .pm code file (near the end);
 - generic reference about go-eCharger API is available at go-e website and github via search
 - german FHEM forum https://forum.fhem.de/index.php/topic,110282.msg1129798.html#msg1129798 
 ,,(Topic "Modul für Steuerung einer Go-ECharger Wallbox [= go-e oder go-echarger]") 
	

Installation as extra module and update:

at your FHEM installation use commandline to add repository via command:

	update add https://raw.githubusercontent.com/LuRhe/fhem-46_GoECharger/main/controls_46_GoECharger.txt

then update your FHEM: via command:

	update
	
and don't forget to reboot via command:

	shutdown restart

Device Definition:

 <code>define &lt;name&gt; GoECharger &lt;hostip&gt;</code>
 
Example:

 <code>define myGoE GoECharger 192.168.1.34</code>
 


Last changes: 

- Attribute 'used_api_keys' and related code & help corrected  to the keywors default, minimal, all.
- Now the icon ev_car_charger.svg (see files!!) is predefined as devStateIcon. Please copy this to your folder ...\www\images\fhemSVG\ or use another (btw. delete the attribute). 
- To correct the kW_charging_measured value (there are uncalibrated voltage meter IC's) now there's an attribute "kW_measured_corr_value" as factor (often between 1.03 ... 1.07). You may measure the real charging power consumption with car or external power meter to determine a value other than the default 1 (if needed).


I'm not responsible in case of any unexpected behaviours, failures, damages. That's not a deep inspected, reviewed or monitored software. It's an open source tool in relation to a proprietary commercial product: the product or it's API may be in change by future deliveries or firmware updates. Feel free to inspect and adopt the code.
