// Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Gauntlet;
using System.IO;
using System.IO.Compression;

namespace UnrealGame
{

	public class HorizonDialogueDemoTestConfig : UnrealTestConfiguration
	{
		/// <summary>
		/// Map to use
		/// </summary>

		
		[AutoParam]
		public string AdditionalCommandLine = "";
		
		[AutoParam]
		public string ExecCmds = "automation SetMinimumPriority Critical;RunTests Filter:Plugin+Filter:_Game+Filter:Project.Functional Tests;Quit";
        

        /// <summary>
        /// Applies these options to the provided app config
        /// </summary>
        /// <param name="AppConfig"></param>
        public override void ApplyToConfig(UnrealAppConfig AppConfig, UnrealSessionRole ConfigRole, IEnumerable<UnrealSessionRole> OtherRoles)
		{
			base.ApplyToConfig(AppConfig, ConfigRole, OtherRoles);

			AppConfig.CommandLine += " -ExecCmds=\"" + ExecCmds + "\" -FORCELOGFLUSH";
			AppConfig.CommandLine += AdditionalCommandLine;
			
	
		}
	}
	public class HorizonDialogueDemoTest : UnrealTestNode<HorizonDialogueDemoTestConfig>
	{
		public HorizonDialogueDemoTest(UnrealTestContext InContext) : base(InContext)
		{
		}

		public override HorizonDialogueDemoTestConfig GetConfiguration()
		{
			// just need a single client
			HorizonDialogueDemoTestConfig Config = base.GetConfiguration();
			Config.MaxDuration = 5 * 600;		// 5min should be plenty
			int ClientCount = Context.TestParams.ParseValue("numclients", 1);
			bool WithServer = Context.TestParams.ParseParam("server");

			if (ClientCount > 0)
			{
				Config.RequireRoles(UnrealTargetRole.Client, ClientCount);
			}

			if (WithServer)
			{
				Config.RequireRoles(UnrealTargetRole.Server, 1);
			}

			UnrealTestRole ClientRole = Config.RequireRole(UnrealTargetRole.Client);

			return Config;
		}

	}

}