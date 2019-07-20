[![Build Status](https://hsgame.visualstudio.com/UE4HorizonPlugin/_apis/build/status/HorizonDialogue/HorizonDialogueDemo-Shipping-CI?branchName=master)](https://hsgame.visualstudio.com/UE4HorizonPlugin/_build/latest?definitionId=32&branchName=master)

public feed: nuget.org  

[![nuget.org package in feed in ](https://img.shields.io/nuget/v/HorizonDialogueDemo.svg)](https://www.nuget.org/packages/HorizonDialogueDemo/)

private feed(only for internal use): 

[![Azure Artifacts package in  feed in ](https://hsgame.feeds.visualstudio.com/_apis/public/Packaging/Feeds/d5ed5eb7-dd62-4af0-a6a4-8862be2b9f7f/Packages/9d48ed70-fa14-46f9-b53b-118ce741dbdc/Badge)](https://hsgame.visualstudio.com/_Packaging?feed=d5ed5eb7-dd62-4af0-a6a4-8862be2b9f7f&package=9d48ed70-fa14-46f9-b53b-118ce741dbdc&preferRelease=true&_a=package)


Note: 

master branch may be unstable since it is in development, please switch to tags, for example: release/4.20.0



----------------------------------------------  
How to Run Demo Project before purchase:(Only for Win64 editor build, no source code)
1. [Download nuget executable](https://www.nuget.org/downloads) and copy the exe into C:\Windows\system32\ or any place listed in your PATH environment.  
2. Install [Git for Windows](https://gitforwindows.org/)
3. Double click install_package_from_nuget.org.bat, and check if UE4Editor-*.dll are installed to Binaries\Win64 and Plugins\HorizonDialoguePlugin\Binaries\Win64\
4. Double click HorizonDialogueDemo.uproject  
----------------------------------------------


----------------------------------------------
              HorizonDialoguePlugin
                    4.23.0
         http://dorgon.horizon-studio.net
          	dorgonman@hotmail.com
----------------------------------------------


 The goal of this plugin is to provide a dialogue framework that can easily integrate story telling in your game using blueprint.

-----------------------  
System Requirements
-----------------------  
Supported UnrealEngine version: 4.23

This plugin integrated functions of my previous plugins, you will need to buy following plugins before you can using this plugin:  
  [HorizonUI](https://www.unrealengine.com/marketplace/en-US/slug/horizon-ui-plugin)  
  [HorizonTween](https://www.unrealengine.com/marketplace/en-US/slug/horizontween-plugin)  
  [HorizonFramework](https://www.unrealengine.com/marketplace/en-US/slug/horizonframework-plugin)  



-----------------------
Installation Guide
-----------------------  

Put HorizonUIPlugin, HorizonTweenPlugin and HorizonDialoguelugin into YOUR_PROJECT/Plugins folder, 
and then add module to your project 
YOUR_PROJECT.Build.cs:
PublicDependencyModuleNames.AddRange(new string[] { "HorizonUI", "HorizonTween", "HorizonFramework", "HorizonDialogue"});

-----------------------
User Guide
-----------------------  

1. Create Dialogue Layout using UserWidget.  
  
![Design your user widget](./ScreenShot/HorizonDialogue_screenshot_8.png)  
  
2. Create Blueprint(TestScene_BP) that extends from HorizonDialogueScene and setup defualt widgets for DialogueScene.  

![Setup widget](./ScreenShot/HorizonDialogue_setup_widget.png)
  
3. Add Dialogue Events in TestScene_BP, like following:

![Add Dialogue Events](./ScreenShot/HorizonDialogue_screenshot_1.png)  
  
4. Push BP_TestScene using HorizonSceneMaanger. 

![Start DialogueScene](./ScreenShot/HorizonDialogue_start_dialogue.png)  
  

-----------------------
Technical Details
-----------------------  

List of Modules: HorizonDialogue(Runtime), HorizonDialogueEditor(Editor)

Intended Platform: All Platforms  

Platforms Tested: Windows

Demo Project: https://github.com/dorgonman/HorizonDialogueDemo

DemoVideo: 

-----------------------
What does your plugin do/What is the intent of your plugin
-----------------------  

This plugin provide a Dialogue Framework that can help game designer integrate story telling.


-----------------------
Contact and Support
-----------------------  

email: dorgonman@hotmail.com

discord: https://discord.gg/surfzAz  

-----------------------
 Version History
-----------------------  

*4.23.0  

        NEW: First Version including core features.  