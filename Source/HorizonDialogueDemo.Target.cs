// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class HorizonDialogueDemoTarget : TargetRules
{
	public HorizonDialogueDemoTarget(TargetInfo Target) : base(Target)
    {
		Type = TargetType.Game;
        ExtraModuleNames.AddRange(new string[] { "HorizonDialogueDemo" });
        DefaultBuildSettings = BuildSettingsVersion.Latest;
        IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
        //{
        //   bUsePCHFiles = false;
        //   bUseSharedPCHs = false;
        //   bUseUnityBuild = false;
        //}
    }

}
