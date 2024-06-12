
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
Finally SUPER IMPORTATNT, if there is a Bug with the Original "M66B" "Privacy" Collection (Not "PrivacyEx") but "Privacy" I will not be providing support or help for that Collection as it is deprecated no longer supported old, replaced with "PrivacyEx". "PrivacyEx" merges all "Privacy" Hooks, Updates them and more, so stop using the damn old "Privacy" Collection else deal with the ISSUES!!!<br> 


Installation
-----
If you are installing new XPLEX over old you do not need to uninstall old, install the new one, select it in LSPOSED and RE-Select "Settings Storage" in LSPOSED Under "XPLEX" then Reboot.(Always reboot for new XPLEX installation).<br>
If you installing over XPrivacyLua Original, Uninstall original Install XPLEX as we do not share the same signature for signing. You data will not be lost.<br>
Your data will never be lost as the Data for XPLEX is stored in a database in the Root System Folder "/data/system/" under a Folder starting with the name of "xplex-xxxxx" (xxxx being a random string). Deleting that Folder will delete your XPLEX settings, logs, assigned Hooks etc (essentially resets XPLEX as if you never used it before its your first time).<br>
So clearing app data on XPLEX will do nothing except for clear minor non important settings, that only affect the UI of XPLEX (nothing important I promise). <br>
If its your first time (or you cleared XPLEX Data) on the XPLEX Version (1.4.3) It will disable the original "XPrivacyLua" Collection "Privacy" since the "Privacy" Collection is deprecated no longer used, use "PrivacyEx" Collection.<br>
To Control the Collections you can configure them in the XPrivacyLua Pro app, you can find the free APK in the Telegram channel as a Pin or in Announcements.<br>

<br><br>


LSPOSED
-----
Why when I check "Settings Storage" in LSPOSED under "XPLEX" it Un-Checks ? <br>
That's fine, as long as you SELECTED IT ONCE and REBOOTED THAT ONE TIME. If you are not sure Select it again Reboot keep that in memory you selected it so you don't have to again.<br>





















<br><br><br><br><br><br><br><br>New Write up<br>
# How can I use this Damn F*cking App
<br><br>
## Issues with Simplicity
Due to the Complex nature of the Application (it allowing for Dynamic Defination of Hooks, ability to have 90% Control over Hooks and its Behviour) it makes it difficult to "make the application more simple". Also due to its size of elements it contributes to the difficult in "making it simpule".<br>
Applications such as "Android Spoofer", "PMP", and "Android Faker" can do these things since there goal in mind is to make a application with Static Hook Definations. Now sure XPLEX provides out the box ALOT of Hooks most you will ever need, but you are the User can Create your Own Hooks, define the Hook behaviour so simply trying to group all of this is a challenge. When XPLEX is Compiled the Hook Scripts and Hooks are never set in stone complete. They can be modifed by, updated by you, removed by you, or you can add more hooks, trying to "group" this chaos, or have a "magic" button one click all solution would lock more things in leaving the ned user with less options to custimize to their hearts content.<br>
Simply put it, your comparing a Kitchen Knife to a Sword (Excalibur), if you want a Kitchen Knife, use the "Competitors/Alternatives". Ontop of that wonderful thing about XPLEX is it used Native Adnroid UI, Supports Androud 6.0+, Is 100% Free, Hooks can be Customized, Supports (most) APIs that can retrive Device Information, AD and Anlytic Free, Fully works Offline (No Server it ever connects too), and supports virtual Environment such as "ThaiChi" and "VirtualXposed".<br>For a final Note for those who as me to make modifcations to the Pro Companion app (Free Download can be found in the Telegram) I cannot as I do not have access or source code to that application. Future of XPLEX will merge all the Pro Features into one app still free.<br><br>
So instead of Dumbifying it, we will create a Guide that will help you navigate this maze!<br><br>

