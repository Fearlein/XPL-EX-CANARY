Basics
-----

Don't be scared to talk to the UI! The UI does talk back as the creator I gave (most) UI elements a VOICE! By holding down on a button or check box it will Talk back!
<br>
Understand I have limits how simple I can make this as it can remove the Dynamic Aspect of the application forcing user to be locked in to what I think is correct. I do NOT own the Pro app so I CANNOT make changes to it!!
<br>Understand if this all is still too complex or UI is too much don't use the features that confuse you. Furthermore complaints will be ignored if you choose to ignore this as simply put it, XPLEX is like your other Spoofer Apps on steroids so if its too much use the simple things you find simple. If something isn't spoofing understand that's a XPLEX Unique thing so read this help docs or stay quit.
<br>When you say things along the lines of "like AndroidSpoofer" "like GergitSpoofer" your comparing a small knife to a sword. Be grateful the gate is provided to do the extra mile of things, I could have made another "AndroidSpoofer"! Point is understand the reason for the complexity is because its a sword, will remain a sword, that these "knifes" don't even spoof or do half of the things XPLEX does so its not fair to compare!<br>
<br><br>

Global Context vs App Context
-----

Global Vs App, One controls the App one Controls all app or the Global Context!<br>
By not setting Settings or things for the App it self it will grab from the Global context if available.<br>
I need water I am getting dehydrated, have no water inside, so I go outside to the Well to retrieve some water (Outside well being global).<br>
I need water I am getting dehydrated, I do have water inside either faucet or bottle so I retrieve the water from inside without going out (Inside being App Context).<br>
If I need water but I have some inside (App Context) I don't need to go outside (Global Context) to retrieve water.<br>
If you set the Settings for the App Context then Global Context will be ignored, else grab it from Global Context (OF COURSE if the settings for Global context are set).
<br><br>


Main UI
-----
Under Every App you have Options to be transported to the NEW UIs under that SPECIFIC app Context. You can ALSO be Transported to those UIs within the Side Menu but Under Global Context<br>
Read above to understand Global Context Vs App Context.<br>
Having option for every new App Installed to Restrict is Possible but for something like LSPOSED where it forces you to select the App First in the Scope I CANNOT CHANGE THAT!<br>
<br>
Selecting a Hook Group for a App (Individually) will Pop up showing you a Warning Message for that Hook if that Hook Group Needs more Context (not all will have this). Read that f*cking message do not ignore it unless you are a cool expert with 100+ years of Android Knowledge :)<br> 
Selecting ALL the Hooks will bypass these Popups so do not select that option if its your first time and you never read those options.<br>


<br><br>

Settings Basic
-----
Within Any UI that Integrates the option to "modify" settings for the hooks, they will all look similar. You get your basic options such as "Delete, Save, Reset, Randomize".<br>
You can Delete the Setting it self (value) or the Map (The Map is the thing that gives a description to the setting basically helps UI and user understand the setting) or both.<br>
You can Save the Modified Value inputted or Randomized into the Text Box, as changing that value wont Save until you do so.<br>
You can Reset the Value to the original if you forgot what was originally inputted into the text box (aka last saved value). Saving it will override it<br>
You can Randomize the Value if you don't feel to input your own, this will ensure success as I follow formats IF a randomizer is available. <br>
If a randomizer is not available it will popup with a message saying "Setting Missing Random" READ IT !<br>
If you have "N/A" For your auto selected Randomizer, NOT "N/A (No Randomizer)" then that Means you can select it as your Randomizer / Setter has specific options to select from.<br>
Else you will see a Randomizer selected, you don't need to change it as I have it auto selected for a reason !<br><br>
Secret easter egg, by saving the setting value to be "%random%" this will Tell XPLEX that when the app Opens Up to Randomize that Setting Value IF (IF) that setting value has a Generic Randomizer MADE for it. Example "Unique GSM IMEI" would work as I made a Generic randomizer for that setting for it already so set the value of that setting to be "%random%". A setting that would not work would be a setting without a Randomizer or Non Generic Randomizer, to easily check if the Default Randomizer Starts or Has "N/A" it will not work for auto randomization each time the target app or apps are opened.<br>

