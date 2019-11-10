[![Build Status](https://hsgame.visualstudio.com/UE4HorizonPlugin/_apis/build/status/HorizonDialogue/HorizonDialogueDemo-Shipping-CI?branchName=master)](https://hsgame.visualstudio.com/UE4HorizonPlugin/_build/latest?definitionId=32&branchName=master)

public feed: nuget.org  

[![nuget.org package in feed in ](https://img.shields.io/nuget/v/HorizonDialogueDemo.svg)](https://www.nuget.org/packages/HorizonDialogueDemo/)

private feed(only for internal use): 

[![HorizonDialogueDemo package in UE4HorizonPlugin feed in Azure Artifacts](https://feeds.dev.azure.com/hsgame/_apis/public/Packaging/Feeds/319fdc64-73ff-4910-b3b8-2ee206a67a49/Packages/98916bea-3801-4c6a-8b2e-a167a70676a4/Badge)](https://dev.azure.com/hsgame/UE4HorizonPlugin/_packaging?_a=package&feed=319fdc64-73ff-4910-b3b8-2ee206a67a49&package=98916bea-3801-4c6a-8b2e-a167a70676a4&preferRelease=true)


Note: 

master branch may be unstable since it is in development, please switch to tags, for example: editor/4.24.0  

----------------------------------------------  
How to Run Demo Project before purchase:(Only for Win64 editor build, no source code)
1. [Download nuget executable](https://www.nuget.org/downloads) and copy the exe into C:\Windows\system32\ or any place listed in your PATH environment.  
2. Install [Git for Windows](https://gitforwindows.org/)
3. Double click install_package_from_nuget.org.bat, and check if UE4Editor-*.dll are installed to Binaries\Win64 and Plugins\HorizonDialoguePlugin\Binaries\Win64\
4. Double click HorizonDialogueDemo.uproject  
----------------------------------------------


----------------------------------------------
              HorizonDialoguePlugin
                    4.24.0
         http://dorgon.horizon-studio.net
          	dorgonman@hotmail.com
----------------------------------------------


 The goal of this plugin is to provide a dialogue framework that can easily integrate story telling in your game using blueprint.

-----------------------  
System Requirements
-----------------------  

Supported UnrealEngine version: 4.22-4.23



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

Here is basic process of creating a DialogueScene.

1. Create Dialogue Layout using UserWidget.  
  
![Design your user widget](./ScreenShot/HorizonDialogue_screenshot_8.png)  
  
2. Create Blueprint(TestScene_BP) that extends from HorizonDialogueScene and setup defualt widgets for DialogueScene.  

![Setup widget](./ScreenShot/HorizonDialogue_setup_widget.png)
  
3. Add Dialogue Events in TestScene_BP, like following:

![Add Dialogue Events](./ScreenShot/HorizonDialogue_screenshot_1.png)  
  
4. Push BP_TestScene using HorizonSceneManger. 

![Start DialogueScene](./ScreenShot/HorizonDialogue_start_dialogue.png)  
  

-----------------------
Technical Details
-----------------------  
Features:  
  
1. Support many DialogueEvent:  

    * WidgetEvents: CreateDialogueMsg, CreateDialogueTalkerNameAndMsg, CreateDialogueMsgWithParam, CreateDialogueMsgWithParamEx, CreateDialogueTextBlock, CreateDialogueImage2D, CreateDialogueUserWidget, CreateDialogueFlipbook, CreateDialogueChoice, CreateDialogueSetWidgetList.  
      
    * ActionEvents: CreateDialogueWaitPendingAction, CreateDialogueWaitDuration, CreateDialogueWaitClick.  
      
    * SceneEvents: CreateDialogueChangeScene, CreateDialoguePopScene, CreateDialoguePushScene.  
      
    * SoundEvents: CreateDialogueSound.  

2. Automatically widget visibility control: Target Widget will visible when DialogueEvent start and hide after finished,  

3. Every DialogueEvent has following callbacks: OnDialogueEventPreStart, OnDialogueEventStart, OnDialogueEventFinished. You can add any custom actions here.

4. Control speed of Auto process or Skip DialogueEvents.  
  
5. DialogueHistoryManager and DialogueHistoryTileView 
 
Code Modules: HorizonDialogue(Runtime), HorizonDialogueEditor(Editor), HorizonFramework(Runtime), HorizonFrameworkEditor(Editor), HorizonTween(Runtime), HorizonUI(Runtime)

Number of Blueprints: 0  

Number of C++ Classes: 104  

Network Replicated: No  

Supported Development Platforms: Win64, Mac, Linux  

Supported Target Build Platforms: All Platforms  

Tested Platform: Win64, Android  

Documentation: https://github.com/dorgonman/HorizonDialogueDemo  

Example Project: https://github.com/dorgonman/HorizonDialogueDemo  

Important/Additional Notes:  
  
This plugin integrated functions of my other plugins, all features and codes in following plugins are included:  
  [HorizonUI](https://www.unrealengine.com/marketplace/en-US/slug/horizon-ui-plugin)  
  [HorizonTween](https://www.unrealengine.com/marketplace/en-US/slug/horizontween-plugin)  
  [HorizonFramework](https://www.unrealengine.com/marketplace/en-US/slug/horizonframework-plugin)  


-----------------------
What does your plugin do/What is the intent of your plugin  
-----------------------  

The intent of this plugin is to provide a framework that can integrate story telling feature in games.  


[DemoVideo](https://www.youtube.com/watch?v=z7MBoe3-o_M)  
[TutorialVideo](https://www.youtube.com/watch?v=hjI2RDx48yc&feature=youtu.be)

-----------------------
Contact and Support
-----------------------  

Email: dorgonman@hotmail.com

Discord: https://discord.gg/surfzAz  

-----------------------
 Version History
-----------------------  

*4.24.0   

        New: [HorizonButtonUserWidget] Button Focused Callback Logic  

        New: [HorizonRadioButton]   

        New: [UHorizonDialogueMsgTextBlock] Implement CharAdvancedDelegate, so user can add the typewriter sound in this callback.  

        BugFix: [UHorizonDialogueMsgTextBlock] Should not call AddBackgroundButton if segInfo.HypertextReference not set  

*4.23.1  

        BugFix: [HorizonDialogueScene] Fix Editor crash  

*4.23.0  

        New: Update to 4.23  

        BugFix: Fix using Flipbook in UHorizonDialogueMsgTextBlock  


*4.22.0  

        NEW: First Version including core features.  