## Context (Global vs Application)
So each Hook or (most) Hooks can have an assigned setting for it value usage. Exmaple the "IMEI" Hook(s) that Spoofs the Device "IMEI" would obvioulsy grab the Fake "IMEI" value from the XLUA Settings Database. If the user Modifed the Settings for those Hook(s) under the Context of the Application then it will direct its values from those assignments. Now if you didnt set the settings under the Context of the Application but under the "Global" (all) Context, then the Target Apps will grab its needed setting values for it assigned hooks from (Global) IF the values are not assigned to settings under the Context of the Application. So think of it as "Defaults" for when Values are not Assigned. This is the best option to replicate Default values as newest versions of XPLEX does not support Default Values (for now) when the Values needed are not assigned. On the contrary you can still use 'default' values if its available in the specifc app settings as a check but this would be less affective especially when the setting / hook dosnt have a 'default' value.<br>
- **Global Context:** Controls all apps. (If the specific app does not have assigned settings for that specific hook)
- **App Context:** Controls a specific app.<br>
You can typically access Global settings or any Global UI by selecting the Buttons on the side slide menu of the XPLEX Main UI, you can access App Specific Context Menus within the Buttons under the Applications within XPLEX Main UI.<br>
<details>
  <summary>Global Context</summary>

![Screenshot_20240610-223252_XPL-EX](https://github.com/0bbedCode/XPL-EX/assets/114315756/1e4b7a76-f343-463a-9a43-ab02f0dc522d)
</details>
<details>
  <summary>Application Context</summary>

![Screenshot_20240610-223234_XPL-EX](https://github.com/0bbedCode/XPL-EX/assets/114315756/ca9ab95d-c881-4b72-8657-22bcbed33e73)
</details>

<br><br>
## Main UI
<br>
<details>
  <summary>Application View</summary>

![Screenshot_20240610-225035_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/b667b1f0-a6b3-43e9-80d7-f3db008e2b6a)
</details>

<br>

- **1:**  Pro Campanion App Settings (Links Access to the Original Pro Application)
- **2:** Check to Enable all the Hooks (If its your first time enabling the hook or using the app, select each Group you want first so you can read the warnings)
- **3:** Enable the Application to be Killed when you are modifiing the Hook Assignments
- **4:** ***Hook Control UI***, under the Context of the Target Application
- **5:** ***Config Control UI***, under the Context of the Target Application
- **6:** ***Settings Control UI***, under the Context of the Target Application
- **7:** ***Properties Control UI***, under the Context of the Target Application
- **8:** Hook Groups, Hook Grouped in sub categories made avaible to select<br><br>
Selecting the Drawer Menu on the Side will open those UI's Under the Context of "Global"<br><br>

## Settings Embed
You will notice as the more you use this application, alot of things are just advance setting wrappers. Most of the system is controllbed by via settings there for you will see such as Properties UI, Settings UI, Config UI what not, it wil integrate some sort of setting control view or view(s). To understand the layout first here is a View of what it would look like:<br>
<details>
  <summary>Setting Control View</summary>

![Screenshot_20240610-231738_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/8133c305-9669-4de1-8281-660c6f06f22d)
</details>


- **1:**  Input for the Custom Value
- **2:**  ***Randomizer***, this will be auto selected no need to change it, if it has no randomizer the text will be "N/A (No Randomizer)" and if the Randomizer is a Static Element Randomizer it will just say "N/A" meaning nothing is selected but select the drop down to see the options.
- **3:** ***Delete***,  Delete the setting and or the Map or both. The map is the Default value and or Description (Gives personality to the setting), note setting names should never have actual spaces but XPLEX system converts "." (Periods) into Spaces within the UI for better user Viewing.
- **4:** ***Save***, Save the Modified Value into the XPLEX Settings Database override the last saved value
- **5:** ***Reset***, Reset the (Unsaved) Modifed Value back to the last Saved Value
- **6:** ***Randomize***, Use the current Selected Randomizer to generate a Random Value into the Input. This will be Un-Saved there for can be Resetted, you can save it if you are satisfied.<br><br>

## Settings UI
Skipping over the common Embed, we will focus on the Floating Action Button Menu options and the Floating App Island with the Drop Down options. For starters here is a ***Easter Egg***, by checking ONE setting in the group, THEN holding down on that ONE check box that you checked, it will then check all the other check boxes in that group. If you uncheck ONE check box in that group then hold down on that ONE unchecked box in that group, it will un check all the check boxes in that group. This will be useful for mass checking / selection.<br>
<details>
  <summary>Settings Options View</summary>

![Screenshot_20240611-181759_SystemUI3](https://github.com/0bbedCode/XPL-EX/assets/114315756/632f6daa-83c5-486b-80d4-d27916036c16)
</details>
<br>

- **1:** ***Delete***, Will Delete the Selected Settings
- **2:** ***Save***, Will Save the Selected Modifed (but not saved) settings
- **3:** ***Add***, Will prompt a Menu to Add your own Setting
- **4:** ***Randomize***, Will Randomize all Selected settings if they have a Randomizer / and or one Selected<br>
<details>
  <summary>Application Floating Island View</summary>

![Screenshot_20240611-182840_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/3c57ee0a-805f-4111-aedb-eb365a1a441d)
</details>
<br>

- **1:** ***Properties UI***, Jump to Properties UI Under the Context of the selected Context in Settings UI
- **2:** ***Terminate***, Terminate the Android process (Kill it until you its re-opened)
- **3:** ***Configs UI***, Jump to Configs UI Under the Context of the selected Context in Settings UI
- **4:** ***Reset Settings***, Delete all Setting Values from the XLUA Database under the selected Context in Settings UI
- **5:** ***Save Checked***, Save the currently selected settings globally so next time you open the Settings UI the settings you saved to be selected will be auto selected so you do not have to keep re selecting.
- **6:** ***Clear Data***, Clear selected Context Target App, App Data
- **7:** ***Export to Config***, Export the settings to a Config so you can apply it later and or share to other users (this will be the setting values)
- **8:** ***Use Default Values for Settings***, If the Hook in question for it setting that it requires for a value has a default option available if user has not set that value, then use it. Currently no method except for looking through source / scripts if the Hooks have a Default value fallback as not all will have.<br><br>

## Properties UI
Before starting this to enable the power of Properties Interception select "***Intercept Properties***" and "***Intercept Shell***" Hook Groups, then in the ***Settings UI*** find the setting under the name "***Intercept Shell Getprop***" and set its value to "true" using the Drop down Randomizer option. After doing this you are ready to go to start intercepting properties, but for applications that use native methods to get  their properties XPLEX currently as if of (6/12/24) will not be of use for these situations. If you know you configured your properties correctly and enabled the hooks and LSPosed XPLEX is selected for that target app but it still gets the original Value of that property, then maybe the target App is using native methods.<br><br>

### Properties UI Overview
<details>
  <summary>Floating Action Buttons View</summary>

![Screenshot_20240611-191329_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/828c17cb-b9b8-4c02-af00-2b0899d06934)
</details>
<br>

- **1:** ***Add***, Add a new Property, typically adding it from this button means it has no group but if you do add it to a group that already exists then it will just add it to that group instead of creating a new group.

<details>
  <summary>Property Control View</summary>

![Screenshot_20240611-191352_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/c317f57c-20bf-4b04-ad04-36ed826e19ce)
</details>
<br>

- **1:** ***Add***, Add a new Property, this would bind it to the group you have clicked under so you do not need to fill in the group name just fill in the property name
- **2:** ***Hide***, Hide the Property if it exists
- **3:** ***Skip***, Ignore the property if it exists, not intercept and replace its value just skip / ignore it.
- **4:** ***Force***, Mainly used if the property does not exist, if it does not exist force it into view as if it does exist<br><br>
- **5:** ***Delete***, Delete the Property from that Group

### Properties System Overview

Now understanding this UI is not too complex as some may put it, for the reason we represent properties with XPLEX settings has to do with the fact that there can be many properties that represent the same value. We are of course talking about "build.prop" properties and or the properties you get from "getprop", "SystemProperties.get", "System.getProperty" functions. If you still have no idea what those are or what this is, its best for you to do research and back away from this thank you!<br>
So if we look here for Real world Examples lets list off ***Properties*** that represent the value "human":<br><br>

- **Jake**
- **Jill**
- **Michael**
- **Amanda**
- **Emily**<br><br>

What do they all have in Common ? They are all Humans (well we assume so I do guess it can be pets or aliens) but in this context they are humans. Now lets look at more Direct Examples of Properties that represent the same value, we will be looking at properties that represent that phones Manufacutrer value, mine will be "Samsung".<br>

- **ro.vendor_dlkm.build.manufacturer**
- **ro.product.vendor.manufacturer**
- **ro.product.system_ext.manufacturer**
- **ro.product.system.manufacturer**
- **ro.product.odm.manufacturer**
- **ro.product.manufacturer**
- **ro.vendor.product.manufacturer**<br><br>

Those listed Propeties what they have in common is they all represent the devices manufacturer, there for when you execute command like "getprop" on any of those above listed properties it will return the value (in my context) "Samsung". So would your solution to be map each one to a value but individually ? Well sure but that solution is piss poor, my solution is to map each one to a Single setting essentially grouping them together to a setting that best represents there value. In the case of XPLEX the setting that represents phone manufacturer is ***Device Manufacturer*** or actual name being ***device.manufacturer***, there for once that setting is changed it will affect all (7) of those above listed properties. This avoid the need to manually set a value that is common for each (7) one by one and also links the over all XPLEX system together making Hooked Functions and things such as Commands and Properties all synced. So all you have to do in theory is to modify the setting that represents that or those properties and boom you are good to go. Now if you need to create a group of properties (even if its just one property it will still be in a group just one on its own) then following the next instructions.<br><br>

## Configs UI
Now this UI is very easy to understand, but how the Configs work is very simple so listen up to the rules. First configs are just JSON Files made up of a bunch of XPLEX settings, it essentially is kind of like a XPLEX Settings backup but not as it is used for configuration to share to others or use again.<br>
Now the one rule I say for those creating configs and sharing is to seperate them, as in have one Config focused on Carrier details (changing device carrier details) and another for just Phone details not related to carrier. So have Configs for ***Samsung Note 9***, and ***Pixel 8*** but then have seperate configs for ***TMobile***, ***Verizon*** and ***Sprint*** Carriers so they are not all in one config. Now combining  the two is not the end of the world but it starts to get dumb when you combin Unique Values with regular device values. Instance you made a Config for the ***OnePlus 7 Pro*** BUT you also in that config included Unique setting values such as "IMEI", "MAC Address" etc. No purpose in that as your combining something that is UNIQUE and will have to keep being changes at times, with something that isnt UNIQUE but just detailing the device and will not be changed or randomized. NO Purpose in creating configs that set UNIQUE values, Zero unless its generic UNIQUE values such as "Zero", "Private", "Unknown" whatever. I provide 3 examples of configs, note the Unique Device IDs is dumb but included for reference.<br><br>

<details>
  <summary>Config Control View</summary>

![Screenshot_20240611-193009_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/188cc5f8-c353-469e-ac25-263cbb0fb0cd)
</details>
<br>

- **1:** ***Config Selection***, Drop down to select the Config you want
- **2:** ***Delete Config***, Delete the selected Config<br>

<details>
  <summary>Floating Action Buttons View</summary>

![Screenshot_20240611-193038_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/201d0fe3-2d8b-4d99-bc6c-546c14462134)
</details>
<br>

- **1:** ***Export***, Export the Selected Config to a JSON File
- **2:** ***Import***, Import a Config from Storage a JSON File. When importing it will not be saved so make sure you select the save option from the Floating Action Button Menu
- **3:** ***Delete***, Delete the SELECTED settings FROM the Selected Config (Removes the settings from that config)
- **4:** ***Save***, Save the Current Config Modifed Settings to the Config and or just when it was Imported Save it. This does NOT SAVE or APPLY the actual Setting Values to the XLUA Database Settings but updates the Config, does not Apply the Config to Settings
- **5:** ***Apply***, Apply the selected Config to Settings, this will actually apply the Values to XPLEX Settings Database<br><br>


## Hooks Control UI
This is the new Hook Control UI that can only be accessed from the button that looks like a Hook under the Application in the Main UI. This can give you more in depth control over the Hooks instead of just selecting the group in whole.

<details>
  <summary>Hook Control View</summary>
  
![Screenshot_20240611-194907_XPL-EX2](https://github.com/0bbedCode/XPL-EX/assets/114315756/06dfa66b-9b07-429e-89df-40b7290a658c)
</details>
<br>

- **1:** ***Group Select***, Select all the Hooks in the Group, Enable them or Disable them
- **2:** ***Group Drop Down***, Drop Down the Group to see the Individual hooks within that group
- **3:** ***Hook Drop Down***, Drop Down the Hook to see the Settings it requires if any (not all Hooks have settings)
- **4:** ***Setting Drop Down***, Drop Down the Setting to see the Embed to control the setting
- **5:** ***Hook Select***, Select the Individual Hook Enable it or Disable it<br><br>

## Debugging Issues
<br>

### Limits Native vs Java


Right away lets explain the limits, currently as if of (6/12/24) XPLEX Does not support Native Hooking, there for applications that use Methods to get the specific detail you are trying to block with Native functions XPLEX cannot reach that. Example Chromium based browsers use Native Functions to get / build their User Agent, there for using User Agent Hooks on browsers like ***Brave***, ***Chrome*** it will not work. Sometimes Apps use either Native "exec" on the command "getprop" or open files using "libc" "fopen" to open files or even use "__system_property_get" function to get Properties. All have in common is Native, they happen on the Native layer there for XPLEX Cannot touch them (yet). Easy cop out to tell if its Native is either reputation of the application as in its known to incorperate native function to complete its actions, and or you configured everything correctly such as settings and Hooks yet the thing in mind is still not being spoofed. Other than that, you as the user would have to make the guess as I as the dev would not have enough time in the world to analyze each app sent.<br><br>

### Wrong Value being Spoofed / Testing Spoof

When opening Target app you see that the target detail in question is being spoofed but to not what you are setting it too ? Seems like a XPLEX issue or poor judgment on your end for assuming that detail is what you think it is when its not. Easy way to test this is this, lets say we assume the detail we are tyring to spoof is Device Brand so the Application Displays Device Manufacturer and even Looks like its being spoofed but not to what we set it as. This is how you should approach this "issue", go into XPLEX and find the settings you may think it is tied too or select all you are using so in this example we will modify the follwing Values:<br>

- **device.manufacturer** set it to "dog"
- **device.brand** set it to "cat"
- **device.model** set it to "snake"<br><br>

We run the target application and notice the Detail that we are trying to spoof now appears to say "snake", that means that detail you judged as the "manufacturer" setting was wrong and it is actually the phones "model".<br>

### Testing Hooks
The app isnt starting or the Application is crashing but no message and the cat logs dont make much sense ? Heres what you do , you de-select all Hook Groups, then select ONE hook Group, make sure the settings that is requires are configured, then open the target app, if it works then repeat, select ANOTHER group while having the previous ones selected still, open, if it works great keep going. Once you select a Group that then causes the issue in mind, you then go into the new Hooks UI for that group, then de-select it the group. While still in the new UI Select each Individual Hook in that Group until you find the one causing the target Application issues, send that as part of the report and do not select that hook for now, and ensure you are properly setting the setting in correct format.<br>

### Errors Exceptions
When XPLEX has an Error relating to a Hook you will Get a Notification you can click on it will take you to the error, alternativly you can see in the XPLEX application on the Hook group that did produce the error that an exlamation mark appears "!". Clicking on it will produce the Error message in front of you, this message then you can present as an issue on Github and or to me directly via group chat or private message. You can copy the message text and or take screenshots in parts until you have the whole thing screenshotted.<br>

<details>
  <summary>Error Notification</summary>
  
![Screenshot_20240611-205451_AIDA64](https://github.com/0bbedCode/XPL-EX/assets/114315756/4a93236d-33c2-4bce-8be2-34696bb69536)
</details>

<details>
  <summary>Error in XPLEX</summary>
  
![Screenshot_20240611-205533_XPL-EX](https://github.com/0bbedCode/XPL-EX/assets/114315756/12414574-3ada-4a67-bd5b-d3d7e11ad72a)
</details>

<details>
  <summary>Error Message</summary>
  
![Screenshot_20240611-210208_XPL-EX](https://github.com/0bbedCode/XPL-EX/assets/114315756/8e944170-da30-47f1-a908-6db8a4e83645)

![Screenshot_20240611-210450_XPL-EX](https://github.com/0bbedCode/XPL-EX/assets/114315756/57b0e7a5-de64-48e7-8251-f226f51939c0)

</details>
<br>

### Sending and Getting Reports and Errors
For me to truly accept an error I need to see Cat Logs / Logs, combining the logs given above you need or may need cat logs as well for more context. Ontop of that I need to know what App you got this error from what Specific Hook Group and What Hooks you do have selected. To get Cat Logs you can download and install the following app ***Logcat Reader*** or ***com.dp.logcatapp*** for the package name. Once installed go into the Top Right 3 dot menu select clear, then in the search ICON in the app search for "xlua" then re produce the error. Once the error is reproduced go back into the logcat app select the 3 dots once more , select "Save" button, then those save logs export them to me with the rest of the details.<br><br>

### Old Collections M66B and Warning Messages (!!!READ THIS READ THIS!!!)
If the error orgins from the "Privacy" Collection and or an Older Update of the App I will not be in support or help. The "Privacy" Collection is Depricated and is no longer used there for I will not be helping, use the new Collection "PrivacyEx" as it has all old Hooks Merged, Updated. If you have made a modifcation for the Hook that is causing issues I will not provide support as it MAY be to do with a mistake on your end versus the end of XPLEX. Last before selecting all Hook Groups select each one , one by one or the ones you want, doing this will invoke the Warning Messages for the Hooks that require a warning or can cause issues. If you fail to read these messages and bring me an issue relating to these messages I will ignore the "issue" as you fail to do your bare minimum in reading the warnings.<br>

### Clearing App Data, Updating Folder and App (Possible Fix for Issues)
***ENSURE*** each time you Install a XPLEX Update you MUST select in LSPosed under XPLEX ***Settings Storage*** and MUST reboot the device.<br>
Clearing XPLEX app data will not clear the actual settings of the App but this can also help resolve issues (I Promise it will not delete your assigned hooks or settings) so try this if you have issues within the app. If you actually want to delete your data the Databases for XPLEX are located in "/data/system/xplex-xxx", "xxx" being a random generated string for each installtion. In that folder you can delete both Databases then Reboot the phone, this will completely reset everything.<br>
If its your first time Installting XPLEX over XPL you may need to uninstall XPL (again your data will remain) and then install XPLEX. Sometimes transfering the Databases over does not work well so after selecting ***Settings Storage*** in LSPosed for XPLEX and you restarted, its best to go into "/data/system/" folder find the "xplex-" one, make sure the Databases are in there. If you do not see them in there find the "xlua" folder in the same diretory in "/data/system/" and Copy the Database thats in there into the "xplex" folder. Then you can delete the older "xlua" folder, if the new one has the one "xlua" database in it and it looks like its the same file size. You can also copy these files somewhere else as a backup copy!<br><br>

### LSPosed (Unchecking Settings Storage)
In LSPosed you may notice when going into it under XPLEX application, you will see that ***Settings Storage*** is unchecked (***Settings Storage*** is required for XPLEX to work). If you remeber that you have selected ***Settings Storage*** least once and restart, then you should be fine. If you are not sure it dosnt hurt to select ***Settings Storage*** once more then restart the device, keep that in memory so you dont have to keep repeating this. This appears to be a LSPosed and or XPLEX issue that on my end I cannot seem to solve but even though it is unchecked, if you checked it and restarted it once you are fine!