Properties UI
-----
With Android we have a file called "build.prop" and some other internal stuff that defines properties of the device. Most not being Unique!<br>
To retrieve such settings you use APIs or attempt to read from that file. You will notice there will be MANY properties that have the same Values ? or represent the same Property but a different name ? <br>
Bob = Human<br>
Joe = Human<br>
Kat = Human<br>
Notice they are all Humans, same concept here where Properties with Different names can represent the SAME value. So lets look at the Device Properties that describe the phone Manufacturer:<br><br>
ro.vendor_dlkm.build.manufacturer<br>
ro.product.vendor.manufacturer<br>
ro.product.system_ext.manufacturer<br>
ro.product.system.manufacturer<br>
ro.product.odm.manufacturer<br>
ro.product.manufacturer<br>
ro.vendor.product.manufacturer<br><br>
As you see just detailing the device manufacturer is a total of (7) .... So would your solution be to just manually add them all in set values for each one by one (each value bing the same since they all represent the same thing?).<br>
No, least not my solution, my solution is to give each property of sort a Group, that Group is a setting its linked to.<br>
So when you set the Setting Value that represents those properties in that group (manufacturer setting being "device.manufacturer") then when those Properties are Intercepted it will grab its (Spoofed) Value from that Setting!<br>
So now we can add duplicate properties represent the same value, its spoofed value being controlled by a single setting.<br>
You also (for each property individually) to control its behaviour either (Hide it)(Skip it as in ignore it) or (Force it as in return something even if the property does not exist) <br>
To add a Property to the Group, you can either select the bottom Right floating action bar select add button, then input the property name (should not have spaces) and the Setting name it is going to be linked to either an existing or a new one (setting names should not use spaces but instead periods like "cool.setting.model" or "device.model")<br>
You can also direct add a Property to a Group by selecting the setting Group click the Plus ICON<br><br>
To Enable the Interception of Properties, Select the Hook Group "Intercept Properties" AND select "Intercept Shell" then go into Settings UI and set the setting Value for "Intercept Shell Getprop" to True (by selecting the N/A Drop Down option)<br>

<br><br>

Configs UI
-----
This UI will help control configs so you can either save a state of setting values or share to other XPLEX users your setup for settings.<br>
I will not get into how to make a config, look at a exported JSON example to understand, (you can export it don't ask for examples)<br>
You will Get a Drop down to see all the Configs and a Option on the Right to delete the current config. By selecting a config you will see the settings for that config in the main view.<br>
Currently you do not have options to rename a config, export the config, delete it, then in the JSON file rename the field that stores the name, then re-import it.<br>
Floating Action Button (Bottom Right) will give you the following options "Export (Arrow Up)", "Import (Arrow Down)", "Delete", "Save", "Apply (The A/B Switch Looking ICON)". Optionally you can if you remember reading talk to the damn UI so hold the damn UI element down if you don't know what does what SILLY!!<br>
Import / Export are self explanatory, it is in JSON format so a Basic Text editor is all you need to edit the file if you want to. Importing it will then require you to SAVE it as importing it will not save it but get it ready, then you will need to select the save button.<br>
Delete Option will just delete the actual settings FROM the current config, though note it DOES NOT save it so right below that, selecting save will save the current modified config. Also it will only delete the settings you have checked.<br>
Save Option will SAVE the Modified Config to XPLEX Database DO NOTE SAVING IT IS NOT AND I REPEAT IS NOT THE SAME AS APPLYING!!!<br>
Apply Option will Apply the actual Config Setting Values to XPLEX Settings so when the specific app or Global (all apps) are using those settings it will used the new applied ones you applied from the config you applied from.<br>

<br><br>

Settings UI
-----
We will not be getting into the options for each setting as that is listed above! (I hope you read that !!!)<br>
So skipping that, we have options to select via check boxes on the side the settings we want to control. By checking (ONE) Setting in a Group THEN holding Down on that Check Box that you just check will then AUTO check / select all the other settings in that group. (Mass selection)<br>
You can do the same for unchecking, Uncheck (ONE) then Hold down on the Check Box on the (ONE) you (UNCHECKED) and it will Mass uncheck all from that group.<br>
On the bottom Right, selecting the Floating Action button will give you Options to "Delete", "Save", "Add", "Randomize". These specific actions are used for bulk actioning, it will apply actions on the CHECKED settings you have checked.<br>
So to say you don't have mass control is a LIE, just explore the UI! That being said since not every setting has a randomizer mass randomization will only work for those that do have a randomizer, else for those you can select one else it will just skip it forcing you to manually input a value.<br>
The "Add" Button obviously isn't for mass control but is to add a setting, selecting it will prompt you to input a Setting Name (No Spaces), Setting Value (can be blank), and a Description (Can be Blank). <br>
Once you mass Randomize or Manually set / randomize values you will need to save it! When the Highlighted text is (Pink in Dark Mode reference) then that means the setting has a SAVED VALUE.<br>
When the setting Card it self is highlighted in a red like color, that means the setting value has been MODIFIED BUT NOT SAVED!<br>
Selecting the save button on the setting or in the Floating Action Button Menu (if you have those settings check) Will then Save the Unsaved Modified Value / Values.<br>
You can also Mass or Single Delete the Setting (Value) or the Map (Default Map for the setting) or both. Read above for more info.<br><br>
Finally lets get into the Drop down menu or Floating App ISLAND in the Settings UI. Selecting the ISLAND will drop down more settings, lets explore.<br>
Properties, Will take you to the Property Control UI (read above to understand how to control that UI), it will take you to that UI in that Context of that App or Global.<br>
Configs, Will take you to the Configs Control UI (read above to understand how to control that UI), it will take you to that UI in that Context of that App or Global.<br>
Terminate, Terminate Said Application.<br>
Reset Settings, Will pretty much delete all the setting values resetting them to nothing.<br>
Save Checked, Will Save the checked settings you currently have checked so next time you open the settings UI you dont have to re-check the settings you want to control.(This is Global does not save checks per app)<br>
Clear Data, Clear Target App Data. <br>
Export To Config, Export the settings to a Config so you can share or re apply that config!<br>
Use Default Values for Settings, This will essentially tell the system for the app (or Global) to use Default setting Values for the settings that were specified by me IF the setting in question the hook is using does not have a value set by you as the user. Now if I did not specify a default value it will just then return null if you did not specify a value. I am working on this as there are ALOT more settings than in XPL.<br>

CPU Maps UI
-----
This UI is simple, by having the hook "Spoof SOC" selected, you can then in this UI (Global for now) Select a Specific CPU MAP.<br>
Do note this can affect how the app see your CPU for example if you set the setting in the Settings UI for the "Processors Count" to be "99" but you selected a CPU map with "4" Cores, and the target app dost read Processor Count based off the Setting but the actual CPU Map file then "4" will be seen.<br>
It isn't important or used a lot but do keep that in a side note. Selecting NO CPU Map will just randomize each time when the app open.<br>


<br><br>

Hook UI
-----
This UI can only be found in a Non Global Context but a Button under each App (Looks like a Fish Hook or again Hold down on the damn buttons to see what they do). Clicking it will bring you to a UI to have better control over the Hook Groups and its hooks / settings the Hooks can control.<br>
Clicking a Check Box on the Group will select all Hooks in that Group (Like in the original UI), then clicking the Drop Down will show you all the actual individual hooks associated with that Group.<br>
You have ability to select individual hooks to enable for the target app, as well as clicking the Hook name will drop down more things for you!!!!<br>
The drop down will either be (nothing) or it will Show the settings that control the Hook Values, some Hooks can have multiple settings it needs, one or zero.<br>
If you see some you can from there click on the setting and modify it!<br>
So with this UI you can Control the Hook Groups, the Individual Hooks in that Group and each Individual Hook settings if any settings are present for that Hook<br>
If you want to search for a Hook GROUP then Search for it in the Search Bar BUT if you want to search for a setting/settings within Hooks or Descriptions within Hooks, Hook name (anything else that isnt the Group Name) use the exclamation mark before your search query "!" so example "!imei" (this will find all hooks that control IMEI setting or Have IMEI in their names).<br>
Holding down on an individual Hook can Show you a Toast Message of that Hook Description if one is available.<br>

<br><br>
Debugging
-----
For this we will ignore logs and use logic of the Hooks.<br>
Example: we have an App Crashing we are not sure why or what Hook is causing it ?<br>
If you read all the Hook Group Warnings and are sure you configured them correctly and or de selected one that are known to crash this is how we can debug.<br>
De-Select all Hook Groups, Select ONE hook group first you want to use, open the app. If the app opens GOOD! Try another Group, opens GOOD, Rinse and repeat.<br>
During this Process ensure you configure the setting values for these Hooks, you can do this in the settings UI or in the new Hooks UI under the app.<br>
Lets say the third group you selected, then started to make the app crash, go into the new Hook UI De-Select that Group, and Click on the Group Drop Down to See all its individual Hooks in that group. Then Select ONE Hook, (again ensure you configure the settings for it if it has any), then open up the app.<br>
Repeat this, until you select the Individual Hook that is causing the app to crash, so you now know to avoid it and or go into the XLuaPrivacy Pro App and Disable it.<br>
<br>
Lets say the App is not spoofing , but it is spoofing ? Example:<br>
We have a Internet Speed Test App we Selected the "ID Build" Group and used default values check option or just set some random values.<br>
When we Open it we see it displays for the phone info on the bottom (assumed to be model) "unknwon".<br>
But you set the model to "CoolDog", So why is it not working ? Must be a XPLEX bug ??? No.<br>
Its clearly spoofing you are just terrible at assuming, so instead lets go back into settings, change what we think may control that "unknown" value.<br>
We think its either Phone Manufacturer "Device Manufacturer", Model "Device Model", or Brand "Device Brand". <br>
So for "Device Manufacturer" We set the setting to "Dog", We set "Device Model" to "Cat", and set "Device Brand" to "Snake".<br>
We open up back the Application on the bottom it displays "Dog". So now we know in order to control that specific value in that, that value is the Phones Manufacturer so setting the "Device Manufacturer" will modify / spoof that value in the app.<br>
<br>
Note some apps use Native Code to do target task so sometimes it cant be hooked and you will for now just have to accept that.<br>
Example If you select hooks "Intercept Properties" and "Intercept Shell" with the "getprop" setting interception set to true in settings, then you configured the properties correctly in the Props UI and the target app is still some how getting that property. ITS NATIVE! The app does not use Java code as Xposed Framework only Target Java Code but instead used native code there for currently cannot be spoofed or touched.<br>
Another Example of Native is the WebView, the WebView Built into Chromium Based Browsers use Native code to Build the User Agent. Brave, Google Chrome etc so there for it cannot spoof the User Agent.<br><br>
Using an App called "Logcat Reader" or "com.dp.logcatapp" can help you help me provide internal logs, simply going into the logcat app and clicking the search button on the top, type in "xlua", then on the top right (3 dotted button) select that, select save logs, send me those with your error report.<br>
Further more if a Hook has a bug and XPLEX shows this bug (you can always disable it in the meantime til I fix it). If you want to check if XPLEX is displaying a Hook Group Error and want to send me that Message, in the UI find the App you are Hooking or having issues, Look at the Hook Groups you have selected, if one of them shows a exclamation mark "!" then that means a error has happened in that group. Click on the "!", Either copy or screenshot send me that as the report, optionally that same error message can be found in the log cat app.<br>
<br><br>
If you are confident its a XPLEX issue not a misconfiguration on your end or Native code , Issues as in (Crash, Hook Error, or Things not being spoofed when you know they should be), then Send me the Target App you are having issues with, XPLEX Version, Target Hook Group your having issues with / and all the Selected Hook Groups, and Log Cat logs with ano other error logs provided in XPLEX if any.<br>
