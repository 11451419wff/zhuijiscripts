local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "坠机脚本V1.012(测试版)",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "坠机脚本启动中...",
   LoadingSubtitle = "一个神人做的",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "坠机 Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "你要啥啊", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "需要卡密",
      Subtitle = "卡密系统",
      Note = "添加QQ群获取卡密，QQ群群：1055869706，脚本会持续更新", -- Use this to tell the user how to get a key
      FileName = "卡密", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Kab"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("声明", 4483362458) -- Title, Image
local Section = Tab:CreateSection("声明：")
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("此脚本为纯缝合脚本（目前版本有137个脚本）")
local Section = Tab:CreateSection("如有倒卖全家4万")
local Section = Tab:CreateSection("作者QQ号：1994572625")
local Section = Tab:CreateSection("QQ群：1055869706")
local Section = Tab:CreateSection("有些功能点了说callback error，但实际上有用")
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("更新内容：")
local Section = Tab:CreateSection("新添加了一些脚本")
local Section = Tab:CreateSection("添加了一个彩蛋")

local Tab = Window:CreateTab("通用脚本", 4483362458) -- Title, Image
local Section = Tab:CreateSection("玩家属性")
local Slider = Tab:CreateSlider({
   Name = "走路速度",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "速度",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
local Slider = Tab:CreateSlider({
   Name = "跳跃高度",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "高度",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
local Button = Tab:CreateButton({
   Name = "无限跳跃",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))() -- The function that takes place when the button is pressed
   end,
})
local Slider = Tab:CreateSlider({
   Name = "重力",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "重力",
   CurrentValue = 196,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
   game.Workspace.Gravity = v
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
local Slider = Tab:CreateSlider({
   Name = "生命",
   Range = {0, 100},
   Increment = 1,
   Suffix = "生命",
   CurrentValue = 100,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
   game.Players.LocalPlayer.Character.Humanoid.Health = v
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("飞行")
local Button = Tab:CreateButton({
   Name = "飞行",
   Callback = function(v)
      v = loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()-- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "飞车",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V2.0/refs/heads/main/%E5%86%B7%E9%A3%9E%E8%BD%A6%E6%BA%90%E7%A0%81.txt"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "大司马飞行",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "悬浮",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))() -- The function that takes place when the button is pressed
   end,
})
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("甩飞")
local Button = Tab:CreateButton({
   Name = "甩人",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastefy.app/A8Kfs9KV/raw", true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "john doe甩人（别人看不到特效）",
   Callback = function()
		--别人能看到你的动作和被甩飞，但特效只有你自己能看见
--监狱人生使用更佳
local o,l = '|This file was obfucasted by acsu123#9826|','|Youtube: Ekun Scripts|';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = '37530893808855805126096133833537380479750645226848458071465818547585560525147732677485631112066824370433958731998747200322538111648792087851950825655688841762827796005880985078533002996062355134835324412020874284473080226839323856208500597015463861993577509995516366326128674051141508259258700346088791568063178238154179050084692562628534842775691108014113682939102065449727297308219720088382293499944917746586307280388216446896880282966614245973002933588267846974171732257754155349607533228815323496';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';local t = 'hey psst you the wrapper function is right there';local t = 'hey psst you the wrapper function is right there';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = '37530893808855805126096133833537380479750645226848458071465818547585560525147732677485631112066824370433958731998747200322538111648792087851950825655688841762827796005880985078533002996062355134835324412020874284473080226839323856208500597015463861993577509995516366326128674051141508259258700346088791568063178238154179050084692562628534842775691108014113682939102065449727297308219720088382293499944917746586307280388216446896880282966614245973002933588267846974171732257754155349607533228815323496';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';local t = 'hey psst you the wrapper function is right there';local t = '37530893808855805126096133833537380479750645226848458071465818547585560525147732677485631112066824370433958731998747200322538111648792087851950825655688841762827796005880985078533002996062355134835324412020874284473080226839323856208500597015463861993577509995516366326128674051141508259258700346088791568063178238154179050084692562628534842775691108014113682939102065449727297308219720088382293499944917746586307280388216446896880282966614245973002933588267846974171732257754155349607533228815323496';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9/226///0484/60/27/7/7599////6//302////0446//730189/108/08941744971/7////332/7//1//3/7/11/63//9/5/9//6/0/3/8/88/77380//3/36/12/7//8/68///2/9/7941//22/53//812//2///5/////96/3134/373//6//013//5/244131///42/7557////0//05//5//4/2/25/0/96///418015/2/8/279845/58/809///2/0312/34308///238/8//0989//48985//7/9/4////9/3/5076/828///987//3183/58/57/050//174128/6882216359/96/////1/32/245768221//////25701/4640/7/8///1249/7////3//162984///0019//5/87//3/719///27/////153/7402//8062/65/075/542/5//13/77/1///3//4415/82/29/8/2861484/2/1//191/874///42/7//2/6/483//73//8//3///73977///883/6/8/4//55251///0/////8688273////892/715///001026/14///74008//836/56/8////////26///////5/5//49///65/04//29/2929767/7/9/11//69/595/663265/6889312/6/12/3//2/523081714/8//06///5/8///16/6224948////120/0//718487/73////3//8843/5/873///71/////3//7/9///3/7/2/38//11965284/4/39/220/7///9///1/6//90717////19//92///78/4/1013093//475/42/0/701231//9810//2083////2/6139///741/9////4103534/71//11/9/////4/9684/4///5///24//6/89/4444999/7471/47/336234594223///2397//2//87///843//513//80////212//12/10791/9/2/804//38/48//7/5//1/00/199/6/0/39/950/0//9/83/0//3//4///737/431///61/820/097//790555/56////0//1499643/57/109/94/1/653/3//////195/2/0/3895/445/478////2//2/2///5/03//77//3149//37824652/806814//6//7/5//96/4408////2376/9/5/56///86///9///0/099/6///768270//8//545343/18/2/////4//17///////56///2136040/7405////9////8/9/91/40973//4314/663/41102/0/8///7////562/7779/4259///2/02/0////59648///255/142///49/77//6/7////5/009///5/98///7//36///93337/7/5/46/45///7465/029//70034/6///2/4834/93/5/2/37/63/2/530/87//8///7/47994068//2/25453///8////73/7///5/8//05//8/0026//28876///2/8//76/1373/40421559/5/4/5//4/2/73/0//3/76//701/774//39097//63406912/42///350528/7///80611794///8/0433913/8/4//44/41669883//20////231/55///3//828/4060/0/0061//0/6//4/42/169/0/51379///94/16/586//4/9/76//1/1/2////80/3575///7//6212//9///8///3182///01771/59831/5//2/7//2///1/9/94//6//89//3/606//9/4897748933//8//110///00/7244/024///327/5//45218/251/63/05365/9//7/3//2310883/38/9//2///61//66/705////1/0/847//67/5///035/2/5/664/4146153///8//18//40/97//6////142///52/1////1/5/////77/50/21/46092/04/349/3//9//7/9044755/7/1/5/32/802//2372///6098502/7/6/07///7/58/5/29/48251/0//2/9//29////779/1946//4398////89/74/6765/5/////1929730//97/844/5/92439/7125133//6/6/049//54//9/94/088/2/19/5//45//153/21375/31/80/3//67/1640//72898/6///46/9973//761//0275342/7/619////428//1386/08/1//91/041829//9/761/118352/3/515120/6199///7//43660899/1//52178//993///8232/382/034////////2/879/2/17///1/948/1/1660/5////09694//4/43/15///48/1/68////2/8/61////3/279//50/////648//90/69///3//018/9399//77656//147/5631/2/00/1346/8284/2/685657////5852/43/0525/101/60/487/0/5///34/9810/02//9/5/6227182/63//29960/1912734/702//92/349501////6957973///129/3//08/1/3/44/02/0//6/507//461025//78/9727/86//707/8///518/8///2///6/5////76/400/49/243//0//////9//52441//933//21///5/9549346322/783//52/062//5//533//918/613///3/72//5//////5/8/0/8/7/963///003/85/8//9//68132/4/8474009//8////74/139/053977/7//2/6847334/3//3/12/4//6//2/8057/9/63307665//3/8438/14/556//7/875609/13/8904/0///816/5/5/266/0048104//9///////31/58//74//////41773//87/9/0815/35//426//393/8922361019////515/5/94///1/1/015/48///1/5//5/3768/5///12///9060/////6///0841//86/0////79///0/5/21//8//8/4/03/////8388//7989//82252/4/5/45584154//8885/207/186///79/708/7/6/2//2///84//6//8/2/917/5050//16/4528515/72/06894/90/2563/72//9/01/97118//6//162/1//4/588//5/72/927249/1////5505855/1/8//629056/9/////2/11978//3253/3/024//5/4244251/9/0/89459980//4/0724580//62//4/8/15///466/84//1/7/5//6//////4/8///9//03/1/91//25285113/13/189/48//4819//785558/92//47/6/89635//2///0//474///5/692///178/20/8////29/253//0/97823/6378/24/3492/6072//93764/2//41//5/736/3////96029////5/9//895/4/29/62///2///2///0/255/020//673////328/1//0//1//3//92//40637/75/72/////9//49015//5/05/563/0/361/9176242/4785///85///824//622///96729/48//3///84/509/30/17147653//68//3//618///82/333425/4/6/3//33531/703/90699/9////35383/5763//9//48/8//9/4470/7/8/6/4/8//100//1/1////96///501/1//89153//40////2//2///39/00/301///9/2////0/9////70//////00//1/4/90/////418005///0/3//3//48276872970/7/1963//3///81/551///6431/5/567/4/9//6/2/97///43/90/25///41////36515//93832507/03//53//82/40914177866//07/7863//073/4//7//985///747/93122////8602/57/41///42/1356/6209534//4/6603/904//08136/7///4/5/5/5///93//7358834//7/4/739/99/90/1///6/3387/22/8//2///68/435//7/047//8/12//4/////2/0359///47//4////27///2213112//1/77/749//8//82384///72/950/9/1///4///53//2084/3/126956//7178/480/447/9///553/9///78///280/250/6/2/5/7//4239//9//26135//700/2/600460/3/451/4093////124//5099/2/0722661////';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';loadstring('\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\108\73\108\108\73\108\108\108\73\108\108\108\73\108\108\108\73\108\108\40\73\108\108\73\108\108\108\73\108\108\73\108\108\73\108\108\41\32\105\102\32\40\73\108\108\73\108\108\108\73\108\108\73\108\108\73\108\108\61\61\40\40\40\40\40\57\49\57\32\43\32\54\51\54\41\45\54\51\54\41\42\51\49\52\55\41\47\51\49\52\55\41\43\57\49\57\41\41\32\116\104\101\110\32\114\101\116\117\114\110\32\110\111\116\32\116\114\117\101\32\101\110\100\32\105\102\32\40\73\108\108\73\108\108\108\73\108\108\73\108\108\73\108\108\61\61\40\40\40\40\40\57\54\56\32\43\32\54\55\48\41\45\54\55\48\41\42\51\51\49\53\41\47\51\51\49\53\41\43\57\54\56\41\41\32\116\104\101\110\32\114\101\116\117\114\110\32\110\111\116\32\102\97\108\115\101\32\101\110\100\32\101\110\100\59\32\108\111\99\97\108\32\73\108\108\73\108\108\73\108\108\73\108\108\73\32\61\32\40\55\42\51\45\57\47\57\43\51\42\50\47\48\43\51\42\51\41\59\108\111\99\97\108\32\73\108\108\73\108\108\73\108\108\73\108\108\73\32\61\32\40\51\42\52\45\55\47\55\43\54\42\52\47\51\43\57\42\57\41\59\108\111\99\97\108\32\73\108\108\73\73\73\108\108\73\73\73\73\108\108\73\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\59\102\117\110\99\116\105\111\110\32\73\108\108\73\73\73\73\108\108\73\73\73\73\73\108\40\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\41\32\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\73\108\108\73\108\108\73\40\73\108\108\73\108\108\73\108\108\73\108\108\73\41\32\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\73\108\108\73\108\108\73\40\73\108\108\73\108\108\73\108\108\73\108\108\73\41\32\101\110\100\32\101\110\100\32\101\110\100\59\73\108\108\73\73\73\73\108\108\73\73\73\73\73\108\40\57\48\48\50\56\51\41\59\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\108\73\108\108\73\108\108\108\73\108\108\108\73\108\108\108\73\108\108\73\108\108\108\73\73\73\108\108\108\40\73\73\108\108\108\108\73\73\108\108\108\108\41\32\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\73\108\108\73\108\108\73\40\73\108\108\73\108\108\73\108\108\73\108\108\73\41\32\108\111\99\97\108\32\73\73\108\108\108\108\73\73\108\108\108\108\32\61\32\40\57\42\48\45\55\47\53\43\51\42\49\47\51\43\56\42\50\41\32\101\110\100\32\101\110\100\59\73\108\108\73\108\108\108\73\108\108\73\108\108\108\73\108\108\108\73\108\108\108\73\108\108\73\108\108\108\73\73\73\108\108\108\40\57\48\56\51\41\59\108\111\99\97\108\32\73\108\108\73\73\108\108\73\73\108\108\73\73\73\32\61\32\108\111\97\100\115\116\114\105\110\103\59\108\111\99\97\108\32\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\73\32\61\32\123\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\55\39\44\39\92\49\48\48\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\49\49\52\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\51\39\44\39\92\52\48\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\50\39\44\39\92\49\49\54\39\44\39\92\49\49\54\39\44\39\92\49\49\50\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\49\48\52\39\44\39\92\49\49\54\39\44\39\92\49\49\54\39\44\39\92\49\49\50\39\44\39\92\49\49\53\39\44\39\92\53\56\39\44\39\92\52\55\39\44\39\92\52\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\49\49\57\39\44\39\92\52\54\39\44\39\92\49\48\51\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\49\55\39\44\39\92\57\56\39\44\39\92\49\49\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\57\57\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\49\54\39\44\39\92\52\54\39\44\39\92\57\57\39\44\39\92\49\49\49\39\44\39\92\49\48\57\39\44\39\92\52\55\39\44\39\92\56\48\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\49\52\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\50\49\39\44\39\92\49\49\49\39\44\39\92\49\49\55\39\44\39\92\49\49\54\39\44\39\92\49\49\55\39\44\39\92\57\56\39\44\39\92\49\48\49\39\44\39\92\49\49\53\39\44\39\92\52\55\39\44\39\92\55\56\39\44\39\92\49\49\49\39\44\39\92\49\49\53\39\44\39\92\49\48\55\39\44\39\92\49\48\53\39\44\39\92\49\50\48\39\44\39\92\52\55\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\52\55\39\44\39\92\49\48\54\39\44\39\92\49\49\49\39\44\39\92\49\48\52\39\44\39\92\49\49\48\39\44\39\92\51\55\39\44\39\92\53\48\39\44\39\92\52\56\39\44\39\92\49\48\48\39\44\39\92\49\49\49\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\49\48\56\39\44\39\92\49\49\55\39\44\39\92\57\55\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\49\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\125\73\108\108\73\73\108\108\73\73\108\108\73\73\73\40\73\108\108\73\73\73\108\108\73\73\73\73\108\108\73\40\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\73\44\73\73\73\73\73\73\73\73\108\108\108\108\108\108\108\108\73\73\73\73\73\73\73\73\41\41\40\41')();local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = '37530893808855805126096133833537380479750645226848458071465818547585560525147732677485631112066824370433958731998747200322538111648792087851950825655688841762827796005880985078533002996062355134835324412020874284473080226839323856208500597015463861993577509995516366326128674051141508259258700346088791568063178238154179050084692562628534842775691108014113682939102065449727297308219720088382293499944917746586307280388216446896880282966614245973002933588267846974171732257754155349607533228815323496';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';local t = 'hey psst you the wrapper function is right there';local t = 'IIllllIIllll';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = '37530893808855805126096133833537380479750645226848458071465818547585560525147732677485631112066824370433958731998747200322538111648792087851950825655688841762827796005880985078533002996062355134835324412020874284473080226839323856208500597015463861993577509995516366326128674051141508259258700346088791568063178238154179050084692562628534842775691108014113682939102065449727297308219720088382293499944917746586307280388216446896880282966614245973002933588267846974171732257754155349607533228815323496';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';local t = 'hey psst you the wrapper function is right there';local t = '37530893808855805126096133833537380479750645226848458071465818547585560525147732677485631112066824370433958731998747200322538111648792087851950825655688841762827796005880985078533002996062355134835324412020874284473080226839323856208500597015463861993577509995516366326128674051141508259258700346088791568063178238154179050084692562628534842775691108014113682939102065449727297308219720088382293499944917746586307280388216446896880282966614245973002933588267846974171732257754155349607533228815323496';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = 'F%TAh)|G^h_)QV(bWpv0g|1nEH-CBQC6z+cH!]$Vf2JWswY^M_KT^h6pOXS&j_RI@U&QSYgXwPoP##zu1!$M*P1Bipmrf40&tLC@fJEB}S&6Al[]+!J8ugeDvrUA+qmk1O-6=vd*$)Tj~Pg+vPYQV3)*_Jm@Zy-w#$`5dbR*+g|+Wb@*RFCidq}=Zg4uFVQnDP(HQFtHLpxdqe_8Js&NJ!Fe*fyr0^E~zsG&XZse^QhbV]9apUNZA)3m{[ET#9Th[}=TUlXE25Fs3js)46NaUlnNiRc_vV]rQ_@faEK3e^+7}jVZ&eZFp#)yz-oUMl#`aSdb-O4[yV3t5u(QyM-Ou!$T1[jjh-hiJlkBZ^x{G[mhqaYPNP~7v#w=9Gb*xj|6vfd++A%ww[DN[[`KM`m7@JZP^1Bi!w^aC(-sn5PK2(=Z^-ew_q`00YlLuNT~!Dahr-AFX^^u28)NZ=9Pj8l!BwqW!!WPjWWAO-5h6PCEtr*(kWDuAO~2';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';local t = 'IIllllIIllll';local t = '4/7/0//4/0//67//72380/9144///6/////4///70957238/5/57/0/2687/0/65/7/678083616///39//5/69/0212098/35//054//7///1////5/30//327//21196///3////70/60/368679///51/8//3///9//7//0//7///64/0/2//8093476146/46434523/2///52/55/4//0/28/4//24/882//60/7///2768//91//47//70///771849942912/996/711606//37/26//0/459/////178//842//3//1751///7///69//79293/6/5/63//79/000/00511/8/3/4/102/8666//3/3//4//30//30/////33/46///55/1//586/8/0/3/////219659//8///3/2/88815367//4/02//48//39//68//61/1//327//76087/6/90/6/422//17/3/6/9';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'hey psst you the wrapper function is right there';local t = '4/7/0//4/0//67//72380/9144';local t = 'IIllllIIllll';local t = '4/7/0//4/0//67//72380/9144';local t = 'IIllllIIllll';local t = 'hey psst you the wrapper function is right there';
       -- The function that takes place when the button is pressed
   end,
})
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("透视")
local Button = Tab:CreateButton({
   Name = "透视",
   Callback = function(v)
      v = loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "透视+自瞄",
   Callback = function()
		-- Issues:
-- I'm still working on Tracers, I know they can cause huge frame rate drops. (I think I got it running as smooth as it's going to get.)
-- Phantom Forces: Weird positioning bug with tracers? Tracer positions a bit behind localplayer. (Maybe make the update faster? > RenderPriority.First ?

-- Settings can be found on line: 51
-- Don't change anything if you don't understand.

local Plrs = game:GetService("Players")
local Run = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local StartGui = game:GetService("StarterGui")
local Teams = game:GetService("Teams")
local UserInput = game:GetService("UserInputService")
local Light = game:GetService("Lighting")
local HTTP = game:GetService("HttpService")
local RepStor = game:GetService("ReplicatedStorage")
 
function GetCamera() -- Just in case some game renames the player's camera.
	return workspace:FindFirstChildOfClass("Camera")
end
 
local ChamsFolder = Instance.new("Folder", CoreGui)
ChamsFolder.Name = "Chams"
local PlayerChams = Instance.new("Folder", ChamsFolder)
PlayerChams.Name = "PlayerChams"
local ItemChams = Instance.new("Folder", ChamsFolder)
ItemChams.Name = "ItemChams"

local ESPFolder = Instance.new("Folder", CoreGui)
ESPFolder.Name = "ESP Stuff"
local PlayerESP = Instance.new("Folder", ESPFolder)
PlayerESP.Name = "PlayerESP"
local ItemESP = Instance.new("Folder", ESPFolder)
ItemESP.Name = "ItemESP"

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
local MyMouse = MyPlr:GetMouse()
local MyCam = GetCamera()
if MyCam == nil then
	error("WHAT KIND OF BLACK MAGIC IS THIS, CAMERA NOT FOUND.")
	return
end

local Tracers = Instance.new("Folder", MyCam)
Tracers.Name = "Tracers"
local TracerData = { }
local TracerMT = setmetatable(TracerData, {
	__newindex = function(tab, index, val)
		rawset(tab, index, val)
	end
})

function RemoveSpacesFromString(Str)
	local newstr = ""
	for i = 1, #Str do
		if Str:sub(i, i) ~= " " then
			newstr = newstr .. Str:sub(i, i)
		end
	end

	return newstr
end

function CloneTable(T)
    local temp = { }
    for i,v in next, T do
        if type(v) == "table" then
            temp[i] = CloneTable(v)
        else
            temp[i] = v 
        end
    end
    return temp
end

local Bullshit = {
	ESPEnabled = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	CHAMSEnabled = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	TracersEnabled = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	DebugInfo = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	OutlinesEnabled = false,
	FullbrightEnabled = false,
	CrosshairEnabled = false,
	AimbotEnabled = false,
	Aimbot = false,
	TracersLength = 500, -- MAX DISTANCE IS 2048 DO NOT GO ABOVE OR YOU'LL ENCOUNTER PROBLEMS.
	ESPLength = 10000,
	CHAMSLength = 500,
	PlaceTracersUnderCharacter = false, -- Change to true if you want tracers to be placed under your character instead of at the bottom of your camera.
	FreeForAll = false, -- use for games that don't have teams (Apocalypse Rising)
	AutoFire = false,
	MobChams = false,
	MobESP = false,
	AimbotKey = "Enum.UserInputType.MouseButton2", -- Doesn't do anything yet.
	Colors = {
		Enemy = Color3.new(1, 0, 0),
		Ally = Color3.new(0, 1, 0),
		Friend = Color3.new(1, 1, 0),
		Neutral = Color3.new(1, 1, 1),
		Crosshair = Color3.new(1, 0, 0),
		ColorOverride = nil, -- Every player will have the chosen color regardless of enemy or ally.
	},

	-- VVVV DON'T EDIT BELOW VVVV --
	ClosestEnemy = nil,
	CharAddedEvent = { },
	OutlinedParts = { },
	WorkspaceChildAddedEvent = nil,
	LightingEvent = nil,
	AmbientBackup = Light.Ambient,
	ColorShiftBotBackup = Light.ColorShift_Bottom,
	ColorShiftTopBackup = Light.ColorShift_Top,
	FPSAverage = { },
	Blacklist = { },
	FriendList = { },
	CameraModeBackup = MyPlr.CameraMode,
	GameSpecificCrap = { 
	},
	Mob_ESP_CHAMS_Ran_Once = false,
}

function SaveBullshitSettings()
	local temp = { }
	local succ, out = pcall(function()
		temp.TracersLength = Bullshit.TracersLength
		temp.ESPLength = Bullshit.ESPLength
		temp.CHAMSLength = Bullshit.CHAMSLength
		temp.PlaceTracersUnderCharacter = Bullshit.PlaceTracersUnderCharacter
		temp.FreeForAll = Bullshit.FreeForAll
		temp.AutoFire = Bullshit.AutoFire
		temp.AimbotKey = tostring(Bullshit.AimbotKey)
		temp.MobChams = Bullshit.MobChams
		temp.MobESP = Bullshit.MobESP
		temp.Colors = { }
		for i, v in next, Bullshit.Colors do
			temp.Colors[i] = tostring(v)
		end
		writefile("ProjectBullshit.txt", HTTP:JSONEncode(temp))
	end)
	if not succ then
		error(out)
	end
end

fuck = pcall(function()
	local temp = HTTP:JSONDecode(readfile("ProjectBullshit.txt"))
	if temp.MobChams ~= nil and temp.MobESP ~= nil then
		for i, v in next, temp do
			if i ~= "Colors" then
				Bullshit[i] = v
			end
		end
		for i, v in next, temp.Colors do
			local r, g, b = string.match(RemoveSpacesFromString(v), "(%d+),(%d+),(%d+)")
			r = tonumber(r)
			g = tonumber(g)
			b = tonumber(b)

			temp.Colors[i] = Color3.new(r, g, b)
		end
		Bullshit.Colors = temp.Colors
	else
		spawn(function()
			SaveBullshitSettings()
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "Major update requried your settings to be wiped! Sorry!"
			wait(5)
			hint:Destroy()
		end)
	end

	Bullshit.AutoFire = false
end)

-- Load blacklist file if it exists
fuck2 = pcall(function()
	Bullshit.Blacklist = HTTP:JSONDecode(readfile("Blacklist.txt"))
end)

fuck3 = pcall(function()
	Bullshit.FriendList = HTTP:JSONDecode(readfile("Whitelist.txt"))
end)

local DebugMenu = { }
DebugMenu["SC"] = Instance.new("ScreenGui", CoreGui)
DebugMenu["SC"].Name = "Debug"
DebugMenu["Main"] = Instance.new("Frame", DebugMenu["SC"])
DebugMenu["Main"].Name = "Debug Menu"
DebugMenu["Main"].Position = UDim2.new(0, 20, 1, -220)
DebugMenu["Main"].Size = UDim2.new(1, 0, 0, 200)
DebugMenu["Main"].BackgroundTransparency = 1
DebugMenu["Main"].Visible = false
if game.PlaceId == 606849621 then
	DebugMenu["Main"].Position = UDim2.new(0, 230, 1, -220)
end
DebugMenu["Main"].Draggable = true
DebugMenu["Main"].Active = true
DebugMenu["Position"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["Position"].BackgroundTransparency = 1
DebugMenu["Position"].Position = UDim2.new(0, 0, 0, 0)
DebugMenu["Position"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["Position"].Font = "Arcade"
DebugMenu["Position"].Text = ""
DebugMenu["Position"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["Position"].TextSize = 15
DebugMenu["Position"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["Position"].TextStrokeTransparency = 0.3
DebugMenu["Position"].TextXAlignment = "Left"
DebugMenu["FPS"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["FPS"].BackgroundTransparency = 1
DebugMenu["FPS"].Position = UDim2.new(0, 0, 0, 15)
DebugMenu["FPS"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["FPS"].Font = "Arcade"
DebugMenu["FPS"].Text = ""
DebugMenu["FPS"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["FPS"].TextSize = 15
DebugMenu["FPS"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["FPS"].TextStrokeTransparency = 0.3
DebugMenu["FPS"].TextXAlignment = "Left"
DebugMenu["PlayerSelected"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerSelected"].BackgroundTransparency = 1
DebugMenu["PlayerSelected"].Position = UDim2.new(0, 0, 0, 35)
DebugMenu["PlayerSelected"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerSelected"].Font = "Arcade"
DebugMenu["PlayerSelected"].Text = ""
DebugMenu["PlayerSelected"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerSelected"].TextSize = 15
DebugMenu["PlayerSelected"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerSelected"].TextStrokeTransparency = 0.3
DebugMenu["PlayerSelected"].TextXAlignment = "Left"
DebugMenu["PlayerTeam"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerTeam"].BackgroundTransparency = 1
DebugMenu["PlayerTeam"].Position = UDim2.new(0, 0, 0, 50)
DebugMenu["PlayerTeam"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerTeam"].Font = "Arcade"
DebugMenu["PlayerTeam"].Text = ""
DebugMenu["PlayerTeam"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerTeam"].TextSize = 15
DebugMenu["PlayerTeam"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerTeam"].TextStrokeTransparency = 0.3
DebugMenu["PlayerTeam"].TextXAlignment = "Left"
DebugMenu["PlayerHealth"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerHealth"].BackgroundTransparency = 1
DebugMenu["PlayerHealth"].Position = UDim2.new(0, 0, 0, 65)
DebugMenu["PlayerHealth"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerHealth"].Font = "Arcade"
DebugMenu["PlayerHealth"].Text = ""
DebugMenu["PlayerHealth"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerHealth"].TextSize = 15
DebugMenu["PlayerHealth"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerHealth"].TextStrokeTransparency = 0.3
DebugMenu["PlayerHealth"].TextXAlignment = "Left"
DebugMenu["PlayerPosition"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerPosition"].BackgroundTransparency = 1
DebugMenu["PlayerPosition"].Position = UDim2.new(0, 0, 0, 80)
DebugMenu["PlayerPosition"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerPosition"].Font = "Arcade"
DebugMenu["PlayerPosition"].Text = ""
DebugMenu["PlayerPosition"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerPosition"].TextSize = 15
DebugMenu["PlayerPosition"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerPosition"].TextStrokeTransparency = 0.3
DebugMenu["PlayerPosition"].TextXAlignment = "Left"
DebugMenu["BehindWall"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["BehindWall"].BackgroundTransparency = 1
DebugMenu["BehindWall"].Position = UDim2.new(0, 0, 0, 95)
DebugMenu["BehindWall"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["BehindWall"].Font = "Arcade"
DebugMenu["BehindWall"].Text = ""
DebugMenu["BehindWall"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["BehindWall"].TextSize = 15
DebugMenu["BehindWall"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["BehindWall"].TextStrokeTransparency = 0.3
DebugMenu["BehindWall"].TextXAlignment = "Left"

local LastTick = tick()
local FPSTick = tick()

if #Teams:GetChildren() <= 0 then
	Bullshit.FreeForAll = true
end

if Bullshit.TracersLength > 2048 then
	Bullshit.TracersLength = 2048
end

if Bullshit.CHAMSLength > 2048 then
	Bullshit.CHAMSLength = 2048
end

local wildrevolvertick = tick()
local wildrevolverteamdata = nil
function GetTeamColor(Plr)
	if Plr == nil then return nil end
	if not Plr:IsA("Player") then
		return nil
	end
	local PickedColor = Bullshit.Colors.Enemy
	
	if Plr ~= nil then
		if game.PlaceId == 606849621 then
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FreeForAll then
					if MyPlr.Team ~= nil and Plr.Team ~= nil then
						if Bullshit.FriendList[Plr.Name] == nil then
							if MyPlr.Team.Name == "Prisoner" then
								if Plr.Team == MyPlr.Team or Plr.Team.Name == "Criminal" then
									PickedColor = Bullshit.Colors.Ally
								else
									PickedColor = Bullshit.Colors.Enemy
								end
							elseif MyPlr.Team.Name == "Criminal" then
								if Plr.Team == MyPlr.Team or Plr.Team.Name == "Prisoner" then
									PickedColor = Bullshit.Colors.Ally
								else
									PickedColor = Bullshit.Colors.Enemy
								end
							elseif MyPlr.Team.Name == "Police" then
								if Plr.Team == MyPlr.Team then
									PickedColor = Bullshit.Colors.Ally
								else
									if Plr.Team.Name == "Criminal" then
										PickedColor = Bullshit.Colors.Enemy
									elseif Plr.Team.Name == "Prisoner" then
										PickedColor = Bullshit.Colors.Neutral
									end
								end
							end
						else
							PickedColor = Bullshit.Colors.Friend
						end
					end
				else
					if Bullshit.FriendList[Plr.Name] ~= nil then
						PickedColor = Bullshit.Colors.Friend
					else
						PickedColor = Bullshit.Colors.Enemy
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 155615604 then
			if Bullshit.Colors.ColorOverride == nil then
				if MyPlr.Team ~= nil and Plr.Team ~= nil then
					if Bullshit.FriendList[Plr.Name] == nil then
						if MyPlr.Team.Name == "Inmates" then
							if Plr.Team.Name == "Inmates" then
								PickedColor = Bullshit.Colors.Ally
							elseif Plr.Team.Name == "Guards" or Plr.Team.Name == "Criminals" then
								PickedColor = Bullshit.Colors.Enemy
							else
								PickedColor = Bullshit.Colors.Neutral
							end
						elseif MyPlr.Team.Name == "Guards" then
							if Plr.Team.Name == "Inmates" then
								PickedColor = Bullshit.Colors.Neutral
							elseif Plr.Team.Name == "Criminals" then
								PickedColor = Bullshit.Colors.Enemy
							elseif Plr.Team.Name == "Guards" then
								PickColor = Bullshit.Colors.Ally
							end
						elseif MyPlr.Team.Name == "Criminals" then
							if Plr.Team.Name == "Inmates" then
								PickedColor = Bullshit.Colors.Ally
							elseif Plr.Team.Name == "Guards" then
								PickedColor = Bullshit.Colors.Enemy
							else
								PickedColor = Bullshit.Colors.Neutral
							end
						end
					else
						PickedColor = Bullshit.Colors.Friend
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 746820961 then
			if Bullshit.Colors.ColorOverride == nil then
				if MyPlr:FindFirstChild("TeamC") and Plr:FindFirstChild("TeamC") then
					if Plr.TeamC.Value == MyPlr.TeamC.Value then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Enemy
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 1382113806 then
			if Bullshit.Colors.ColorOverride == nil then
				if MyPlr:FindFirstChild("role") and Plr:FindFirstChild("role") then
					if MyPlr.role.Value == "assassin" then
						if Plr.role.Value == "target" then
							PickedColor = Bullshit.Colors.Enemy
						elseif Plr.role.Value == "guard" then
							PickedColor = Color3.new(1, 135 / 255, 0)
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					elseif MyPlr.role.Value == "target" then
						if Plr.role.Value == "guard" then
							PickedColor = Bullshit.Colors.Ally
						elseif Plr.role.Value == "assassin" then
							PickedColor = Bullshit.Colors.Enemy
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					elseif MyPlr.role.Value == "guard" then
						if Plr.role.Value == "target" then
							PickedColor = Bullshit.Colors.Friend
						elseif Plr.role.Value == "guard" then
							PickedColor = Bullshit.Colors.Ally
						elseif Plr.role.Value == "assassin" then
							PickedColor = Bullshit.Colors.Enemy
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					else
						if MyPlr.role.Value == "none" then
							PickedColor = Bullshit.Colors.Neutral
						end
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 1072809192 then
			if MyPlr:FindFirstChild("Backpack") and Plr:FindFirstChild("Backpack") then
				if MyPlr.Backpack:FindFirstChild("Knife") or MyChar:FindFirstChild("Knife") then
					if Plr.Backpack:FindFirstChild("Revolver") or Plr.Character:FindFirstChild("Revolver") then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Color3.new(1, 135 / 255, 0)
					end
				elseif MyPlr.Backpack:FindFirstChild("Revolver") or MyChar:FindFirstChild("Revolver") then
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					elseif Plr.Backpack:FindFirstChild("Revolver") or Plr.Character:FindFirstChild("Revolver") then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Bullshit.Colors.Ally
					end
				else
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					elseif Plr.Backpack:FindFirstChild("Revolver") or Plr.Character:FindFirstChild("Revolver") then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Neutral
					end
				end
			end
		elseif game.PlaceId == 142823291 or game.PlaceId == 1122507250 then
			if MyPlr:FindFirstChild("Backpack") and Plr:FindFirstChild("Backpack") then
				if MyPlr.Backpack:FindFirstChild("Knife") or MyChar:FindFirstChild("Knife") then
					if (Plr.Backpack:FindFirstChild("Gun") or Plr.Backpack:FindFirstChild("Revolver")) or (Plr.Character:FindFirstChild("Gun") or Plr.Character:FindFirstChild("Revolver")) then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Color3.new(1, 135 / 255, 0)
					end
				elseif (MyPlr.Backpack:FindFirstChild("Gun") or MyPlr.Backpack:FindFirstChild("Revolver")) or (MyChar:FindFirstChild("Gun") or MyChar:FindFirstChild("Revolver")) then
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Bullshit.Colors.Ally
					end
				else
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					elseif (Plr.Backpack:FindFirstChild("Gun") or Plr.Backpack:FindFirstChild("Revolver")) or (Plr.Character:FindFirstChild("Gun") or Plr.Character:FindFirstChild("Revolver")) then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Neutral
					end
				end
			end
		elseif game.PlaceId == 379614936 then
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FriendList[Plr.Name] then
					local targ = MyPlr:FindFirstChild("PlayerGui"):FindFirstChild("ScreenGui"):FindFirstChild("UI"):FindFirstChild("Target"):FindFirstChild("Img"):FindFirstChild("PlayerText")
					if targ then
						if Plr.Name:lower() == targ.Text:lower() then
							PickedColor = Bullshit.Colors.Enemy
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					else
						PickedColor = Bullshit.Colors.Neutral
					end
				else
					PickedColor = Bullshit.Colors.Friend
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 983224898 then
			if (tick() - wildrevolvertick) > 10 or wildrevolverteamdata == nil then
				wildrevolverteamdata = RepStor.Functions.RequestGameData:InvokeServer()
				wildrevolvertick = tick()
				return Bullshit.Colors.Neutral
			end
			local succ = pcall(function()
				if wildrevolverteamdata[Plr.Name] ~= nil then
					if Bullshit.Colors.ColorOverride == nil then
						if not Bullshit.FriendList[Plr.Name] then
							if wildrevolverteamdata[Plr.Name]["TeamName"] == wildrevolverteamdata[MyPlr.Name]["TeamName"] then
								PickedColor = Bullshit.Colors.Ally
							else
								PickedColor = Bullshit.Colors.Enemy
							end
						else
							PickedColor = Bullshit.Colors.Friend
						end
					else
						PickedColor = Bullshit.Colors.ColorOverride
					end
				else
					PickedColor = Bullshit.Colors.Neutral
				end
			end)
			if not succ then
				wildrevolverteamdata = RepStor.Functions.RequestGameData:InvokeServer()
				wildrevolvertick = tick()
				return Bullshit.Colors.Neutral
			end
		else
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FreeForAll then
					if MyPlr.Team ~= Plr.Team and not Bullshit.FriendList[Plr.Name] then
						PickedColor = Bullshit.Colors.Enemy
					elseif MyPlr.Team == Plr.Team and not Bullshit.FriendList[Plr.Name] then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Friend
					end
				else
					if Bullshit.FriendList[Plr.Name] ~= nil then
						PickedColor = Bullshit.Colors.Friend
					else
						PickedColor = Bullshit.Colors.Enemy
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		end
	end
	
	return PickedColor
end

function FindCham(Obj)
	for i, v in next, ItemChams:GetChildren() do
		if v.className == "ObjectValue" then
			if v.Value == Obj then
				return v.Parent
			end
		end
	end

	return nil
end

function FindESP(Obj)
	for i, v in next, ItemESP:GetChildren() do
		if v.className == "ObjectValue" then
			if v.Value == Obj then
				return v.Parent
			end
		end
	end

	return nil
end

function GetFirstPart(Obj)
	for i, v in next, Obj:GetDescendants() do
		if v:IsA("BasePart") then
			return v
		end
	end

	return nil
end

function GetSizeOfObject(Obj)
	if Obj:IsA("BasePart") then
		return Obj.Size
	elseif Obj:IsA("Model") then
		return Obj:GetExtentsSize()
	end
end

function GetClosestPlayerNotBehindWall()
	local Players = { }
	local CurrentClosePlayer = nil
	local SelectedPlr = nil

	for _, v in next, Plrs:GetPlayers() do
		if v ~= MyPlr and not Bullshit.Blacklist[v.Name] then
			local IsAlly = GetTeamColor(v)
			if IsAlly ~= Bullshit.Colors.Ally and IsAlly ~= Bullshit.Colors.Friend and IsAlly ~= Bullshit.Colors.Neutral then
				local GetChar = v.Character
				if MyChar and GetChar then
					local MyHead, MyTor = MyChar:FindFirstChild("Head"), MyChar:FindFirstChild("HumanoidRootPart")
					local GetHead, GetTor, GetHum = GetChar:FindFirstChild("Head"), GetChar:FindFirstChild("HumanoidRootPart"), GetChar:FindFirstChild("Humanoid")

					if MyHead and MyTor and GetHead and GetTor and GetHum then
						if game.PlaceId == 455366377 then
							if not GetChar:FindFirstChild("KO") and GetHum.Health > 1 then
								local Ray = Ray.new(MyCam.CFrame.p, (GetHead.Position - MyCam.CFrame.p).unit * 2048)
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
								if part ~= nil then
									if part:IsDescendantOf(GetChar) then
										local Dist = (MyTor.Position - GetTor.Position).magnitude
										Players[v] = Dist
									end
								end
							end
						elseif game.PlaceId == 746820961 then
							if GetHum.Health > 1 then
								local Ray = Ray.new(MyCam.CFrame.p, (GetHead.Position - MyCam.CFrame.p).unit * 2048)
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar, MyCam})
								if part ~= nil then
									if part:IsDescendantOf(GetChar) then
										local Dist = (MyTor.Position - GetTor.Position).magnitude
										Players[v] = Dist
									end
								end
							end
						else
							if GetHum.Health > 1 then
								local Ray = Ray.new(MyCam.CFrame.p, (GetHead.Position - MyCam.CFrame.p).unit * 2048)
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
								if part ~= nil then
									if part:IsDescendantOf(GetChar) then
										local Dist = (MyTor.Position - GetTor.Position).magnitude
										Players[v] = Dist
									end
								end
							end
						end
					end
				end
			end
		end
	end

	for i, v in next, Players do
		if CurrentClosePlayer ~= nil then
			if v <= CurrentClosePlayer then
				CurrentClosePlayer = v
				SelectedPlr = i
			end
		else
			CurrentClosePlayer = v
			SelectedPlr = i
		end
	end
	
	return SelectedPlr
end

function GetClosestPlayer()
	local Players = { }
	local CurrentClosePlayer = nil
	local SelectedPlr = nil
	
	for _, v in next, Plrs:GetPlayers() do
		if v ~= MyPlr then
			local IsAlly = GetTeamColor(v)
			if IsAlly ~= Bullshit.Colors.Ally and IsAlly ~= Bullshit.Colors.Friend and IsAlly ~= Bullshit.Colors.Neutral then
				local GetChar = v.Character
				if MyChar and GetChar then
					local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
					local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
					local GetHum = GetChar:FindFirstChild("Humanoid")
					if MyTor and GetTor and GetHum then
						if game.PlaceId == 455366377 then
							if not GetChar:FindFirstChild("KO") and GetHum.Health > 1 then
								local Dist = (MyTor.Position - GetTor.Position).magnitude
								Players[v] = Dist
							end
						else
							if GetHum.Health > 1 then
								local Dist = (MyTor.Position - GetTor.Position).magnitude
								Players[v] = Dist
							end
						end
					end
				end
			end
		end
	end
	
	for i, v in next, Players do
		if CurrentClosePlayer ~= nil then
			if v <= CurrentClosePlayer then
				CurrentClosePlayer = v
				SelectedPlr = i
			end
		else
			CurrentClosePlayer = v
			SelectedPlr = i
		end
	end
	
	return SelectedPlr
end

function FindPlayer(Txt)
	local ps = { }
	for _, v in next, Plrs:GetPlayers() do
		if string.lower(string.sub(v.Name, 1, string.len(Txt))) == string.lower(Txt) then
			table.insert(ps, v)
		end
	end

	if #ps == 1 then
		if ps[1] ~= MyPlr then
			return ps[1]
		else
			return nil
		end
	else
		return nil
	end
end

function UpdateESP(Plr)
	if Plr ~= nil then
		local Find = PlayerESP:FindFirstChild("ESP Crap_" .. Plr.Name)
		if Find then
			local PickColor = GetTeamColor(Plr)
			Find.Frame.Names.TextColor3 = PickColor
			Find.Frame.Dist.TextColor3 = PickColor
			Find.Frame.Health.TextColor3 = PickColor
			--Find.Frame.Pos.TextColor3 = PickColor
			local GetChar = Plr.Character
			if MyChar and GetChar then
				local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
				local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
				local Find4 = GetChar:FindFirstChildOfClass("Humanoid")
				if Find2 and Find3 then
					local pos = Find3.Position
					local Dist = (Find2.Position - pos).magnitude
					if Dist > Bullshit.ESPLength or Bullshit.Blacklist[Plr.Name] then
						Find.Frame.Names.Visible = false
						Find.Frame.Dist.Visible = false
						Find.Frame.Health.Visible = false
						return
					else
						Find.Frame.Names.Visible = true
						Find.Frame.Dist.Visible = true
						Find.Frame.Health.Visible = true
					end
					Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
					--Find.Frame.Pos.Text = "(X: " .. string.format("%.0f", pos.X) .. ", Y: " .. string.format("%.0f", pos.Y) .. ", Z: " .. string.format("%.0f", pos.Z) .. ")"
					if Find4 then
						Find.Frame.Health.Text = "Health: " .. string.format("%.0f", Find4.Health)
					else
						Find.Frame.Health.Text = ""
					end
				end
			end
		end
	end
end

function RemoveESP(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemESP
		if IsPlr then UseFolder = PlayerESP end

		local FindESP = ((IsPlr) and UseFolder:FindFirstChild("ESP Crap_" .. Obj.Name)) or FindESP(Obj)
		if FindESP then
			FindESP:Destroy()
		end
	end
end

function CreateESP(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemESP
		local GetChar = ((IsPlr) and Obj.Character) or Obj
		local Head = GetChar:FindFirstChild("Head")
		local t = tick()
		if IsPlr then UseFolder = PlayerESP end
		if Head == nil then
			repeat
				Head = GetChar:FindFirstChild("Head")
				wait()
			until Head ~= nil or (tick() - t) >= 10
		end
		if Head == nil then return end
		
		local bb = Instance.new("BillboardGui")
		bb.Adornee = Head
		bb.ExtentsOffset = Vector3.new(0, 1, 0)
		bb.AlwaysOnTop = true
		bb.Size = UDim2.new(0, 5, 0, 5)
		bb.StudsOffset = Vector3.new(0, 3, 0)
		bb.Name = "ESP Crap_" .. Obj.Name
		bb.Parent = UseFolder
		
		local frame = Instance.new("Frame", bb)
		frame.ZIndex = 10
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 1, 0)
		
		local TxtName = Instance.new("TextLabel", frame)
		TxtName.Name = "Names"
		TxtName.ZIndex = 10
		TxtName.Text = Obj.Name
		TxtName.BackgroundTransparency = 1
		TxtName.Position = UDim2.new(0, 0, 0, -45)
		TxtName.Size = UDim2.new(1, 0, 10, 0)
		TxtName.Font = "SourceSansBold"
		TxtName.TextSize = 13
		TxtName.TextStrokeTransparency = 0.5

		local TxtDist = nil
		local TxtHealth = nil
		if IsPlr then
			TxtDist = Instance.new("TextLabel", frame)
			TxtDist.Name = "Dist"
			TxtDist.ZIndex = 10
			TxtDist.Text = ""
			TxtDist.BackgroundTransparency = 1
			TxtDist.Position = UDim2.new(0, 0, 0, -35)
			TxtDist.Size = UDim2.new(1, 0, 10, 0)
			TxtDist.Font = "SourceSansBold"
			TxtDist.TextSize = 13
			TxtDist.TextStrokeTransparency = 0.5

			TxtHealth = Instance.new("TextLabel", frame)
			TxtHealth.Name = "Health"
			TxtHealth.ZIndex = 10
			TxtHealth.Text = ""
			TxtHealth.BackgroundTransparency = 1
			TxtHealth.Position = UDim2.new(0, 0, 0, -25)
			TxtHealth.Size = UDim2.new(1, 0, 10, 0)
			TxtHealth.Font = "SourceSansBold"
			TxtHealth.TextSize = 13
			TxtHealth.TextStrokeTransparency = 0.5
		else
			local ObjVal = Instance.new("ObjectValue", bb)
			ObjVal.Value = Obj
		end
		
		local PickColor = GetTeamColor(Obj) or Bullshit.Colors.Neutral
		TxtName.TextColor3 = PickColor

		if IsPlr then
			TxtDist.TextColor3 = PickColor
			TxtHealth.TextColor3 = PickColor
		end
	end
end

function UpdateTracer(Plr)
	if Bullshit.TracersEnabled then
		if MyChar then
			local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
			local GetTor = TracerData[Plr.Name]
			if MyTor and GetTor ~= nil and GetTor.Parent ~= nil then
				local Dist = (MyTor.Position - GetTor.Position).magnitude
				if (Dist < Bullshit.TracersLength and not Bullshit.Blacklist[Plr.Name]) and not (MyChar:FindFirstChild("InVehicle") or GetTor.Parent:FindFirstChild("InVehicle")) then
					if not Bullshit.PlaceTracersUnderCharacter then
						local R = MyCam:ScreenPointToRay(MyCam.ViewportSize.X / 2, MyCam.ViewportSize.Y, 0)
						Dist = (R.Origin - (GetTor.Position - Vector3.new(0, 3, 0))).magnitude
						Tracers[Plr.Name].Transparency = 1
						Tracers[Plr.Name].Size = Vector3.new(0.05, 0.05, Dist)
						Tracers[Plr.Name].CFrame = CFrame.new(R.Origin, (GetTor.Position - Vector3.new(0, 4.5, 0))) * CFrame.new(0, 0, -Dist / 2)
						Tracers[Plr.Name].BrickColor = BrickColor.new(GetTeamColor(Plr))
						Tracers[Plr.Name].BoxHandleAdornment.Transparency = 0
						Tracers[Plr.Name].BoxHandleAdornment.Size = Vector3.new(0.001, 0.001, Dist)
						Tracers[Plr.Name].BoxHandleAdornment.Color3 = GetTeamColor(Plr)
					else
						Dist = (MyTor.Position - (GetTor.Position - Vector3.new(0, 3, 0))).magnitude
						Tracers[Plr.Name].Transparency = 1
						Tracers[Plr.Name].Size = Vector3.new(0.3, 0.3, Dist)
						Tracers[Plr.Name].CFrame = CFrame.new(MyTor.Position - Vector3.new(0, 3, 0), (GetTor.Position - Vector3.new(0, 4.5, 0))) * CFrame.new(0, 0, -Dist / 2)
						Tracers[Plr.Name].BrickColor = BrickColor.new(GetTeamColor(Plr))
						Tracers[Plr.Name].BoxHandleAdornment.Transparency = 0
						Tracers[Plr.Name].BoxHandleAdornment.Size = Vector3.new(0.05, 0.05, Dist)
						Tracers[Plr.Name].BoxHandleAdornment.Color3 = GetTeamColor(Plr)
					end
				else
					Tracers[Plr.Name].Transparency = 1
					Tracers[Plr.Name].BoxHandleAdornment.Transparency = 1
				end
			end
		end
	end
end

function RemoveTracers(Plr)
	local Find = Tracers:FindFirstChild(Plr.Name)
	if Find then
		Find:Destroy()
	end
end

function CreateTracers(Plr)
	local Find = Tracers:FindFirstChild(Plr.Name)
	if not Find then
		local P = Instance.new("Part")
		P.Name = Plr.Name
		P.Material = "Neon"
		P.Transparency = 1
		P.Anchored = true
		P.Locked = true
		P.CanCollide = false
		local B = Instance.new("BoxHandleAdornment", P)
		B.Adornee = P
		B.Size = GetSizeOfObject(P)
		B.AlwaysOnTop = true
		B.ZIndex = 5
		B.Transparency = 0
		B.Color3 = GetTeamColor(Plr) or Bullshit.Colors.Neutral
		P.Parent = Tracers

		coroutine.resume(coroutine.create(function()
			while Tracers:FindFirstChild(Plr.Name) do
				UpdateTracer(Plr)
				Run.RenderStepped:wait()
			end
		end))
	end
end

function UpdateChams(Obj)
	if Obj == nil then return end

	if Obj:IsA("Player") then
		local Find = PlayerChams:FindFirstChild(Obj.Name)
		local GetChar = Obj.Character

		local Trans = 0
		if GetChar and MyChar then
			local GetHead = GetChar:FindFirstChild("Head")
			local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
			local MyHead = MyChar:FindFirstChild("Head")
			local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
			if GetHead and GetTor and MyHead and MyTor then
				if (MyTor.Position - GetTor.Position).magnitude > Bullshit.CHAMSLength or Bullshit.Blacklist[Obj.Name] then
					Trans = 1
				else
					--local MyCharStuff = MyChar:GetDescendants()
					local Ray = Ray.new(MyCam.CFrame.p, (GetTor.Position - MyCam.CFrame.p).unit * 2048)
					local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
					if part ~= nil then
						if part:IsDescendantOf(GetChar) then
							Trans = 0.9
						else
							Trans = 0
						end
					end
				end
			end
		end

		if Find then
			for i, v in next, Find:GetChildren() do
				if v.className ~= "ObjectValue" then
					v.Color3 = GetTeamColor(Obj) or Bullshit.Colors.Neutral
					v.Transparency = Trans
				end
			end
		end
	end
end

function RemoveChams(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemChams
		if IsPlr then UseFolder = PlayerChams end

		local FindC = UseFolder:FindFirstChild(tostring(Obj)) or FindCham(Obj)
		if FindC then
			FindC:Destroy()
		end
	end
end

function CreateChams(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemChams
		local Crap = nil
		local GetTor = nil
		local t = tick()
		if IsPlr then
			Obj = Obj.Character
			UseFolder = PlayerChams
		end
		if Obj == nil then return end
		GetTor = Obj:FindFirstChild("HumanoidRootPart") or Obj:WaitForChild("HumanoidRootPart")
		if IsPlr then Crap = Obj:GetChildren() else Crap = Obj:GetDescendants() end

		local FindC = ((IsPlr) and UseFolder:FindFirstChild(Obj.Name)) or FindCham(Obj)
		if not FindC then
			FindC = Instance.new("Folder", UseFolder)
			FindC.Name = Obj.Name
			local ObjVal = Instance.new("ObjectValue", FindC)
			ObjVal.Value = Obj
		end

		for _, P in next, Crap do
			if P:IsA("PVInstance") and P.Name ~= "HumanoidRootPart" then
				local Box = Instance.new("BoxHandleAdornment")
				Box.Size = GetSizeOfObject(P)
				Box.Name = "Cham"
				Box.Adornee = P
				Box.AlwaysOnTop = true
				Box.ZIndex = 5
				Box.Transparency = 0
				Box.Color3 = ((IsPlr) and GetTeamColor(Plrs:GetPlayerFromCharacter(Obj))) or Bullshit.Colors.Neutral
				Box.Parent = FindC
			end
		end
	end
end

function CreateMobESPChams()
	local mobspawn = { }

	for i, v in next, workspace:GetDescendants() do
		local hum = v:FindFirstChildOfClass("Humanoid")
		if hum and not Plrs:GetPlayerFromCharacter(hum.Parent) and FindCham(v) == nil and FindESP(v) == nil then
			mobspawn[tostring(v.Parent)] = v.Parent
			if Bullshit.CHAMSEnabled and Bullshit.MobChams then
				CreateChams(v)
			end
			if Bullshit.ESPEnabled and Bullshit.MobESP then
				CreateESP(v)
			end
		end
	end

	if Bullshit.Mob_ESP_CHAMS_Ran_Once == false then
		for i, v in next, mobspawn do
			v.ChildAdded:connect(function(Obj)
				if Bullshit.MobChams then
					local t = tick()
					local GetHum = Obj:FindFirstChildOfClass("Humanoid")
					if GetHum == nil then
						repeat
							GetHum = Obj:FindFirstChildOfClass("Humanoid")
							wait()
						until GetHum ~= nil or (tick() - t) >= 10
					end
					if GetHum == nil then return end

					CreateChams(Obj)
				end

				if Bullshit.MobESP then
					local t = tick()
					local GetHum = Obj:FindFirstChildOfClass("Humanoid")
					if GetHum == nil then
						repeat
							GetHum = Obj:FindFirstChildOfClass("Humanoid")
							wait()
						until GetHum ~= nil or (tick() - t) >= 10
					end
					if GetHum == nil then return end

					CreateESP(Obj)
				end
			end)
		end

		Bullshit.Mob_ESP_CHAMS_Ran_Once = true
	end
end

function CreateChildAddedEventFor(Obj)
	Obj.ChildAdded:connect(function(Obj2)
		if Bullshit.OutlinesEnabled then
			if Obj2:IsA("BasePart") and not Plrs:GetPlayerFromCharacter(Obj2.Parent) and not Obj2.Parent:IsA("Hat") and not Obj2.Parent:IsA("Accessory") and Obj2.Parent.Name ~= "Tracers" then
				local Data = { }
				Data[2] = Obj2.Transparency
				Obj2.Transparency = 1
				local outline = Instance.new("SelectionBox")
				outline.Name = "Outline"
				outline.Color3 = Color3.new(0, 0, 0)
				outline.SurfaceColor3 = Color3.new(0, 1, 0)
				--outline.SurfaceTransparency = 0.9
				outline.LineThickness = 0.01
				outline.Transparency = 0.5
				outline.Transparency = 0.5
				outline.Adornee = Obj2
				outline.Parent = Obj2
				Data[1] = outline
				rawset(Bullshit.OutlinedParts, Obj2, Data)
			end

			for i, v in next, Obj2:GetDescendants() do
				if v:IsA("BasePart") and not Plrs:GetPlayerFromCharacter(v.Parent) and not v.Parent:IsA("Hat") and not v.Parent:IsA("Accessory") and v.Parent.Name ~= "Tracers" then
					local Data = { }
					Data[2] = v.Transparency
					v.Transparency = 1
					local outline = Instance.new("SelectionBox")
					outline.Name = "Outline"
					outline.Color3 = Color3.new(0, 0, 0)
					outline.SurfaceColor3 = Color3.new(0, 1, 0)
					--outline.SurfaceTransparency = 0.9
					outline.LineThickness = 0.01
					outline.Transparency = 0.5
					outline.Adornee = v
					outline.Parent = v
					Data[1] = outline
					rawset(Bullshit.OutlinedParts, v, Data)
				end
				CreateChildAddedEventFor(v)
			end
		end
		CreateChildAddedEventFor(Obj2)
	end)
end

function LightingHax()
	if Bullshit.OutlinesEnabled then
		Light.TimeOfDay = "00:00:00"
	end

	if Bullshit.FullbrightEnabled then
		Light.Ambient = Color3.new(1, 1, 1)
		Light.ColorShift_Bottom = Color3.new(1, 1, 1)
		Light.ColorShift_Top = Color3.new(1, 1, 1)
	end
end

Plrs.PlayerAdded:connect(function(Plr)
	if Bullshit.CharAddedEvent[Plr.Name] == nil then
		Bullshit.CharAddedEvent[Plr.Name] = Plr.CharacterAdded:connect(function(Char)
			if Bullshit.ESPEnabled then
				RemoveESP(Plr)
				CreateESP(Plr)
			end
			if Bullshit.CHAMSEnabled then
				RemoveChams(Plr)
				CreateChams(Plr)
			end
			if Bullshit.TracersEnabled then
				CreateTracers(Plr)
			end
			repeat wait() until Char:FindFirstChild("HumanoidRootPart")
			TracerMT[Plr.Name] = Char.HumanoidRootPart
		end)
	end
end)

Plrs.PlayerRemoving:connect(function(Plr)
	if Bullshit.CharAddedEvent[Plr.Name] ~= nil then
		Bullshit.CharAddedEvent[Plr.Name]:Disconnect()
		Bullshit.CharAddedEvent[Plr.Name] = nil
	end
	RemoveESP(Plr)
	RemoveChams(Plr)
	RemoveTracers(Plr)
	TracerMT[Plr.Name] = nil
end)

function InitMain()
	-- Objects
	
	local Bullshit20 = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local design = Instance.new("Frame")
	local buttons = Instance.new("Frame")
	local ESPToggle = Instance.new("TextButton")
	local ChamsToggle = Instance.new("TextButton")
	local TracersToggle = Instance.new("TextButton")
	local OutlineToggle = Instance.new("TextButton")
	local DebugToggle = Instance.new("TextButton")
	local FullbrightToggle = Instance.new("TextButton")
	local BlacklistToggle = Instance.new("TextButton")
	local WhitelistToggle = Instance.new("TextButton")
	local Crosshair = Instance.new("TextButton")
	local AimbotToggle = Instance.new("TextButton")
	local Settings = Instance.new("TextButton")
	local Information = Instance.new("TextButton")
	local Information_2 = Instance.new("Frame")
	local Title_2 = Instance.new("TextLabel")
	local design_2 = Instance.new("Frame")
	local buttons_2 = Instance.new("ScrollingFrame")
	local TextLabel = Instance.new("TextLabel")
	local Settings_2 = Instance.new("Frame")
	local Title_3 = Instance.new("TextLabel")
	local design_3 = Instance.new("Frame")
	local buttons_3 = Instance.new("ScrollingFrame")
	local AllyColor = Instance.new("TextBox")
	local CHAMSLength = Instance.new("TextBox")
	local CrosshairColor = Instance.new("TextBox")
	local ESPLength = Instance.new("TextBox")
	local EnemyColor = Instance.new("TextBox")
	local FreeForAll = Instance.new("TextButton")
	local FriendColor = Instance.new("TextBox")
	local NeutralColor = Instance.new("TextBox")
	local TracersLength = Instance.new("TextBox")
	local TracersUnderChars = Instance.new("TextButton")
	local AutoFireToggle = Instance.new("TextButton")
	local AimbotKey = Instance.new("TextButton")
	local MobESPButton = Instance.new("TextButton")
	local MobChamsButton = Instance.new("TextButton")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local TextLabel_4 = Instance.new("TextLabel")
	local TextLabel_5 = Instance.new("TextLabel")
	local TextLabel_6 = Instance.new("TextLabel")
	local TextLabel_7 = Instance.new("TextLabel")
	local TextLabel_8 = Instance.new("TextLabel")
	local TextLabel_9 = Instance.new("TextLabel")
	local TextLabel_10 = Instance.new("TextLabel")
	local TextLabel_11 = Instance.new("TextLabel")
	local TextLabel_12 = Instance.new("TextLabel")
	local TextLabel_13 = Instance.new("TextLabel")
	local TextLabel_14 = Instance.new("TextLabel")
	local TextLabel_15 = Instance.new("TextLabel")
	local SaveSettings = Instance.new("TextButton")
	local Blacklist = Instance.new("Frame")
	local nigga = Instance.new("TextLabel")
	local niggerfaggot = Instance.new("Frame")
	local players = Instance.new("ScrollingFrame")
	local buttonsex = Instance.new("Frame")
	local Playername = Instance.new("TextBox")
	local AddToBlacklist = Instance.new("TextButton")
	local RemoveToBlacklist = Instance.new("TextButton")
	local SaveBlacklist = Instance.new("TextButton")
	local Whitelist = Instance.new("Frame")
	local nigga2 = Instance.new("TextLabel")
	local niggerfaggot2 = Instance.new("Frame")
	local players2 = Instance.new("ScrollingFrame")
	local buttonsex2 = Instance.new("Frame")
	local Playername2 = Instance.new("TextBox")
	local AddToWhitelist = Instance.new("TextButton")
	local RemoveToWhitelist = Instance.new("TextButton")
	local SaveWhitelist = Instance.new("TextButton")
	
	-- Properties
	
	Bullshit20.Name = "Bullshit 3.0"
	Bullshit20.Parent = CoreGui
	Bullshit20.ResetOnSpawn = false
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Bullshit20
	MainFrame.Active = true
	MainFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	MainFrame.BorderSizePixel = 0
	MainFrame.Draggable = true
	MainFrame.Position = UDim2.new(0.200000003, -175, 0.5, -100)
	MainFrame.Size = UDim2.new(0, 350, 0, 315)
	
	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(1, 0, 0, 50)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "Project: Bullshit\nMade 作者:Racist Dolphin#5199 汉化:1972845799\nVersion 3.5.5 (RE-WORK IN THE WORKS)"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 18
	Title.TextTransparency = 0.5
	
	design.Name = "design"
	design.Parent = MainFrame
	design.BackgroundColor3 = Color3.new(1, 1, 1)
	design.BackgroundTransparency = 0.5
	design.BorderSizePixel = 0
	design.Position = UDim2.new(0.0500000007, 0, 0, 50)
	design.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	buttons.Name = "buttons"
	buttons.Parent = MainFrame
	buttons.BackgroundColor3 = Color3.new(1, 1, 1)
	buttons.BackgroundTransparency = 1
	buttons.Position = UDim2.new(0, 20, 0, 70)
	buttons.Size = UDim2.new(1, -40, 1, -80)

	Blacklist.Name = "Blacklist"
	Blacklist.Parent = MainFrame
	Blacklist.Active = true
	Blacklist.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Blacklist.BorderSizePixel = 0
	Blacklist.Position = UDim2.new(1, 3, 0.5, -138)
	Blacklist.Size = UDim2.new(0, 350, 0, 375)
	Blacklist.Visible = false
	
	nigga.Name = "nigga"
	nigga.Parent = Blacklist
	nigga.BackgroundColor3 = Color3.new(1, 1, 1)
	nigga.BackgroundTransparency = 1
	nigga.Size = UDim2.new(1, 0, 0, 50)
	nigga.Font = Enum.Font.SourceSansBold
	nigga.Text = "Blacklist Menu"
	nigga.TextColor3 = Color3.new(1, 1, 1)
	nigga.TextSize = 18
	nigga.TextTransparency = 0.5
	
	niggerfaggot.Name = "niggerfaggot"
	niggerfaggot.Parent = Blacklist
	niggerfaggot.BackgroundColor3 = Color3.new(1, 1, 1)
	niggerfaggot.BackgroundTransparency = 0.5
	niggerfaggot.BorderSizePixel = 0
	niggerfaggot.Position = UDim2.new(0.0500000007, 0, 0, 50)
	niggerfaggot.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	players.Name = "players"
	players.Parent = Blacklist
	players.BackgroundColor3 = Color3.new(1, 1, 1)
	players.BackgroundTransparency = 1
	players.BorderSizePixel = 0
	players.Position = UDim2.new(0, 20, 0, 60)
	players.Size = UDim2.new(1, -40, 1, -175)
	players.CanvasSize = UDim2.new(0, 0, 5, 0)
	players.ScrollBarThickness = 8
	
	buttonsex.Name = "buttonsex"
	buttonsex.Parent = Blacklist
	buttonsex.BackgroundColor3 = Color3.new(1, 1, 1)
	buttonsex.BackgroundTransparency = 1
	buttonsex.Position = UDim2.new(0, 20, 0, 250)
	buttonsex.Size = UDim2.new(1, -40, 0, 100)
	
	Playername.Name = "Playername"
	Playername.Parent = buttonsex
	Playername.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	Playername.BackgroundTransparency = 0.5
	Playername.BorderSizePixel = 0
	Playername.Size = UDim2.new(1, 0, 0, 20)
	Playername.Font = Enum.Font.SourceSansBold
	Playername.Text = "Enter Player Name"
	Playername.TextSize = 14
	Playername.TextWrapped = true
	
	AddToBlacklist.Name = "AddToBlacklist"
	AddToBlacklist.Parent = buttonsex
	AddToBlacklist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AddToBlacklist.BackgroundTransparency = 0.5
	AddToBlacklist.BorderSizePixel = 0
	AddToBlacklist.Position = UDim2.new(0, 0, 0, 30)
	AddToBlacklist.Size = UDim2.new(1, 0, 0, 20)
	AddToBlacklist.Font = Enum.Font.SourceSansBold
	AddToBlacklist.Text = "Add to Blacklist"
	AddToBlacklist.TextSize = 14
	AddToBlacklist.TextWrapped = true
	
	RemoveToBlacklist.Name = "RemoveToBlacklist"
	RemoveToBlacklist.Parent = buttonsex
	RemoveToBlacklist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	RemoveToBlacklist.BackgroundTransparency = 0.5
	RemoveToBlacklist.BorderSizePixel = 0
	RemoveToBlacklist.Position = UDim2.new(0, 0, 0, 60)
	RemoveToBlacklist.Size = UDim2.new(1, 0, 0, 20)
	RemoveToBlacklist.Font = Enum.Font.SourceSansBold
	RemoveToBlacklist.Text = "Remove from Blacklist"
	RemoveToBlacklist.TextSize = 14
	RemoveToBlacklist.TextWrapped = true

	SaveBlacklist.Name = "SaveBlacklist"
	SaveBlacklist.Parent = buttonsex
	SaveBlacklist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	SaveBlacklist.BackgroundTransparency = 0.5
	SaveBlacklist.BorderSizePixel = 0
	SaveBlacklist.Position = UDim2.new(0, 0, 0, 90)
	SaveBlacklist.Size = UDim2.new(1, 0, 0, 20)
	SaveBlacklist.Font = Enum.Font.SourceSansBold
	SaveBlacklist.Text = "Save Blacklist"
	SaveBlacklist.TextSize = 14
	SaveBlacklist.TextWrapped = true

	Whitelist.Name = "Whitelist"
	Whitelist.Parent = MainFrame
	Whitelist.Active = true
	Whitelist.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Whitelist.BorderSizePixel = 0
	Whitelist.Position = UDim2.new(1, 3, 0.5, -138)
	Whitelist.Size = UDim2.new(0, 350, 0, 375)
	Whitelist.Visible = false
	
	nigga2.Name = "nigga2"
	nigga2.Parent = Whitelist
	nigga2.BackgroundColor3 = Color3.new(1, 1, 1)
	nigga2.BackgroundTransparency = 1
	nigga2.Size = UDim2.new(1, 0, 0, 50)
	nigga2.Font = Enum.Font.SourceSansBold
	nigga2.Text = "Friends List Menu"
	nigga2.TextColor3 = Color3.new(1, 1, 1)
	nigga2.TextSize = 18
	nigga2.TextTransparency = 0.5
	
	niggerfaggot2.Name = "niggerfaggot2"
	niggerfaggot2.Parent = Whitelist
	niggerfaggot2.BackgroundColor3 = Color3.new(1, 1, 1)
	niggerfaggot2.BackgroundTransparency = 0.5
	niggerfaggot2.BorderSizePixel = 0
	niggerfaggot2.Position = UDim2.new(0.0500000007, 0, 0, 50)
	niggerfaggot2.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	players2.Name = "players2"
	players2.Parent = Whitelist
	players2.BackgroundColor3 = Color3.new(1, 1, 1)
	players2.BackgroundTransparency = 1
	players2.BorderSizePixel = 0
	players2.Position = UDim2.new(0, 20, 0, 60)
	players2.Size = UDim2.new(1, -40, 1, -175)
	players2.CanvasSize = UDim2.new(0, 0, 5, 0)
	players2.ScrollBarThickness = 8
	
	buttonsex2.Name = "buttonsex2"
	buttonsex2.Parent = Whitelist
	buttonsex2.BackgroundColor3 = Color3.new(1, 1, 1)
	buttonsex2.BackgroundTransparency = 1
	buttonsex2.Position = UDim2.new(0, 20, 0, 250)
	buttonsex2.Size = UDim2.new(1, -40, 0, 100)
	
	Playername2.Name = "Playername2"
	Playername2.Parent = buttonsex2
	Playername2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	Playername2.BackgroundTransparency = 0.5
	Playername2.BorderSizePixel = 0
	Playername2.Size = UDim2.new(1, 0, 0, 20)
	Playername2.Font = Enum.Font.SourceSansBold
	Playername2.Text = "Enter Player Name"
	Playername2.TextSize = 14
	Playername2.TextWrapped = true
	
	AddToWhitelist.Name = "AddToWhitelist"
	AddToWhitelist.Parent = buttonsex2
	AddToWhitelist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AddToWhitelist.BackgroundTransparency = 0.5
	AddToWhitelist.BorderSizePixel = 0
	AddToWhitelist.Position = UDim2.new(0, 0, 0, 30)
	AddToWhitelist.Size = UDim2.new(1, 0, 0, 20)
	AddToWhitelist.Font = Enum.Font.SourceSansBold
	AddToWhitelist.Text = "Add to Friends List"
	AddToWhitelist.TextSize = 14
	AddToWhitelist.TextWrapped = true
	
	RemoveToWhitelist.Name = "RemoveToWhitelist"
	RemoveToWhitelist.Parent = buttonsex2
	RemoveToWhitelist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	RemoveToWhitelist.BackgroundTransparency = 0.5
	RemoveToWhitelist.BorderSizePixel = 0
	RemoveToWhitelist.Position = UDim2.new(0, 0, 0, 60)
	RemoveToWhitelist.Size = UDim2.new(1, 0, 0, 20)
	RemoveToWhitelist.Font = Enum.Font.SourceSansBold
	RemoveToWhitelist.Text = "Remove from Friends List"
	RemoveToWhitelist.TextSize = 14
	RemoveToWhitelist.TextWrapped = true

	SaveWhitelist.Name = "SaveWhitelist"
	SaveWhitelist.Parent = buttonsex2
	SaveWhitelist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	SaveWhitelist.BackgroundTransparency = 0.5
	SaveWhitelist.BorderSizePixel = 0
	SaveWhitelist.Position = UDim2.new(0, 0, 0, 90)
	SaveWhitelist.Size = UDim2.new(1, 0, 0, 20)
	SaveWhitelist.Font = Enum.Font.SourceSansBold
	SaveWhitelist.Text = "Save Friends List"
	SaveWhitelist.TextSize = 14
	SaveWhitelist.TextWrapped = true

	BlacklistToggle.Name = "BlacklistToggle"
	BlacklistToggle.Parent = buttons
	BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	BlacklistToggle.BackgroundTransparency = 0.5
	BlacklistToggle.BorderSizePixel = 0
	BlacklistToggle.Position = UDim2.new(0, 0, 0, 200)
	BlacklistToggle.Size = UDim2.new(0, 150, 0, 30)
	BlacklistToggle.Font = Enum.Font.SourceSansBold
	BlacklistToggle.Text = "Blacklist"
	BlacklistToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	BlacklistToggle.TextSize = 14
	BlacklistToggle.TextWrapped = true

	WhitelistToggle.Name = "WhitelistToggle"
	WhitelistToggle.Parent = buttons
	WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	WhitelistToggle.BackgroundTransparency = 0.5
	WhitelistToggle.BorderSizePixel = 0
	WhitelistToggle.Position = UDim2.new(1, -150, 0, 200)
	WhitelistToggle.Size = UDim2.new(0, 150, 0, 30)
	WhitelistToggle.Font = Enum.Font.SourceSansBold
	WhitelistToggle.Text = "Friends List"
	WhitelistToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	WhitelistToggle.TextSize = 14
	WhitelistToggle.TextWrapped = true
	
	ESPToggle.Name = "ESPToggle"
	ESPToggle.Parent = buttons
	ESPToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	ESPToggle.BackgroundTransparency = 0.5
	ESPToggle.BorderSizePixel = 0
	ESPToggle.Size = UDim2.new(0, 150, 0, 30)
	ESPToggle.Font = Enum.Font.SourceSansBold
	ESPToggle.Text = "玩家数据"
	ESPToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	ESPToggle.TextSize = 14
	ESPToggle.TextWrapped = true
	
	ChamsToggle.Name = "ChamsToggle"
	ChamsToggle.Parent = buttons
	ChamsToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	ChamsToggle.BackgroundTransparency = 0.5
	ChamsToggle.BorderSizePixel = 0
	ChamsToggle.Position = UDim2.new(1, -150, 0, 0)
	ChamsToggle.Size = UDim2.new(0, 150, 0, 30)
	ChamsToggle.Font = Enum.Font.SourceSansBold
	ChamsToggle.Text = "显示模型"
	ChamsToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	ChamsToggle.TextSize = 14
	ChamsToggle.TextWrapped = true
	
	TracersToggle.Name = "TracersToggle"
	TracersToggle.Parent = buttons
	TracersToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	TracersToggle.BackgroundTransparency = 0.5
	TracersToggle.BorderSizePixel = 0
	TracersToggle.Position = UDim2.new(0, 0, 0, 40)
	TracersToggle.Size = UDim2.new(0, 150, 0, 30)
	TracersToggle.Font = Enum.Font.SourceSansBold
	TracersToggle.Text = "射线"
	TracersToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	TracersToggle.TextSize = 14
	TracersToggle.TextWrapped = true
	
	OutlineToggle.Name = "OutlineToggle"
	OutlineToggle.Parent = buttons
	OutlineToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	OutlineToggle.BackgroundTransparency = 0.5
	OutlineToggle.BorderSizePixel = 0
	OutlineToggle.Position = UDim2.new(1, -150, 0, 40)
	OutlineToggle.Size = UDim2.new(0, 150, 0, 30)
	OutlineToggle.Font = Enum.Font.SourceSansBold
	OutlineToggle.Text = "模型线条"
	OutlineToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	OutlineToggle.TextSize = 14
	OutlineToggle.TextWrapped = true
	
	DebugToggle.Name = "DebugToggle"
	DebugToggle.Parent = buttons
	DebugToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	DebugToggle.BackgroundTransparency = 0.5
	DebugToggle.BorderSizePixel = 0
	DebugToggle.Position = UDim2.new(1, -150, 0, 80)
	DebugToggle.Size = UDim2.new(0, 150, 0, 30)
	DebugToggle.Font = Enum.Font.SourceSansBold
	DebugToggle.Text = "Debug数据"
	DebugToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	DebugToggle.TextSize = 14
	DebugToggle.TextWrapped = true
	
	FullbrightToggle.Name = "FullbrightToggle"
	FullbrightToggle.Parent = buttons
	FullbrightToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	FullbrightToggle.BackgroundTransparency = 0.5
	FullbrightToggle.BorderSizePixel = 0
	FullbrightToggle.Position = UDim2.new(0, 0, 0, 80)
	FullbrightToggle.Size = UDim2.new(0, 150, 0, 30)
	FullbrightToggle.Font = Enum.Font.SourceSansBold
	FullbrightToggle.Text = "夜视"
	FullbrightToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	FullbrightToggle.TextSize = 14
	FullbrightToggle.TextWrapped = true
	
	Crosshair.Name = "Crosshair"
	Crosshair.Parent = buttons
	Crosshair.BackgroundColor3 = Color3.new(1, 1, 1)
	Crosshair.BackgroundTransparency = 0.5
	Crosshair.BorderSizePixel = 0
	Crosshair.Position = UDim2.new(0, 0, 0, 120)
	Crosshair.Size = UDim2.new(0, 150, 0, 30)
	Crosshair.Font = Enum.Font.SourceSansBold
	Crosshair.Text = "十字准心"
	Crosshair.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Crosshair.TextSize = 14
	Crosshair.TextWrapped = true
	
	AimbotToggle.Name = "AimbotToggle"
	AimbotToggle.Parent = buttons
	AimbotToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	AimbotToggle.BackgroundTransparency = 0.5
	AimbotToggle.BorderSizePixel = 0
	AimbotToggle.Position = UDim2.new(1, -150, 0, 120)
	AimbotToggle.Size = UDim2.new(0, 150, 0, 30)
	AimbotToggle.Font = Enum.Font.SourceSansBold
	AimbotToggle.Text = "瞄准敌人"
	AimbotToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	AimbotToggle.TextSize = 14
	AimbotToggle.TextWrapped = true
	
	Settings.Name = "Settings"
	Settings.Parent = buttons
	Settings.BackgroundColor3 = Color3.new(1, 1, 1)
	Settings.BackgroundTransparency = 0.5
	Settings.BorderSizePixel = 0
	Settings.Position = UDim2.new(1, -150, 0, 160)
	Settings.Size = UDim2.new(0, 150, 0, 30)
	Settings.Font = Enum.Font.SourceSansBold
	Settings.Text = "设置"
	Settings.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Settings.TextSize = 14
	Settings.TextWrapped = true
	
	Information.Name = "Information"
	Information.Parent = buttons
	Information.BackgroundColor3 = Color3.new(1, 1, 1)
	Information.BackgroundTransparency = 0.5
	Information.BorderSizePixel = 0
	Information.Position = UDim2.new(0, 0, 0, 160)
	Information.Size = UDim2.new(0, 150, 0, 30)
	Information.Font = Enum.Font.SourceSansBold
	Information.Text ="关于脚本"
	Information.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Information.TextSize = 14
	Information.TextWrapped = true
	
	Information_2.Name = "Information"
	Information_2.Parent = MainFrame
	Information_2.Active = true
	Information_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Information_2.BorderSizePixel = 0
	Information_2.Position = UDim2.new(1, 3, 0.5, -138)
	Information_2.Size = UDim2.new(0, 350, 0, 365)
	Information_2.Visible = false
	
	Title_2.Name = "Title"
	Title_2.Parent = Information_2
	Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_2.BackgroundTransparency = 1
	Title_2.Size = UDim2.new(1, 0, 0, 50)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = "Information"
	Title_2.TextColor3 = Color3.new(1, 1, 1)
	Title_2.TextSize = 18
	Title_2.TextTransparency = 0.5
	
	design_2.Name = "design"
	design_2.Parent = Information_2
	design_2.BackgroundColor3 = Color3.new(1, 1, 1)
	design_2.BackgroundTransparency = 0.5
	design_2.BorderSizePixel = 0
	design_2.Position = UDim2.new(0.0500000007, 0, 0, 50)
	design_2.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	buttons_2.Name = "buttons"
	buttons_2.Parent = Information_2
	buttons_2.BackgroundColor3 = Color3.new(1, 1, 1)
	buttons_2.BackgroundTransparency = 1
	buttons_2.BorderSizePixel = 0
	buttons_2.Position = UDim2.new(0, 20, 0, 60)
	buttons_2.Size = UDim2.new(1, -40, 1, -70)
	buttons_2.CanvasSize = UDim2.new(5, 0, 5, 0)
	buttons_2.ScrollBarThickness = 5
	
	TextLabel.Parent = buttons_2
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, -20, 1, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = [[
Scripting by: Racist Dolphin#5199
GUI by: SOMEONE WHO WANTS HIS NAME HIDDEN.

To hide/show the GUI press the "P" key on your keyboard.

NOTICE: Since my string manipulation skills aren't the greatest, changing esp/cham colors might be quite buggy.
NOTICE #2: The blacklist feature will return! I just didn't have enough time to make the gui.
NOTICE #3: Save Settings might still be bugged. Message me if it's fucked up still.

This works on every game, though the Aimbot does NOT! (Doesn't work on: Jailbreak, and Phantom Forces)

FAQ:
1) How do I use the aimbot?
A: Activate it, and hold right-click in-game. The aimbot will lock on to the closest enemy NOT behind a wall. (If said player is behind a wall, it will find the next closest player not behind a wall.)

2) ESP/Chams don't work on the game I play?
A: Some games require me to make patches (ex: Murder Mystery, Murder Mystery X) to request a patch or a game message me on discord.

3) How did I detect when a player is behind a wall?
A: Raycasting the camera to another player.

4) My bullets still miss when using aimbot?!
A: Blame bullet spread, try and control how often you fire. (Murder Mystery 2 = trash) (Why the fuck does a single shot pistol have bullet spread? lol wtf?)

Change Log:
3/10/2018:
+ Fixed more bugs with chams

3/10/2018:
+ Fixed how chams broke when a player respawned.

3/10/2018:
+ Fixed ESP not updating correctly.
+ Fixed Chams not updating correctly. (MAYBE? IDK WHAT IS BREAKING THIS)

3/9/2018:
+ Mob ESP/Chams! (BETA!)

3/8/2018:
+ Fixed the error you get when not entering a valid number for esp/chams/tracer lengths.
+ Fixed lag issues with aimlock.
+ Fixed lag issues with chams.

3/8/2018:
+ Patch for Murder 15
- Temporarily removed auto fire since mouse1click is broken on Synapse :(

3/7/2018:
+ Updated save settings.
+ Can now customize aimlock key.

3/7/2018:
+ Patch for Wild Revolver.
+ Fix for autofire. (Hopefully)

3/6/2018:
- Removed :IsFriendsWith check. (Use Friends List GUI instead)

3/4/2018:
+ Added Friend List Menu
+ Patch for Assassin!

3/4/2018:
+ Fixed crosshair toggle.
+ Aimlock patch for Island Royal.
+ Finally fixed save settings.

3/4/2018:
+ Aimlock fixed for Unit 1968: Vietnam
+ Autofire setting for aimlock
+ Fixed how you sometimes had to double click buttons to activate a option

3/4/2018:
+ Fixed FreeForAll setting bug.
+ Using aimlock on Phantom Forces / Jailbreak will now tell you it will not work.
* Renamed Aimbot back to Aimlock

3/3/2018:
+ Blacklist feature re-added.
+ Aimbot will no longer focus people in the blacklist.
+ Compatible on exploits that have readfile and writefile.

3/3/2018:
+ GUI Overhaul
+ Aimbot now only targets people NOT behind walls
+ Chams now dim when x player is visible on your screen.
+ Chams no longer have the humanoid root part. (Your welcome)
+ Patch for Silent Assassin
+ My discord was deleted, so I'm using pastebin now. (Auto updates :)
]]
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 16
	TextLabel.TextTransparency = 0.5
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	Settings_2.Name = "Settings"
	Settings_2.Parent = MainFrame
	Settings_2.Active = true
	Settings_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Settings_2.BorderSizePixel = 0
	Settings_2.Position = UDim2.new(1, 3, 0.5, -138)
	Settings_2.Size = UDim2.new(0, 350, 0, 365)
	Settings_2.Visible = false
	
	Title_3.Name = "Title"
	Title_3.Parent = Settings_2
	Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_3.BackgroundTransparency = 1
	Title_3.Size = UDim2.new(1, 0, 0, 50)
	Title_3.Font = Enum.Font.SourceSansBold
	Title_3.Text = "Settings Menu"
	Title_3.TextColor3 = Color3.new(1, 1, 1)
	Title_3.TextSize = 18
	Title_3.TextTransparency = 0.5
	
	design_3.Name = "design"
	design_3.Parent = Settings_2
	design_3.BackgroundColor3 = Color3.new(1, 1, 1)
	design_3.BackgroundTransparency = 0.5
	design_3.BorderSizePixel = 0
	design_3.Position = UDim2.new(0.0500000007, 0, 0, 50)
	design_3.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	buttons_3.Name = "buttons"
	buttons_3.Parent = Settings_2
	buttons_3.BackgroundColor3 = Color3.new(1, 1, 1)
	buttons_3.BackgroundTransparency = 1
	buttons_3.BorderSizePixel = 0
	buttons_3.Position = UDim2.new(0, 20, 0, 60)
	buttons_3.Size = UDim2.new(1, -40, 1, -70)
	buttons_3.ScrollBarThickness = 8
	
	AllyColor.Name = "AllyColor"
	AllyColor.Parent = buttons_3
	AllyColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AllyColor.BackgroundTransparency = 0.5
	AllyColor.BorderSizePixel = 0
	AllyColor.Position = UDim2.new(1, -150, 0, 180)
	AllyColor.Size = UDim2.new(0, 135, 0, 20)
	AllyColor.Font = Enum.Font.SourceSansBold
	AllyColor.Text = tostring(Bullshit.Colors.Ally)
	AllyColor.TextSize = 14
	AllyColor.TextWrapped = true
	
	CHAMSLength.Name = "CHAMSLength"
	CHAMSLength.Parent = buttons_3
	CHAMSLength.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	CHAMSLength.BackgroundTransparency = 0.5
	CHAMSLength.BorderSizePixel = 0
	CHAMSLength.Position = UDim2.new(1, -150, 0, 60)
	CHAMSLength.Size = UDim2.new(0, 135, 0, 20)
	CHAMSLength.Font = Enum.Font.SourceSansBold
	CHAMSLength.Text = tostring(Bullshit.CHAMSLength)
	CHAMSLength.TextSize = 14
	CHAMSLength.TextWrapped = true
	
	CrosshairColor.Name = "CrosshairColor"
	CrosshairColor.Parent = buttons_3
	CrosshairColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	CrosshairColor.BackgroundTransparency = 0.5
	CrosshairColor.BorderSizePixel = 0
	CrosshairColor.Position = UDim2.new(1, -150, 0, 270)
	CrosshairColor.Size = UDim2.new(0, 135, 0, 20)
	CrosshairColor.Font = Enum.Font.SourceSansBold
	CrosshairColor.Text = tostring(Bullshit.Colors.Crosshair)
	CrosshairColor.TextSize = 14
	CrosshairColor.TextWrapped = true
	
	ESPLength.Name = "ESPLength"
	ESPLength.Parent = buttons_3
	ESPLength.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	ESPLength.BackgroundTransparency = 0.5
	ESPLength.BorderSizePixel = 0
	ESPLength.Position = UDim2.new(1, -150, 0, 30)
	ESPLength.Size = UDim2.new(0, 135, 0, 20)
	ESPLength.Font = Enum.Font.SourceSansBold
	ESPLength.Text = tostring(Bullshit.ESPLength)
	ESPLength.TextSize = 14
	ESPLength.TextWrapped = true
	
	EnemyColor.Name = "EnemyColor"
	EnemyColor.Parent = buttons_3
	EnemyColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	EnemyColor.BackgroundTransparency = 0.5
	EnemyColor.BorderSizePixel = 0
	EnemyColor.Position = UDim2.new(1, -150, 0, 150)
	EnemyColor.Size = UDim2.new(0, 135, 0, 20)
	EnemyColor.Font = Enum.Font.SourceSansBold
	EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
	EnemyColor.TextSize = 14
	EnemyColor.TextWrapped = true
	
	FreeForAll.Name = "FreeForAll"
	FreeForAll.Parent = buttons_3
	FreeForAll.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	FreeForAll.BackgroundTransparency = 0.5
	FreeForAll.BorderSizePixel = 0
	FreeForAll.Position = UDim2.new(1, -150, 0, 120)
	FreeForAll.Size = UDim2.new(0, 135, 0, 20)
	FreeForAll.Font = Enum.Font.SourceSansBold
	FreeForAll.Text = tostring(Bullshit.FreeForAll)
	FreeForAll.TextSize = 14
	FreeForAll.TextWrapped = true
	
	FriendColor.Name = "FriendColor"
	FriendColor.Parent = buttons_3
	FriendColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	FriendColor.BackgroundTransparency = 0.5
	FriendColor.BorderSizePixel = 0
	FriendColor.Position = UDim2.new(1, -150, 0, 210)
	FriendColor.Size = UDim2.new(0, 135, 0, 20)
	FriendColor.Font = Enum.Font.SourceSansBold
	FriendColor.Text = tostring(Bullshit.Colors.Friend)
	FriendColor.TextSize = 14
	FriendColor.TextWrapped = true
	
	NeutralColor.Name = "NeutralColor"
	NeutralColor.Parent = buttons_3
	NeutralColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	NeutralColor.BackgroundTransparency = 0.5
	NeutralColor.BorderSizePixel = 0
	NeutralColor.Position = UDim2.new(1, -150, 0, 240)
	NeutralColor.Size = UDim2.new(0, 135, 0, 20)
	NeutralColor.Font = Enum.Font.SourceSansBold
	NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
	NeutralColor.TextSize = 14
	NeutralColor.TextWrapped = true
	
	TracersLength.Name = "TracersLength"
	TracersLength.Parent = buttons_3
	TracersLength.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	TracersLength.BackgroundTransparency = 0.5
	TracersLength.BorderSizePixel = 0
	TracersLength.Position = UDim2.new(1, -150, 0, 0)
	TracersLength.Size = UDim2.new(0, 135, 0, 20)
	TracersLength.Font = Enum.Font.SourceSansBold
	TracersLength.Text = tostring(Bullshit.TracersLength)
	TracersLength.TextSize = 14
	TracersLength.TextWrapped = true
	
	TracersUnderChars.Name = "TracersUnderChars"
	TracersUnderChars.Parent = buttons_3
	TracersUnderChars.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	TracersUnderChars.BackgroundTransparency = 0.5
	TracersUnderChars.BorderSizePixel = 0
	TracersUnderChars.Position = UDim2.new(1, -150, 0, 90)
	TracersUnderChars.Size = UDim2.new(0, 135, 0, 20)
	TracersUnderChars.Font = Enum.Font.SourceSansBold
	TracersUnderChars.Text = tostring(Bullshit.PlaceTracersUnderCharacter)
	TracersUnderChars.TextSize = 14
	TracersUnderChars.TextWrapped = true

	AutoFireToggle.Name = "AutoFireToggle"
	AutoFireToggle.Parent = buttons_3
	AutoFireToggle.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AutoFireToggle.BackgroundTransparency = 0.5
	AutoFireToggle.BorderSizePixel = 0
	AutoFireToggle.Position = UDim2.new(1, -150, 0, 300)
	AutoFireToggle.Size = UDim2.new(0, 135, 0, 20)
	AutoFireToggle.Font = Enum.Font.SourceSansBold
	AutoFireToggle.Text = tostring(Bullshit.AutoFire)
	AutoFireToggle.TextSize = 14
	AutoFireToggle.TextWrapped = true

	AimbotKey.Name = "AimbotKey"
	AimbotKey.Parent = buttons_3
	AimbotKey.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AimbotKey.BackgroundTransparency = 0.5
	AimbotKey.BorderSizePixel = 0
	AimbotKey.Position = UDim2.new(1, -150, 0, 330)
	AimbotKey.Size = UDim2.new(0, 135, 0, 20)
	AimbotKey.Font = Enum.Font.SourceSansBold
	AimbotKey.Text = tostring(Bullshit.AimbotKey)
	AimbotKey.TextSize = 14
	AimbotKey.TextWrapped = true

	MobESPButton.Name = "MobESPButton"
	MobESPButton.Parent = buttons_3
	MobESPButton.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	MobESPButton.BackgroundTransparency = 0.5
	MobESPButton.BorderSizePixel = 0
	MobESPButton.Position = UDim2.new(1, -150, 0, 360)
	MobESPButton.Size = UDim2.new(0, 135, 0, 20)
	MobESPButton.Font = Enum.Font.SourceSansBold
	MobESPButton.Text = tostring(Bullshit.MobESP)
	MobESPButton.TextSize = 14
	MobESPButton.TextWrapped = true

	MobChamsButton.Name = "MobChamsButton"
	MobChamsButton.Parent = buttons_3
	MobChamsButton.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	MobChamsButton.BackgroundTransparency = 0.5
	MobChamsButton.BorderSizePixel = 0
	MobChamsButton.Position = UDim2.new(1, -150, 0, 390)
	MobChamsButton.Size = UDim2.new(0, 135, 0, 20)
	MobChamsButton.Font = Enum.Font.SourceSansBold
	MobChamsButton.Text = tostring(Bullshit.MobChams)
	MobChamsButton.TextSize = 14
	MobChamsButton.TextWrapped = true
	
	TextLabel_2.Parent = buttons_3
	TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_2.Font = Enum.Font.SourceSansBold
	TextLabel_2.Text = "Tracers Length"
	TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_2.TextSize = 16
	TextLabel_2.TextTransparency = 0.5
	
	TextLabel_3.Parent = buttons_3
	TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_3.BackgroundTransparency = 1
	TextLabel_3.Position = UDim2.new(0, 0, 0, 30)
	TextLabel_3.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_3.Font = Enum.Font.SourceSansBold
	TextLabel_3.Text = "ESP Length"
	TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_3.TextSize = 16
	TextLabel_3.TextTransparency = 0.5
	
	TextLabel_4.Parent = buttons_3
	TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_4.BackgroundTransparency = 1
	TextLabel_4.Position = UDim2.new(0, 0, 0, 60)
	TextLabel_4.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_4.Font = Enum.Font.SourceSansBold
	TextLabel_4.Text = "Chams Length"
	TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_4.TextSize = 16
	TextLabel_4.TextTransparency = 0.5
	
	TextLabel_5.Parent = buttons_3
	TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_5.BackgroundTransparency = 1
	TextLabel_5.Position = UDim2.new(0, 0, 0, 90)
	TextLabel_5.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_5.Font = Enum.Font.SourceSansBold
	TextLabel_5.Text = "Tracers Under Chars"
	TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_5.TextSize = 16
	TextLabel_5.TextTransparency = 0.5
	
	TextLabel_6.Parent = buttons_3
	TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_6.BackgroundTransparency = 1
	TextLabel_6.Position = UDim2.new(0, 0, 0, 270)
	TextLabel_6.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_6.Font = Enum.Font.SourceSansBold
	TextLabel_6.Text = "Crosshair Color"
	TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_6.TextSize = 16
	TextLabel_6.TextTransparency = 0.5
	
	TextLabel_7.Parent = buttons_3
	TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_7.BackgroundTransparency = 1
	TextLabel_7.Position = UDim2.new(0, 0, 0, 120)
	TextLabel_7.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_7.Font = Enum.Font.SourceSansBold
	TextLabel_7.Text = "Free For All"
	TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_7.TextSize = 16
	TextLabel_7.TextTransparency = 0.5
	
	TextLabel_8.Parent = buttons_3
	TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_8.BackgroundTransparency = 1
	TextLabel_8.Position = UDim2.new(0, 0, 0, 240)
	TextLabel_8.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_8.Font = Enum.Font.SourceSansBold
	TextLabel_8.Text = "Neutral Color"
	TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_8.TextSize = 16
	TextLabel_8.TextTransparency = 0.5
	
	TextLabel_9.Parent = buttons_3
	TextLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_9.BackgroundTransparency = 1
	TextLabel_9.Position = UDim2.new(0, 0, 0, 150)
	TextLabel_9.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_9.Font = Enum.Font.SourceSansBold
	TextLabel_9.Text = "Enemy Color"
	TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_9.TextSize = 16
	TextLabel_9.TextTransparency = 0.5
	
	TextLabel_10.Parent = buttons_3
	TextLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_10.BackgroundTransparency = 1
	TextLabel_10.Position = UDim2.new(0, 0, 0, 180)
	TextLabel_10.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_10.Font = Enum.Font.SourceSansBold
	TextLabel_10.Text = "Ally Color"
	TextLabel_10.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_10.TextSize = 16
	TextLabel_10.TextTransparency = 0.5
	
	TextLabel_11.Parent = buttons_3
	TextLabel_11.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_11.BackgroundTransparency = 1
	TextLabel_11.Position = UDim2.new(0, 0, 0, 210)
	TextLabel_11.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_11.Font = Enum.Font.SourceSansBold
	TextLabel_11.Text = "Friend Color"
	TextLabel_11.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_11.TextSize = 16
	TextLabel_11.TextTransparency = 0.5

	TextLabel_12.Parent = buttons_3
	TextLabel_12.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_12.BackgroundTransparency = 1
	TextLabel_12.Position = UDim2.new(0, 0, 0, 300)
	TextLabel_12.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_12.Font = Enum.Font.SourceSansBold
	TextLabel_12.Text = "Aimlock Auto Fire"
	TextLabel_12.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_12.TextSize = 16
	TextLabel_12.TextTransparency = 0.5

	TextLabel_13.Parent = buttons_3
	TextLabel_13.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_13.BackgroundTransparency = 1
	TextLabel_13.Position = UDim2.new(0, 0, 0, 330)
	TextLabel_13.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_13.Font = Enum.Font.SourceSansBold
	TextLabel_13.Text = "Aimbot Key"
	TextLabel_13.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_13.TextSize = 16
	TextLabel_13.TextTransparency = 0.5

	TextLabel_14.Parent = buttons_3
	TextLabel_14.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_14.BackgroundTransparency = 1
	TextLabel_14.Position = UDim2.new(0, 0, 0, 360)
	TextLabel_14.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_14.Font = Enum.Font.SourceSansBold
	TextLabel_14.Text = "Mob ESP"
	TextLabel_14.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_14.TextSize = 16
	TextLabel_14.TextTransparency = 0.5

	TextLabel_15.Parent = buttons_3
	TextLabel_15.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_15.BackgroundTransparency = 1
	TextLabel_15.Position = UDim2.new(0, 0, 0, 390)
	TextLabel_15.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_15.Font = Enum.Font.SourceSansBold
	TextLabel_15.Text = "Mob CHAMS"
	TextLabel_15.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_15.TextSize = 16
	TextLabel_15.TextTransparency = 0.5
	
	SaveSettings.Name = "SaveSettings"
	SaveSettings.Parent = buttons_3
	SaveSettings.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	SaveSettings.BackgroundTransparency = 0.5
	SaveSettings.BorderSizePixel = 0
	SaveSettings.Position = UDim2.new(0, 0, 0, 420)
	SaveSettings.Size = UDim2.new(1, -15, 0, 20)
	SaveSettings.Font = Enum.Font.SourceSansBold
	SaveSettings.Text = "Save Settings"
	SaveSettings.TextSize = 14
	SaveSettings.TextWrapped = true

	function CreatePlayerLabel(Str, frame)
		local n = #frame:GetChildren()
		local playername = Instance.new("TextLabel")
		playername.Name = Str
		playername.Parent = frame
		playername.BackgroundColor3 = Color3.new(1, 1, 1)
		playername.BackgroundTransparency = 1
		playername.BorderSizePixel = 0
		playername.Position = UDim2.new(0, 5, 0, (n * 15))
		playername.Size = UDim2.new(1, -25, 0, 15)
		playername.Font = Enum.Font.SourceSans
		playername.Text = Str
		playername.TextColor3 = Color3.new(1, 1, 1)
		playername.TextSize = 16
		playername.TextXAlignment = Enum.TextXAlignment.Left
	end

	function RefreshPlayerLabels(frame, t)
		frame:ClearAllChildren()
		for i, v in next, t do
			CreatePlayerLabel(i, frame)
		end
	end

	RefreshPlayerLabels(players, Bullshit.Blacklist)
	RefreshPlayerLabels(players2, Bullshit.FriendList)
	
	ESPToggle.MouseButton1Click:connect(function()
		Bullshit.ESPEnabled = not Bullshit.ESPEnabled
		if Bullshit.ESPEnabled then
			ESPToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, Plrs:GetPlayers() do
				if v ~= MyPlr then
					if Bullshit.CharAddedEvent[v.Name] == nil then
						Bullshit.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
							if Bullshit.ESPEnabled then
								RemoveESP(v)
								CreateESP(v)
							end
							if Bullshit.CHAMSEnabled then
								RemoveChams(v)
								CreateChams(v)
							end
							if Bullshit.TracersEnabled then
								RemoveTracers(v)
								CreateTracers(v)
							end
							repeat wait() until Char:FindFirstChild("HumanoidRootPart")
							TracerMT[v.Name] = Char.HumanoidRootPart
						end)
					end
					RemoveESP(v)
					CreateESP(v)
				end
			end
			CreateMobESPChams()
		else
			ESPToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			PlayerESP:ClearAllChildren()
			ItemESP:ClearAllChildren()
		end
	end)
	
	ChamsToggle.MouseButton1Click:connect(function()
		Bullshit.CHAMSEnabled = not Bullshit.CHAMSEnabled
		if Bullshit.CHAMSEnabled then
			ChamsToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, Plrs:GetPlayers() do
				if v ~= MyPlr then
					if Bullshit.CharAddedEvent[v.Name] == nil then
						Bullshit.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
							if Bullshit.ESPEnabled then
								RemoveESP(v)
								CreateESP(v)
							end
							if Bullshit.CHAMSEnabled then
								RemoveChams(v)
								CreateChams(v)
							end
							if Bullshit.TracersEnabled then
								RemoveTracers(v)
								CreateTracers(v)
							end
							repeat wait() until Char:FindFirstChild("HumanoidRootPart")
							TracerMT[v.Name] = Char.HumanoidRootPart
						end)
					end
					RemoveChams(v)
					CreateChams(v)
				end
			end
			CreateMobESPChams()
		else
			ChamsToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			PlayerChams:ClearAllChildren()
			ItemChams:ClearAllChildren()
		end
	end)
	
	TracersToggle.MouseButton1Click:connect(function()
		Bullshit.TracersEnabled = not Bullshit.TracersEnabled
		if Bullshit.TracersEnabled then
			TracersToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, Plrs:GetPlayers() do
				if v ~= MyPlr then
					if Bullshit.CharAddedEvent[v.Name] == nil then
						Bullshit.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
							if Bullshit.ESPEnabled then
								RemoveESP(v)
								CreateESP(v)
							end
							if Bullshit.CHAMSEnabled then
								RemoveChams(v)
								CreateChams(v)
							end
							if Bullshit.TracersEnabled then
								RemoveTracers(v)
								CreateTracers(v)
							end
						end)
					end
					if v.Character ~= nil then
						local Tor = v.Character:FindFirstChild("HumanoidRootPart")
						if Tor then
							TracerMT[v.Name] = Tor
						end
					end
					RemoveTracers(v)
					CreateTracers(v)
				end
			end
		else
			TracersToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			for _, v in next, Plrs:GetPlayers() do
				RemoveTracers(v)
			end
		end
	end)

	DebugToggle.MouseButton1Click:connect(function()
		Bullshit.DebugInfo = not Bullshit.DebugInfo
		DebugMenu["Main"].Visible = Bullshit.DebugInfo
		if Bullshit.DebugInfo then
			DebugToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			DebugToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	OutlineToggle.MouseButton1Click:connect(function()
		Bullshit.OutlinesEnabled = not Bullshit.OutlinesEnabled
		if Bullshit.OutlinesEnabled then
			OutlineToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, workspace:GetDescendants() do
				if v:IsA("BasePart") and not Plrs:GetPlayerFromCharacter(v.Parent) and not v.Parent:IsA("Hat") and not v.Parent:IsA("Accessory") and v.Parent.Name ~= "Tracers" then
					local Data = { }
					Data[2] = v.Transparency
					v.Transparency = 1
					local outline = Instance.new("SelectionBox")
					outline.Name = "Outline"
					outline.Color3 = Color3.new(0, 0, 0)
					outline.SurfaceColor3 = Color3.new(0, 1, 0)
					--outline.SurfaceTransparency = 0.9
					outline.LineThickness = 0.01
					outline.Transparency = 0.3
					outline.Adornee = v
					outline.Parent = v
					Data[1] = outline
					rawset(Bullshit.OutlinedParts, v, Data)
				end
				CreateChildAddedEventFor(v)
			end
			CreateChildAddedEventFor(workspace)
			if Bullshit.LightingEvent == nil then
				Bullshit.LightingEvent = game:GetService("Lighting").Changed:connect(LightingHax)
			end
		else
			OutlineToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			for i, v in next, Bullshit.OutlinedParts do
				i.Transparency = v[2]
				v[1]:Destroy()
			end
		end
	end)

	FullbrightToggle.MouseButton1Click:connect(function()
		Bullshit.FullbrightEnabled = not Bullshit.FullbrightEnabled
		if Bullshit.FullbrightEnabled then
			FullbrightToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			if Bullshit.LightingEvent == nil then
				Bullshit.LightingEvent = Light.Changed:connect(LightingHax)
			end
		else
			FullbrightToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			Light.Ambient = Bullshit.AmbientBackup
			Light.ColorShift_Bottom = Bullshit.ColorShiftBotBackup
			Light.ColorShift_Top = Bullshit.ColorShiftTopBackup
		end
	end)

	Crosshair.MouseButton1Click:connect(function()
		Bullshit.CrosshairEnabled = not Bullshit.CrosshairEnabled
		if Bullshit.CrosshairEnabled then
			local g = Instance.new("ScreenGui", CoreGui)
			g.Name = "Corsshair"
			local line1 = Instance.new("TextLabel", g)
			line1.Text = ""
			line1.Size = UDim2.new(0, 35, 0, 1)
			line1.BackgroundColor3 = Bullshit.Colors.Crosshair
			line1.BorderSizePixel = 0
			line1.ZIndex = 10
			local line2 = Instance.new("TextLabel", g)
			line2.Text = ""
			line2.Size = UDim2.new(0, 1, 0, 35)
			line2.BackgroundColor3 = Bullshit.Colors.Crosshair
			line2.BorderSizePixel = 0
			line2.ZIndex = 10

            local viewport = MyCam.ViewportSize
            local centerx = viewport.X / 2
            local centery = viewport.Y / 2

            line1.Position = UDim2.new(0, centerx - (35 / 2), 0, centery - 35)
            line2.Position = UDim2.new(0, centerx, 0, centery - (35 / 2) - 35)

			Crosshair.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			local find = CoreGui:FindFirstChild("Corsshair")
			if find then
				find:Destroy()
			end

			Crosshairs.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	AimbotToggle.MouseButton1Click:connect(function()
		if not (game.PlaceId == 292439477 or game.PlaceId == 606849621) then
			Bullshit.AimbotEnabled = not Bullshit.AimbotEnabled
			if Bullshit.AimbotEnabled then
				AimbotToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			else
				AimbotToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			end
		else
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "This game prevents camera manipulation!"
			wait(5)
			hint:Destroy()
		end
	end)

	TracersUnderChars.MouseButton1Click:connect(function()
		Bullshit.PlaceTracersUnderCharacter = not Bullshit.PlaceTracersUnderCharacter
		if Bullshit.PlaceTracersUnderCharacter then
			TracersUnderChars.Text = "true"
		else
			TracersUnderChars.Text = "false"
		end
	end)

	FreeForAll.MouseButton1Click:connect(function()
		Bullshit.FreeForAll = not Bullshit.FreeForAll
		if Bullshit.FreeForAll then
			FreeForAll.Text = "true"
		else
			FreeForAll.Text = "false"
		end
	end)

	ESPLength.FocusLost:connect(function()
		local txt = ESPLength.Text
		local num = tonumber(txt) or 10000
		if num ~= nil then
			if num < 100 then
				num = 100
				ESPLength.Text = num
			elseif num > 10000 then
				num = 10000
				ESPLength.Text = num
			end
		end

		Bullshit.ESPLength = num
		ESPLength.Text = num
	end)

	CHAMSLength.FocusLost:connect(function()
		local txt = CHAMSLength.Text
		local num = tonumber(txt) or 500
		if num ~= nil then
			if num < 100 then
				num = 100
				CHAMSLength.Text = num
			elseif num > 2048 then
				num = 2048
				CHAMSLength.Text = num
			end
		end

		Bullshit.CHAMSLength = num
		CHAMSLength.Text = num
	end)

	TracersLength.FocusLost:connect(function()
		local txt = TracersLength.Text
		local num = tonumber(txt) or 500
		if num ~= nil then
			if num < 100 then
				num = 100
				TracersLength.Text = num
			elseif num > 2048 then
				num = 2048
				TracersLength.Text = num
			end
		end

		Bullshit.TracersLength = num
		TracersLength.Text = num
	end)

	EnemyColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(EnemyColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Enemy = Color3.new(R, G, B)
				EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
			else
				EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
			end
		else
			EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
		end
	end)

	AllyColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(AllyColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				AllyColor.Text = tostring(Bullshit.Colors.Ally)
			else
				AllyColor.Text = tostring(Bullshit.Colors.Ally)
			end
		else
			AllyColor.Text = tostring(Bullshit.Colors.Ally)
		end
	end)

	FriendColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(FriendColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				FriendColor.Text = tostring(Bullshit.Colors.Friend)
			else
				FriendColor.Text = tostring(Bullshit.Colors.Friend)
			end
		else
			FriendColor.Text = tostring(Bullshit.Colors.Friend)
		end
	end)

	NeutralColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(NeutralColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
			else
				NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
			end
		else
			NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
		end
	end)

	CrosshairColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(CrosshairColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				EnemyColor.Text = tostring(Bullshit.Colors.Crosshair)
			else
				EnemyColor.Text = tostring(Bullshit.Colors.Crosshair)
			end
		else
			EnemyColor.Text = tostring(Bullshit.Colors.Crosshair)
		end
	end)

	AutoFireToggle.MouseButton1Click:connect(function()
		local hint = Instance.new("Hint", CoreGui)
		hint.Text = "Currently broken. :("
		wait(3)
		hint:Destroy()
		--Bullshit.AutoFire = not Bullshit.AutoFire
		--AutoFireToggle.Text = tostring(Bullshit.AutoFire)
	end)

	AimbotKey.MouseButton1Click:connect(function()
		AimbotKey.Text = "Press any Key now."
		local input = UserInput.InputBegan:wait()
		if input.UserInputType == Enum.UserInputType.Keyboard then
			Bullshit.AimbotKey = tostring(input.KeyCode)
			AimbotKey.Text = string.sub(tostring(input.KeyCode), 14)
		else
			Bullshit.AimbotKey = tostring(input.UserInputType)
			AimbotKey.Text = string.sub(tostring(input.UserInputType), 20)
		end
	end)

	MobESPButton.MouseButton1Click:connect(function()
		Bullshit.MobESP = not Bullshit.MobESP
		MobESPButton.Text = tostring(Bullshit.MobESP)
		if Bullshit.MobESP then
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "Turn ESP/Chams off and on again to see mob ESP."
			wait(5)
			hint.Text = "This is still in beta, expect problems! Message Racist Dolphin#5199 on discord if you encounter a bug!"
			wait(10)
			hint:Destroy()
		end
	end)

	MobChamsButton.MouseButton1Click:connect(function()
		Bullshit.MobChams = not Bullshit.MobChams
		MobChamsButton.Text = tostring(Bullshit.MobChams)
		if Bullshit.MobChams then
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "Turn ESP/Chams off and on again to see mob chams."
			wait(5)
			hint.Text = "This is still in beta, expect problems! Message Racist Dolphin#5199 on discord if you encounter a bug!"
			wait(10)
			hint:Destroy()
		end
	end)

	Playername.FocusLost:connect(function()
		local FindPlr = FindPlayer(Playername.Text)
		if FindPlr then
			Playername.Text = FindPlr.Name
		elseif not Bullshit.Blacklist[Playername.Text] then
			Playername.Text = "Player not Found!"
			wait(1)
			Playername.Text = "Enter Player Name"
		end
	end)

	AddToBlacklist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername.Text)
		if FindPlr then
			if not Bullshit.Blacklist[FindPlr.Name] then
				Bullshit.Blacklist[FindPlr.Name] = true
				UpdateChams(FindPlr)
				CreatePlayerLabel(FindPlr.Name, players)
			end
		end
	end)

	RemoveToBlacklist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername.Text)
		if FindPlr then
			if Bullshit.Blacklist[FindPlr.Name] then
				Bullshit.Blacklist[FindPlr.Name] = nil
				UpdateChams(FindPlr)
				RefreshPlayerLabels(players, Bullshit.Blacklist)
			end
		else
			if Bullshit.Blacklist[Playername.Text] then
				Bullshit.Blacklist[Playername.Text] = nil
				RefreshPlayerLabels(players, Bullshit.Blacklist)
			end
		end
	end)

	Playername2.FocusLost:connect(function()
		local FindPlr = FindPlayer(Playername2.Text)
		if FindPlr then
			Playername2.Text = FindPlr.Name
		elseif not Bullshit.FriendList[Playername2.Text] then
			Playername2.Text = "Player not Found!"
			wait(1)
			Playername2.Text = "Enter Player Name"
		end
	end)

	AddToWhitelist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername2.Text)
		if FindPlr then
			if not Bullshit.FriendList[FindPlr.Name] then
				Bullshit.FriendList[FindPlr.Name] = true
				UpdateChams(FindPlr)
				CreatePlayerLabel(FindPlr.Name, players2)
			end
		end
	end)

	RemoveToWhitelist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername2.Text)
		if FindPlr then
			if Bullshit.FriendList[FindPlr.Name] then
				Bullshit.FriendList[FindPlr.Name] = nil
				UpdateChams(FindPlr)
				RefreshPlayerLabels(players2, Bullshit.FriendList)
			end
		else
			if Bullshit.FriendList[Playername2.Text] then
				Bullshit.FriendList[Playername2.Text] = nil
				RefreshPlayerLabels(players2, Bullshit.FriendList)
			end
		end
	end)

	SaveWhitelist.MouseButton1Click:connect(function()
		pcall(function()
			writefile("Whitelist.txt", HTTP:JSONEncode(Bullshit.FriendList))
		end)
		SaveWhitelist.Text = "Saved!"
		wait(1)
		SaveWhitelist.Text = "Save Friends List"
	end)

	SaveBlacklist.MouseButton1Click:connect(function()
		pcall(function()
			writefile("Blacklist.txt", HTTP:JSONEncode(Bullshit.Blacklist))
		end)
		SaveBlacklist.Text = "Saved!"
		wait(1)
		SaveBlacklist.Text = "Save Blacklist"
	end)

	Settings.MouseButton1Click:connect(function()
		Settings_2.Visible = not Settings_2.Visible
		Information_2.Visible = false
		Blacklist.Visible = false
		Whitelist.Visible = false
		if Settings_2.Visible then
			Settings.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	Information.MouseButton1Click:connect(function()
		Information_2.Visible = not Information_2.Visible
		Settings_2.Visible = false
		Blacklist.Visible = false
		Whitelist.Visible = false
		if Information_2.Visible then
			Information.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	BlacklistToggle.MouseButton1Click:connect(function()
		Blacklist.Visible = not Blacklist.Visible
		Settings_2.Visible = false
		Information_2.Visible = false
		Whitelist.Visible = false
		if Blacklist.Visible then
			BlacklistToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	WhitelistToggle.MouseButton1Click:connect(function()
		Whitelist.Visible = not Whitelist.Visible
		Settings_2.Visible = false
		Information_2.Visible = false
		Blacklist.Visible = false
		if Whitelist.Visible then
			WhitelistToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	SaveSettings.MouseButton1Click:connect(function()
		SaveBullshitSettings()
		SaveSettings.Text = "Saved!"
		wait(1)
		SaveSettings.Text = "Save Settings"
	end)

	UserInput.InputBegan:connect(function(input, ingui)
		if not ingui then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.P then
					MainFrame.Visible = not MainFrame.Visible
				end
			end

			if tostring(input.KeyCode) == Bullshit.AimbotKey or tostring(input.UserInputType) == Bullshit.AimbotKey then
				Bullshit.Aimbot = true
			end
		end
	end)

	UserInput.InputEnded:connect(function(input)
		if tostring(input.KeyCode) == Bullshit.AimbotKey or tostring(input.UserInputType) == Bullshit.AimbotKey then
			Bullshit.Aimbot = false
		end
	end)
end

InitMain()

Run:BindToRenderStep("UpdateESP", Enum.RenderPriority.Character.Value, function()
	for _, v in next, Plrs:GetPlayers() do
		if v ~= MyPlr then
			UpdateESP(v)
		end
	end
end)

Run:BindToRenderStep("UpdateInfo", 1000, function()
	Bullshit.ClosestEnemy = GetClosestPlayer()
	MyChar = MyPlr.Character
	if Bullshit.DebugInfo then
		local MyHead, MyTor, MyHum = MyChar:FindFirstChild("Head"), MyChar:FindFirstChild("HumanoidRootPart"), MyChar:FindFirstChild("Humanoid")

		local GetChar, GetHead, GetTor, GetHum = nil, nil, nil, nil
		if Bullshit.ClosestEnemy ~= nil then
			GetChar = Bullshit.ClosestEnemy.Character
			GetHead = GetChar:FindFirstChild("Head")
			GetTor = GetChar:FindFirstChild("HumanoidRootPart")
			GetHum = GetChar:FindFirstChild("Humanoid")

			DebugMenu["PlayerSelected"].Text = "Closest Enemy: " .. tostring(Bullshit.ClosestEnemy)

			if Bullshit.ClosestEnemy.Team ~= nil then
				DebugMenu["PlayerTeam"].Text = "Team: " .. tostring(Bullshit.ClosestEnemy.Team)
			else
				DebugMenu["PlayerTeam"].Text = "Team: nil"
			end

			if GetHum then
				DebugMenu["PlayerHealth"].Text = "Health: " .. string.format("%.0f", GetHum.Health)
			end
			if MyTor and GetTor then
				local Pos = GetTor.Position
				local Dist = (MyTor.Position - Pos).magnitude
				DebugMenu["PlayerPosition"].Text = "Position: (X: " .. string.format("%.3f", Pos.X) .. " Y: " .. string.format("%.3f", Pos.Y) .. " Z: " .. string.format("%.3f", Pos.Z) .. ") Distance: " .. string.format("%.0f", Dist) .. " Studs"

				local MyCharStuff = MyChar:GetDescendants()
				local GetCharStuff = GetChar:GetDescendants()
				for _, v in next, GetCharStuff do
					if v ~= GetTor then
						table.insert(MyCharStuff, v)
					end
				end
				local Ray = Ray.new(MyTor.Position, (Pos - MyTor.Position).unit * 300)
				local part = workspace:FindPartOnRayWithIgnoreList(Ray, MyCharStuff)
				if part == GetTor then
					DebugMenu["BehindWall"].Text = "Behind Wall: false"
				else
					DebugMenu["BehindWall"].Text = "Behind Wall: true"
				end

				DebugMenu["Main"].Size = UDim2.new(0, DebugMenu["PlayerPosition"].TextBounds.X, 0, 200)
			end
		end

		-- My Position
		if MyTor then
			local Pos = MyTor.Position
			DebugMenu["Position"].Text = "My Position: (X: " .. string.format("%.3f", Pos.x) .. " Y: " .. string.format("%.3f", Pos.Y) .. " Z: " .. string.format("%.3f", Pos.Z) .. ")"
		end

		-- FPS
		local fps = math.floor(.5 + (1 / (tick() - LastTick)))
		local sum = 0
		local ave = 0
		table.insert(Bullshit.FPSAverage, fps)
		for i = 1, #Bullshit.FPSAverage do
			sum = sum + Bullshit.FPSAverage[i]
		end
		DebugMenu["FPS"].Text = "FPS: " .. tostring(fps) .. " Average: " .. string.format("%.0f", (sum / #Bullshit.FPSAverage))
		if (tick() - LastTick) >= 15 then
			Bullshit.FPSAverage = { }
			LastTick = tick()
		end
		LastTick = tick()
	end
end)

Run:BindToRenderStep("Aimbot", Enum.RenderPriority.First.Value, function()
	ClosestEnemy = GetClosestPlayerNotBehindWall()
	if Bullshit.AimbotEnabled and Bullshit.Aimbot then
		if ClosestEnemy ~= nil then
			local GetChar = ClosestEnemy.Character
			if MyChar and GetChar then
				local MyCharStuff = MyChar:GetDescendants()
				local MyHead = MyChar:FindFirstChild("Head")
				local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
				local MyHum = MyChar:FindFirstChild("Humanoid")
				local GetHead = GetChar:FindFirstChild("Head")
				local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
				local GetHum = GetChar:FindFirstChild("Humanoid")
				if MyHead and MyTor and MyHum and GetHead and GetTor and GetHum then
					if MyHum.Health > 1 and (GetHum.Health > 1 and not GetChar:FindFirstChild("KO")) then
						MyPlr.CameraMode = Enum.CameraMode.LockFirstPerson
						MyCam.CFrame = CFrame.new(MyHead.CFrame.p, GetHead.CFrame.p)
						if Bullshit.AutoFire then
							mouse1click() -- >:(
						end
					end
				end
			end
		end
	else
		MyPlr.CameraMode = Bullshit.CameraModeBackup
	end
end)

local succ, out = coroutine.resume(coroutine.create(function()
	while true do
		for _, v in next, Plrs:GetPlayers() do
			UpdateChams(v)
			Run.RenderStepped:wait()
		end
	end
end))

if not succ then
	error(out)
end
       -- The function that takes place when the button is pressed
   end,
})
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("自瞄")
local Button = Tab:CreateButton({
   Name = "自瞄",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastefy.app/ZYMlyhhz/raw",false))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "自瞄高级版",
   Callback = function()
	local PLAYER = game.Players.LocalPlayer
local CurrentCam  = game.Workspace.CurrentCamera
local UIS = game:GetService("UserInputService")-- Made By Mick Gordon
local WorldToViewportPoint = CurrentCam.WorldToViewportPoint
local mouseLocation = UIS.GetMouseLocation

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Made By Mick Gordon", Text = "Enjoy !"})

local DeleteMob ={
	Aimbot= {
		Enabled = false;
		TeamCheck = false;-- Made By Mick Gordon
		WallCheck = false;

		ShowFov = false;
		Fov = 0;

		Smoothing = 0;

		AimPart = "Head";
		-- Made By Mick Gordon
		Keybind = "MouseButton2";


		Thickness = 1;

		FovFillColor = Color3.fromRGB(100,0,100);
		FovColor = Color3.fromRGB(100,0,100);

		FovFillTransparency = 1;
		FovTransparenct = 0;
	};
	ESP ={
		Box = {
			Box = false;-- Made By Mick Gordon
			Name = false;
			Distance = false;
			Health = false;

			TeamCheck = false;

			HealthType = "Bar";

			BoxColor = Color3.fromRGB(75,0,10);
		};
		OutLines = {
			Enabled = false;
			TeamCheck = false;
			TeamColor = false;

			AllwaysShow = true;

			FillCollor = Color3.fromRGB(75,0,10);
			FillTrancparenct = 0;

			OutlineColor = Color3.fromRGB(0,0,0);
			OutlineTrancparency = 0;
		};
		Tracers = {
			Enabled = false;
			TeamCheck = false;
			TeamColor = false;

			Color = Color3.fromRGB(75,0,10);
		}
	}-- Made By Mick Gordon
}

-- Made By Mick Gordon
local Fov = Instance.new("ScreenGui")Fov.Name = "Fov" Fov.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Fov.ZIndexBehavior = Enum.ZIndexBehavior.Sibling Fov.ResetOnSpawn = false-- i miss you synapse fov
local TracersG = Instance.new("ScreenGui")TracersG.Name = "Tracers" TracersG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") TracersG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling TracersG.ResetOnSpawn = false
local FOVFFrame = Instance.new("Frame")FOVFFrame.Parent = Fov FOVFFrame.Name = "FOVFFrame" FOVFFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) FOVFFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) FOVFFrame.BorderSizePixel = 0 FOVFFrame.BackgroundTransparency = 1 FOVFFrame.AnchorPoint = Vector2.new(0.5, 0.5) FOVFFrame.Position = UDim2.new(0.5, 0,0.5, 0) FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov, 0, DeleteMob.Aimbot.Fov) FOVFFrame.BackgroundTransparency = 1 
local UICorner = Instance.new("UICorner")UICorner.CornerRadius = UDim.new(1, 0) UICorner.Parent = FOVFFrame -- Made By Mick Gordon
local UIStroke = Instance.new("UIStroke")UIStroke.Color = Color3.fromRGB(100,0,100) UIStroke.Parent = FOVFFrame UIStroke.Thickness = 1 UIStroke.ApplyStrokeMode = "Border" game:GetService("StarterGui"):SetCore("SendNotification", {Title = "https://discord.gg/FsApQ7YNTq", Text = "The Discord For More!"})
local BoxC = Instance.new("ScreenGui", game.Workspace) BoxC.Name = "Box"
local Higlight = Instance.new("ScreenGui",game.Workspace)
local connections = {}
-- Made By Mick Gordon
local function AddHighlight(plr)
	local Highlight = Instance.new("Highlight")
	Highlight.Parent = Higlight
	Highlight.Name = plr.Name
	Highlight.Enabled = DeleteMob.ESP.OutLines.Enabled
	local plrchar = plr.Character
	if plrchar then
		Highlight.Adornee = plrchar
	end
	connections[plr] = plr.CharacterAdded:Connect(function(char)
		Highlight.Adornee = char
	end)
	local co = coroutine.create(function()
		while wait(.1) do
			if plr ~= PLAYER and plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then

				if DeleteMob.ESP.OutLines.Enabled == true then
					if DeleteMob.ESP.OutLines.TeamCheck == true and plr.TeamColor == PLAYER.TeamColor then
						Highlight.Enabled = false
					else
						Highlight.Enabled = true
					end
				else-- Made By Mick Gordon
					Highlight.Enabled = false
				end

				if DeleteMob.ESP.OutLines.TeamColor == true then
					Highlight.FillColor = plr.TeamColor.Color 
				else
					Highlight.FillColor = DeleteMob.ESP.OutLines.FillCollor
				end

				if DeleteMob.ESP.OutLines.AllwaysShow == true then
					Highlight.DepthMode = "AlwaysOnTop" 
				else
					Highlight.DepthMode = "Occluded" 
				end-- Made By Mick Gordon

				Highlight.OutlineTransparency = DeleteMob.ESP.OutLines.OutlineTrancparency
				Highlight.OutlineColor = DeleteMob.ESP.OutLines.OutlineColor
				Highlight.FillTransparency = DeleteMob.ESP.OutLines.FillTrancparenct

				if not (game:GetService"Players":FindFirstChild(plr.Name)) then
					Higlight:FindFirstChild(plr.Name):Destroy()
					coroutine.yield()
				end
			else
				Highlight.Enabled = false
			end
		end
	end)
	coroutine.resume(co)
end
-- Made By Mick Gordon
local function AddBox(player)
	local bbg = Instance.new("BillboardGui", BoxC)
	bbg.Name = player.Name
	bbg.AlwaysOnTop = true
	bbg.Size = UDim2.new(4,0,5.4,0)
	bbg.ClipsDescendants = false
	bbg.Enabled = false

	local outlines = Instance.new("Frame", bbg)
	outlines.Size = UDim2.new(1,0,1,0)
	outlines.BorderSizePixel = 1
	outlines.BackgroundTransparency = 1
	local left = Instance.new("Frame", outlines)
	left.BorderSizePixel = 1
	left.Size = UDim2.new(0,(1),1,0)
	local right = left:Clone()
	right.Parent = outlines
	right.Size = UDim2.new(0,-(1),1,0)   
	right.Position = UDim2.new(1,0,0,0)
	local up = left:Clone()-- Made By Mick Gordon
	up.Parent = outlines
	up.Size = UDim2.new(1,0,0,(1))
	local down = left:Clone()
	down.Parent = outlines
	down.Size = UDim2.new(1,0,0,-(1))
	down.Position = UDim2.new(0,0,1,0)

	local info = Instance.new("BillboardGui", bbg)
	info.Name = "info"
	info.Size = UDim2.new(3,0,0,54)
	info.StudsOffset = Vector3.new(3.6,-3,0)
	info.AlwaysOnTop = true
	info.ClipsDescendants = false
	info.Enabled = false
	local namelabel = Instance.new("TextLabel", info)
	namelabel.Name = "namelabel"
	namelabel.BackgroundTransparency = 1
	namelabel.TextStrokeTransparency = 0
	namelabel.TextXAlignment = Enum.TextXAlignment.Left
	namelabel.Size = UDim2.new(0,100,0,18)
	namelabel.Position = UDim2.new(0,0,0,0)
	namelabel.Text = player.Name
	local distancel = Instance.new("TextLabel", info)
	distancel.Name = "distancelabel"
	distancel.BackgroundTransparency = 1-- Made By Mick Gordon
	distancel.TextStrokeTransparency = 0
	distancel.TextXAlignment = Enum.TextXAlignment.Left
	distancel.Size = UDim2.new(0,100,0,18)
	distancel.Position = UDim2.new(0,0,0,18)
	local healthl = Instance.new("TextLabel", info)
	healthl.Name = "healthlabel"
	healthl.BackgroundTransparency = 1
	healthl.TextStrokeTransparency = 0
	healthl.TextXAlignment = Enum.TextXAlignment.Left
	healthl.Size = UDim2.new(0,100,0,18)
	healthl.Position = UDim2.new(0,0,0,36)

	local uill = Instance.new("UIListLayout", info)

	local forhealth = Instance.new("BillboardGui", bbg)
	forhealth.Name = "forhealth"
	forhealth.Size = UDim2.new(4.5,0,6,0)
	forhealth.AlwaysOnTop = true
	forhealth.ClipsDescendants = false
	forhealth.Enabled = false

	local healthbar = Instance.new("Frame", forhealth)
	healthbar.Name = "healthbar"
	healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
	healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
	healthbar.Size = UDim2.new(0.04,0,0.9,0)
	healthbar.Position = UDim2.new(0,0,0.05,0)
	local bar = Instance.new("Frame", healthbar)
	bar.Name = "bar"
	bar.BorderSizePixel = 0
	bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
	bar.AnchorPoint = Vector2.new(0,1)
	bar.Position = UDim2.new(0,0,1,0)
	bar.Size = UDim2.new(1,0,1,0)

	-- Made By Mick Gordon
	local co = coroutine.create(function()
		while wait(0.1) do
			if player ~= PLAYER and player and player.Character and player.Character.FindFirstChild(player.Character, "Humanoid") and player.Character.Humanoid.Health > 0 then
				bbg.Adornee = player.Character.HumanoidRootPart
				info.Adornee = player.Character.HumanoidRootPart
				forhealth.Adornee = player.Character.HumanoidRootPart

				if DeleteMob.ESP.Box.Box == true then
					outlines.Visible = true
				else
					outlines.Visible = false
				end

				outlines.BackgroundTransparency = 1

				if DeleteMob.ESP.Box.Health == true then
					if player.Character:FindFirstChild("Humanoid") ~= nil then
						healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
						healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
					end
					if DeleteMob.ESP.Box.HealthType == "Text" then
						healthbar.Visible = false
						healthl.Visible = true
					end-- Made By Mick Gordon
					if DeleteMob.ESP.Box.HealthType == "Bar" then
						healthl.Visible = false
						healthbar.Visible = true
					end
					if DeleteMob.ESP.Box.HealthType == "Both" then
						healthl.Visible = true
						healthbar.Visible = true
					end
				else
					healthl.Visible = false
					healthbar.Visible = false
				end


				if DeleteMob.ESP.Box.Name then
					namelabel.Visible = true
				else
					namelabel.Visible = false
				end

				-- Made By Mick Gordon
				if DeleteMob.ESP.Box.Distance == true then
					distancel.Visible = true
					if PLAYER.Character and PLAYER.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						distancel.Text = "Distance: "..math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
					end
				else
					distancel.Visible = false
				end


				if DeleteMob.ESP.Box.TeamCheck == true and player.TeamColor == PLAYER.TeamColor then
					bbg.Enabled = false
					info.Enabled = false
					forhealth.Enabled = false
				else
					bbg.Enabled = true
					info.Enabled = true
					forhealth.Enabled = true
				end
				-- Made By Mick Gordon

				if DeleteMob.ESP.Box.TeamColor == true then
					left.BackgroundColor3 = player.TeamColor.Color
					right.BackgroundColor3 = player.TeamColor.Color
					up.BackgroundColor3 = player.TeamColor.Color
					down.BackgroundColor3 = player.TeamColor.Color
					outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
				else
					outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					left.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					right.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					up.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					down.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					healthl.TextColor3 = DeleteMob.ESP.Box.BoxColor
					distancel.TextColor3 = DeleteMob.ESP.Box.BoxColor
					namelabel.TextColor3 = DeleteMob.ESP.Box.BoxColor
				end

				if not (game:GetService"Players":FindFirstChild(player.Name)) then
					BoxC:FindFirstChild(player.Name):Destroy()
					coroutine.yield()
				end-- Made By Mick Gordon
			else
				bbg.Enabled = false
				bbg.Adornee = nil
				info.Adornee = nil
				info.Enabled = false
				forhealth.Adornee = nil
				forhealth.Enabled = false
			end
		end 
	end)
	coroutine.resume(co)
end


local function AddTracers(Player) -- Tracers Without Lib OMG !!!!, Needs Some Adjustments To The End Pos
	local tracer = Instance.new("Frame")
	tracer.Parent = TracersG
	tracer.Name = Player.Name
	tracer.Active = false
	tracer.AnchorPoint = Vector2.new(.5, .5)
	tracer.Visible = false

	local co = coroutine.create(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if Player ~= PLAYER and Player and Player.Character and Player.Character.FindFirstChild(Player.Character, "Humanoid") and Player.Character.Humanoid.Health > 0 then
				local TargetPart = Player.Character:FindFirstChild("HumanoidRootPart")
				local ScreenPoint, OnScreen = CurrentCam:WorldToScreenPoint(TargetPart.Position)
				local distance 
				-- Made By Mick Gordon
				distance = math.floor(0.5+(game.Workspace.CurrentCamera.CFrame.Position - Player.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

				local screenpointmain = Vector2.new(ScreenPoint.X, ScreenPoint.Y + (2500 / distance)) --  / distance so it can be at the bottom of the box.
				local posd = UIS:GetMouseLocation()
				local MouseOrigin = Vector2.new(posd.X, posd.Y - 36)
				local Origin = Vector2.new(CurrentCam.ViewportSize.X/2, CurrentCam.ViewportSize.Y - 1)
				local Position = (Origin + screenpointmain) / 2
				local Length = (Origin - screenpointmain).Magnitude
				tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))


				Position = (Origin + screenpointmain) / 2
				Length = (Origin - screenpointmain).Magnitude
				tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))


				if OnScreen then
					if DeleteMob.ESP.Tracers.Enabled == true and OnScreen then
						if DeleteMob.ESP.Tracers.TeamCheck == true then
							if Player.TeamColor == PLAYER.TeamColor then
								tracer.Visible = false
							else
								tracer.Visible = true
							end
						else -- Made By Mick Gordon
							tracer.Visible = true
						end
					else
						tracer.Visible = false
					end-- Made By Mick Gordon

					if DeleteMob.ESP.Tracers.TeamColor == true then
						tracer.BackgroundColor3 = Player.TeamColor.Color
					else
						tracer.BackgroundColor3 = DeleteMob.ESP.Tracers.Color
					end

					tracer.BorderColor3 = Color3.fromRGB(27, 42, 53)
					tracer.Position = UDim2.new(0, Position.X, 0, Position.Y)
					tracer.Size = UDim2.new(0, Length, 0, 2)
				else
					tracer.Visible = false
				end

				if not (game:GetService"Players":FindFirstChild(Player.Name)) then
					Fov:FindFirstChild(Player.Name):Destroy()
					coroutine.yield()
				end
			else
				tracer.Visible = false
			end
		end)
	end)
	coroutine.resume(co)-- Made By Mick Gordon
end

function isVisible(p, ...)
	
	if not (DeleteMob.Aimbot.WallCheck == true) then
		return true
	end
	
	return #CurrentCam:GetPartsObscuringTarget({ p }, { CurrentCam, PLAYER.Character, ... }) == 0 
end-- Made By Mick Gordon

function CameraGetClosestToMouse(Fov)
	local AimFov = Fov
	local targetPos = nil

	for i,v in pairs (game:GetService("Players"):GetPlayers()) do
		if v ~= PLAYER then
			if DeleteMob.Aimbot.TeamCheck == true then
				if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and not (v.Team == PLAYER.Team) then
					local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
					local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
						AimFov = new_magnitude
						targetPos = v-- Made By Mick Gordon
					end
				end-- Made By Mick Gordon
			else
				if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 then
					local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
					local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
						AimFov = new_magnitude
						targetPos = v
					end
				end
			end
		end
	end
	return targetPos
end


local function aimAt(pos, smooth)
	local AimPart = pos.Character:FindFirstChild(DeleteMob.Aimbot.AimPart)
	if AimPart then
		local LookAt = nil
		local Distance = math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - pos.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
		if Distance > 100  then
			local distChangeBig = Distance / 10
			LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeBig)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		else-- Made By Mick Gordon
			local distChangeSmall = Distance / 10
			LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeSmall)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		end
		CurrentCam.CFrame = CFrame.lookAt(CurrentCam.CFrame.Position, LookAt)
	end
end

-- Cant Be Botherd To Clean This Up
local CheatEngineDeleteMob = Instance.new("ScreenGui")
local DeleteMobF = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local Name = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local AimBotSection = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local ABE = Instance.new("TextButton")
local ABWC = Instance.new("TextButton")
local ABTC = Instance.new("TextButton")
local ABSF = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local Slider3 = Instance.new("Frame")-- Made By Mick Gordon
local UICorner = Instance.new("UICorner")
local Fill1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TriggerFov = Instance.new("TextButton")
local Numbers = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local Slider4 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Fill2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local TriggerSmoothing = Instance.new("TextButton")-- Made By Mick Gordon
local Numbers_2 = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Allways_Show = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local ESPSection = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local BBE = Instance.new("TextButton")
local BTC = Instance.new("TextButton")
local BBN = Instance.new("TextButton")
local BBD = Instance.new("TextButton")
local BBH = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local BBHT = Instance.new("TextButton")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Box_R = Instance.new("TextBox")
local Box_G = Instance.new("TextBox")
local Box_B = Instance.new("TextBox")
local TextLabel_8 = Instance.new("TextLabel")
local ESPSection_2 = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local OE = Instance.new("TextButton")
local OTC = Instance.new("TextButton")-- Made By Mick Gordon
local Frame_4 = Instance.new("Frame")
local Slider1 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Fill3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local TriggerOutTans = Instance.new("TextButton")
local Numbers_3 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local Frame_5 = Instance.new("Frame")
local Slider2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Fill4 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local UIGradient_4 = Instance.new("UIGradient")
local TriggerFill = Instance.new("TextButton")
local Numbers_4 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local Frame_6 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local Outlines_R = Instance.new("TextBox")
local Outlines_G = Instance.new("TextBox")
local Outlines_B = Instance.new("TextBox")
local TextLabel_12 = Instance.new("TextLabel")
local Frame_7 = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local FillOutlines_R = Instance.new("TextBox")
local FillOutlines_G = Instance.new("TextBox")
local FillOutlines_B = Instance.new("TextBox")
local Tracerssection = Instance.new("Frame")
local UIListLayout_7 = Instance.new("UIListLayout")
local TE = Instance.new("TextButton")
local TTC = Instance.new("TextButton")
local TTCOlor = Instance.new("TextButton")
local Frame_8 = Instance.new("Frame")
local UIListLayout_8 = Instance.new("UIListLayout")
local Tracers_R = Instance.new("TextBox")
local Tracers_G = Instance.new("TextBox")
local Tracers_B = Instance.new("TextBox")-- Made By Mick Gordon
local Unknown = Instance.new("Frame")
local UIListLayout_9 = Instance.new("UIListLayout")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local Open = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

CheatEngineDeleteMob.Name = "CheatEngineDeleteMob"
CheatEngineDeleteMob.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CheatEngineDeleteMob.Enabled = true
CheatEngineDeleteMob.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CheatEngineDeleteMob.DisplayOrder = 10
CheatEngineDeleteMob.ResetOnSpawn = false
-- Made By Mick Gordon
DeleteMobF.Name = "DeleteMobF"
DeleteMobF.Parent = CheatEngineDeleteMob
DeleteMobF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
DeleteMobF.BorderColor3 = Color3.fromRGB(255, 255, 255)
DeleteMobF.Position = UDim2.new(0.144998878, 0, 0.328040659, 0)
DeleteMobF.Size = UDim2.new(0, 1213, 0, 398)
DeleteMobF.ZIndex = 10
DeleteMobF.Draggable = true
DeleteMobF.Active = true

TextBox.Parent = DeleteMobF
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.791149139, 0, 0.0127403988, 0)
TextBox.Size = UDim2.new(0, 200, 0, 23)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Roboto
TextBox.PlaceholderText = "https://discord.gg/FsApQ7YNTq"
TextBox.Text = "https://discord.gg/FsApQ7YNTq - Double Click Me"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

Name.Name = "Name"
Name.Parent = DeleteMobF
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.0178597774, 0, 0.00456260797, 0)
Name.Size = UDim2.new(0, 200, 0, 31)
Name.Font = Enum.Font.Gotham
Name.Text = "DeleteMob | Cheat Engine"
Name.TextColor3 = Color3.fromRGB(17, 223, 255)
Name.TextSize = 19.000

Line.Name = "Line"
Line.Parent = DeleteMobF
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.0804020092, 0)
Line.Size = UDim2.new(0, 1213, 0, 1)

Line_2.Name = "Line"
Line_2.Parent = DeleteMobF
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(0.205276027, 0, 0.0828348249, 0)
Line_2.Size = UDim2.new(0, 1, 0, 365)
-- Made By Mick Gordon
AimBotSection.Name = "AimBotSection"
AimBotSection.Parent = DeleteMobF
AimBotSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimBotSection.BackgroundTransparency = 1.000
AimBotSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimBotSection.BorderSizePixel = 0
AimBotSection.Position = UDim2.new(0.0604648069, 0, 0.160724282, 0)
AimBotSection.Size = UDim2.new(0, 100, 0, 334)

UIListLayout.Parent = AimBotSection
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

ABE.Name = "ABE"
ABE.Parent = AimBotSection
ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABE.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABE.Size = UDim2.new(0, 164, 0, 29)
ABE.Font = Enum.Font.Gotham
ABE.Text = "Enable"
ABE.TextColor3 = Color3.fromRGB(255, 255, 255)
ABE.TextSize = 16.000

ABWC.Name = "ABWC"
ABWC.Parent = AimBotSection
ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABWC.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABWC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABWC.Size = UDim2.new(0, 164, 0, 29)
ABWC.Font = Enum.Font.Gotham
ABWC.Text = "Wall Check"
ABWC.TextColor3 = Color3.fromRGB(255, 255, 255)
ABWC.TextSize = 16.000

ABTC.Name = "ABTC"
ABTC.Parent = AimBotSection
ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABTC.Size = UDim2.new(0, 164, 0, 29)
ABTC.Font = Enum.Font.Gotham
ABTC.Text = "Team Check"
ABTC.TextColor3 = Color3.fromRGB(255, 255, 255)
ABTC.TextSize = 16.000

ABSF.Name = "ABSF"
ABSF.Parent = AimBotSection
ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABSF.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABSF.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABSF.Size = UDim2.new(0, 164, 0, 29)
ABSF.Font = Enum.Font.Gotham
ABSF.Text = "Show Fov"
ABSF.TextColor3 = Color3.fromRGB(255, 255, 255)
ABSF.TextSize = 16.000

Frame.Parent = AimBotSection
Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame.BackgroundTransparency = 0.700
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame.Size = UDim2.new(0, 230, 0, 50)

Slider3.Name = "Slider3"
Slider3.Parent = Frame
Slider3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider3.BorderSizePixel = 0
Slider3.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider3.Size = UDim2.new(0, 200, 0, 15)

UICorner.Parent = Slider3

Fill1.Name = "Fill1"
Fill1.Parent = Slider3
Fill1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill1.BackgroundTransparency = 0.200
Fill1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill1.BorderSizePixel = 0
Fill1.Size = UDim2.new(0, 100, 0, 15)

UICorner_2.Parent = Fill1

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient.Parent = Fill1
-- Made By Mick Gordon
TriggerFov.Name = "TriggerFov"
TriggerFov.Parent = Slider3
TriggerFov.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerFov.BackgroundTransparency = 1.000
TriggerFov.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerFov.BorderSizePixel = 0
TriggerFov.Size = UDim2.new(1, 0, 1, 0)
TriggerFov.Font = Enum.Font.SourceSans
TriggerFov.Text = ""
TriggerFov.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerFov.TextSize = 14.000

Numbers.Name = "Numbers"
Numbers.Parent = Frame
Numbers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers.BackgroundTransparency = 1.000
Numbers.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers.BorderSizePixel = 0
Numbers.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers.Size = UDim2.new(0, 50, 0, 23)
Numbers.Font = Enum.Font.Gotham
Numbers.Text = "350"
Numbers.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0608695634, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 50, 0, 23)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Fov"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Frame_2.Parent = AimBotSection
Frame_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_2.BackgroundTransparency = 0.700
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame_2.Size = UDim2.new(0, 230, 0, 50)

Slider4.Name = "Slider4"
Slider4.Parent = Frame_2
Slider4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider4.BorderSizePixel = 0
Slider4.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider4.Size = UDim2.new(0, 200, 0, 15)

UICorner_3.Parent = Slider4

Fill2.Name = "Fill2"
Fill2.Parent = Slider4
Fill2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill2.BackgroundTransparency = 0.200
Fill2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill2.BorderSizePixel = 0
Fill2.Size = UDim2.new(0, 0, 0, 15)

UICorner_4.Parent = Fill2

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}-- Made By Mick Gordon
UIGradient_2.Parent = Fill2

TriggerSmoothing.Name = "TriggerSmoothing"
TriggerSmoothing.Parent = Slider4
TriggerSmoothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerSmoothing.BackgroundTransparency = 1.000
TriggerSmoothing.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerSmoothing.BorderSizePixel = 0
TriggerSmoothing.Size = UDim2.new(1, 0, 1, 0)
TriggerSmoothing.Font = Enum.Font.SourceSans
TriggerSmoothing.Text = ""
TriggerSmoothing.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerSmoothing.TextSize = 14.000
-- Made By Mick Gordon
Numbers_2.Name = "Numbers"
Numbers_2.Parent = Frame_2
Numbers_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_2.BackgroundTransparency = 1.000
Numbers_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers_2.BorderSizePixel = 0
Numbers_2.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers_2.Size = UDim2.new(0, 50, 0, 23)
Numbers_2.Font = Enum.Font.Gotham
Numbers_2.Text = "0"
Numbers_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers_2.TextSize = 14.000

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0608695634, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 50, 0, 23)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = "Smoothing"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextLabel_3.Parent = AimBotSection
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_3.Size = UDim2.new(0, 100, 0, 17)
TextLabel_3.Font = Enum.Font.Gotham
TextLabel_3.Text = "Aim Part"
TextLabel_3.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_3.TextSize = 21.000

Allways_Show.Name = "Allways_Show"
Allways_Show.Parent = AimBotSection
Allways_Show.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Allways_Show.BorderColor3 = Color3.fromRGB(255, 255, 255)
Allways_Show.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
Allways_Show.Size = UDim2.new(0, 164, 0, 29)
Allways_Show.Font = Enum.Font.Gotham
Allways_Show.Text = "HEAD, torso"
Allways_Show.TextColor3 = Color3.fromRGB(255, 255, 255)
Allways_Show.TextSize = 16.000

TextLabel_4.Parent = DeleteMobF
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.00569662312, 0, 0.100655407, 0)
TextLabel_4.Size = UDim2.new(0, 100, 0, 17)
TextLabel_4.Font = Enum.Font.Gotham
TextLabel_4.Text = "Aim Bot"
TextLabel_4.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_4.TextSize = 18.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

ESPSection.Name = "ESPSection"
ESPSection.Parent = DeleteMobF
ESPSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPSection.BackgroundTransparency = 1.000
ESPSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPSection.BorderSizePixel = 0
ESPSection.Position = UDim2.new(0.26986298, 0, 0.160724282, 0)
ESPSection.Size = UDim2.new(0, 100, 0, 334)
-- Made By Mick Gordon
UIListLayout_2.Parent = ESPSection
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

BBE.Name = "BBE"
BBE.Parent = ESPSection
BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBE.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBE.Size = UDim2.new(0, 164, 0, 29)
BBE.Font = Enum.Font.Gotham
BBE.Text = "Box"
BBE.TextColor3 = Color3.fromRGB(255, 255, 255)
BBE.TextSize = 16.000

BBN.Name = "BBN"
BBN.Parent = ESPSection
BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBN.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBN.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBN.Size = UDim2.new(0, 164, 0, 29)
BBN.Font = Enum.Font.Gotham
BBN.Text = "Name"
BBN.TextColor3 = Color3.fromRGB(255, 255, 255)
BBN.TextSize = 16.000
-- Made By Mick Gordon
BBD.Name = "BBD"
BBD.Parent = ESPSection
BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBD.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBD.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBD.Size = UDim2.new(0, 164, 0, 29)
BBD.Font = Enum.Font.Gotham
BBD.Text = "Distance"
BBD.TextColor3 = Color3.fromRGB(255, 255, 255)
BBD.TextSize = 16.000

BBH.Name = "BBH"
BBH.Parent = ESPSection
BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBH.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBH.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBH.Size = UDim2.new(0, 164, 0, 29)
BBH.Font = Enum.Font.Gotham
BBH.Text = "Health"
BBH.TextColor3 = Color3.fromRGB(255, 255, 255)
BBH.TextSize = 16.000

BTC.Name = "BBE"
BTC.Parent = ESPSection
BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
BTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BTC.Size = UDim2.new(0, 164, 0, 29)
BTC.Font = Enum.Font.Gotham
BTC.Text = "Team Check"
BTC.TextColor3 = Color3.fromRGB(255, 255, 255)
BTC.TextSize = 16.000

TextLabel_5.Parent = ESPSection
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_5.Size = UDim2.new(0, 100, 0, 17)
TextLabel_5.Font = Enum.Font.Gotham
TextLabel_5.Text = "Health Type"
TextLabel_5.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_5.TextSize = 21.000
-- Made By Mick Gordon
BBHT.Name = "BBHT"
BBHT.Parent = ESPSection
BBHT.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBHT.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBHT.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBHT.Size = UDim2.new(0, 164, 0, 29)
BBHT.Font = Enum.Font.Gotham
BBHT.Text = "BAR, text, both"
BBHT.TextColor3 = Color3.fromRGB(255, 255, 255)
BBHT.TextSize = 16.000

TextLabel_6.Parent = ESPSection
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0-- Made By Mick Gordon
TextLabel_6.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_6.Size = UDim2.new(0, 100, 0, 17)
TextLabel_6.Font = Enum.Font.Gotham
TextLabel_6.Text = "Box Color"
TextLabel_6.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_6.TextSize = 21.000

TextLabel_7.Parent = ESPSection
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_7.Size = UDim2.new(0, 100, 0, 17)
TextLabel_7.Font = Enum.Font.Gotham
TextLabel_7.Text = "R,G,B"
TextLabel_7.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_7.TextSize = 21.000

Frame_3.Parent = ESPSection
Frame_3.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_3.Size = UDim2.new(0, 100, 0, 30)

UIListLayout_3.Parent = Frame_3
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 5)

Box_R.Name = "Box_R"
Box_R.Parent = Frame_3
Box_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Box_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
Box_R.Size = UDim2.new(0, 75, 0, 24)
Box_R.ClearTextOnFocus = false
Box_R.Font = Enum.Font.Gotham
Box_R.PlaceholderText = "255 - 0"
Box_R.Text = "75"
Box_R.TextColor3 = Color3.fromRGB(255, 255, 255)
Box_R.TextSize = 14.000

Box_G.Name = "Box_G"
Box_G.Parent = Frame_3
Box_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Box_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
Box_G.Size = UDim2.new(0, 75, 0, 24)
Box_G.ClearTextOnFocus = false
Box_G.Font = Enum.Font.Gotham
Box_G.PlaceholderText = "255 - 0"
Box_G.Text = "0" 
Box_G.TextColor3 = Color3.fromRGB(255, 255, 255)
Box_G.TextSize = 14.000
-- Made By Mick Gordon
Box_B.Name = "Box_B"
Box_B.Parent = Frame_3
Box_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Box_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
Box_B.Size = UDim2.new(0, 75, 0, 24)
Box_B.ClearTextOnFocus = false
Box_B.Font = Enum.Font.Gotham
Box_B.PlaceholderText = "255 - 0"
Box_B.Text = "10"
Box_B.TextColor3 = Color3.fromRGB(255, 255, 255)
Box_B.TextSize = 14.000

TextLabel_8.Parent = DeleteMobF
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
TextLabel_8.Size = UDim2.new(0, 100, 0, 17)
TextLabel_8.Font = Enum.Font.Gotham
TextLabel_8.Text = "ESP"
TextLabel_8.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_8.TextSize = 18.000
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

ESPSection_2.Name = "ESPSection"
ESPSection_2.Parent = DeleteMobF
ESPSection_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPSection_2.BackgroundTransparency = 1.000
ESPSection_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPSection_2.BorderSizePixel = 0
ESPSection_2.Position = UDim2.new(0.475963563, 0, 0.160724282, 0)
ESPSection_2.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_4.Parent = ESPSection_2
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 5)

OE.Name = "OE"
OE.Parent = ESPSection_2
OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OE.BorderColor3 = Color3.fromRGB(255, 255, 255)
OE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
OE.Size = UDim2.new(0, 164, 0, 29)
OE.Font = Enum.Font.Gotham
OE.Text = "Outlines"
OE.TextColor3 = Color3.fromRGB(255, 255, 255)
OE.TextSize = 16.000

OTC.Name = "OTC"
OTC.Parent = ESPSection_2
OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
OTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
OTC.Size = UDim2.new(0, 164, 0, 29)
OTC.Font = Enum.Font.Gotham
OTC.Text = "Team Check"
OTC.TextColor3 = Color3.fromRGB(255, 255, 255)
OTC.TextSize = 16.000

Frame_4.Parent = ESPSection_2
Frame_4.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_4.BackgroundTransparency = 0.700
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame_4.Size = UDim2.new(0, 230, 0, 50)

Slider1.Name = "Slider1"
Slider1.Parent = Frame_4
Slider1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider1.BorderSizePixel = 0
Slider1.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider1.Size = UDim2.new(0, 200, 0, 15)

UICorner_5.Parent = Slider1

Fill3.Name = "Fill3"
Fill3.Parent = Slider1
Fill3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill3.BackgroundTransparency = 0.200
Fill3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill3.BorderSizePixel = 0
Fill3.Size = UDim2.new(0, 100, 0, 15)
-- Made By Mick Gordon
UICorner_6.Parent = Fill3

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient_3.Parent = Fill3

TriggerOutTans.Name = "TriggerOutTans"
TriggerOutTans.Parent = Slider1
TriggerOutTans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerOutTans.BackgroundTransparency = 1.000
TriggerOutTans.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerOutTans.BorderSizePixel = 0
TriggerOutTans.Size = UDim2.new(1, 0, 1, 0)
TriggerOutTans.Font = Enum.Font.SourceSans
TriggerOutTans.Text = ""
TriggerOutTans.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerOutTans.TextSize = 14.000

Numbers_3.Name = "Numbers"
Numbers_3.Parent = Frame_4
Numbers_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_3.BackgroundTransparency = 1.000
Numbers_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers_3.BorderSizePixel = 0
Numbers_3.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers_3.Size = UDim2.new(0, 50, 0, 23)
Numbers_3.Font = Enum.Font.Gotham
Numbers_3.Text = "50"
Numbers_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers_3.TextSize = 14.000

TextLabel_9.Parent = Frame_4
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0608695634, 0, 0, 0)
TextLabel_9.Size = UDim2.new(0, 125, 0, 23)
TextLabel_9.Font = Enum.Font.Gotham
TextLabel_9.Text = "Outlines Transparency"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 14.000

Frame_5.Parent = ESPSection_2
Frame_5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_5.BackgroundTransparency = 0.700
Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame_5.Size = UDim2.new(0, 230, 0, 50)

Slider2.Name = "Slider2"
Slider2.Parent = Frame_5
Slider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider2.BorderSizePixel = 0
Slider2.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider2.Size = UDim2.new(0, 200, 0, 15)

UICorner_7.Parent = Slider2

Fill4.Name = "Fill4"
Fill4.Parent = Slider2
Fill4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill4.BackgroundTransparency = 0.200
Fill4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill4.BorderSizePixel = 0
Fill4.Size = UDim2.new(0, 100, 0, 15)
-- Made By Mick Gordon
UICorner_8.Parent = Fill4

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient_4.Parent = Fill4

TriggerFill.Name = "TriggerFill"
TriggerFill.Parent = Slider2
TriggerFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerFill.BackgroundTransparency = 1.000
TriggerFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerFill.BorderSizePixel = 0
TriggerFill.Size = UDim2.new(1, 0, 1, 0)
TriggerFill.Font = Enum.Font.SourceSans
TriggerFill.Text = ""
TriggerFill.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerFill.TextSize = 14.000

Numbers_4.Name = "Numbers"
Numbers_4.Parent = Frame_5
Numbers_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_4.BackgroundTransparency = 1.000
Numbers_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers_4.BorderSizePixel = 0
Numbers_4.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers_4.Size = UDim2.new(0, 50, 0, 23)
Numbers_4.Font = Enum.Font.Gotham
Numbers_4.Text = "50"
Numbers_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers_4.TextSize = 14.000

TextLabel_10.Parent = Frame_5
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.104347825, 0, 0, 0)
TextLabel_10.Size = UDim2.new(0, 133, 0, 23)
TextLabel_10.Font = Enum.Font.Gotham
TextLabel_10.Text = "Fill Outlines Transparency"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextSize = 14.000
-- Made By Mick Gordon
TextLabel_11.Parent = ESPSection_2
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_11.Size = UDim2.new(0, 100, 0, 17)
TextLabel_11.Font = Enum.Font.Gotham
TextLabel_11.Text = "Outlines"
TextLabel_11.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_11.TextSize = 21.000

Frame_6.Parent = ESPSection_2
Frame_6.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_6.Size = UDim2.new(0, 100, 0, 30)

UIListLayout_5.Parent = Frame_6
UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_5.Padding = UDim.new(0, 5)

Outlines_R.Name = "Outlines_R"
Outlines_R.Parent = Frame_6
Outlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Outlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
Outlines_R.Size = UDim2.new(0, 75, 0, 24)
Outlines_R.ClearTextOnFocus = false
Outlines_R.Font = Enum.Font.Gotham
Outlines_R.PlaceholderText = "255 - 0"
Outlines_R.Text = "255"
Outlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
Outlines_R.TextSize = 14.000

Outlines_G.Name = "Outlines_G"
Outlines_G.Parent = Frame_6
Outlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Outlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
Outlines_G.Size = UDim2.new(0, 75, 0, 24)
Outlines_G.ClearTextOnFocus = false
Outlines_G.Font = Enum.Font.Gotham
Outlines_G.PlaceholderText = "255 - 0"
Outlines_G.Text = "255"
Outlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
Outlines_G.TextSize = 14.000

Outlines_B.Name = "Outlines_B"
Outlines_B.Parent = Frame_6
Outlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Outlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
Outlines_B.Size = UDim2.new(0, 75, 0, 24)
Outlines_B.ClearTextOnFocus = false
Outlines_B.Font = Enum.Font.Gotham
Outlines_B.PlaceholderText = "255 - 0"
Outlines_B.Text = "255"
Outlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
Outlines_B.TextSize = 14.000
-- Made By Mick Gordon
TextLabel_12.Parent = ESPSection_2
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_12.Size = UDim2.new(0, 100, 0, 17)
TextLabel_12.Font = Enum.Font.Gotham
TextLabel_12.Text = "Fill Outlines"
TextLabel_12.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_12.TextSize = 21.000

Frame_7.Parent = ESPSection_2
Frame_7.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_7.Size = UDim2.new(0, 100, 0, 30)

UIListLayout_6.Parent = Frame_7
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_6.Padding = UDim.new(0, 5)

FillOutlines_R.Name = "FillOutlines_R"
FillOutlines_R.Parent = Frame_7
FillOutlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FillOutlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_R.Size = UDim2.new(0, 75, 0, 24)
FillOutlines_R.ClearTextOnFocus = false
FillOutlines_R.Font = Enum.Font.Gotham
FillOutlines_R.PlaceholderText = "255 - 0"
FillOutlines_R.Text = "255"
FillOutlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_R.TextSize = 14.000

FillOutlines_G.Name = "FillOutlines_G"
FillOutlines_G.Parent = Frame_7
FillOutlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FillOutlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_G.Size = UDim2.new(0, 75, 0, 24)
FillOutlines_G.ClearTextOnFocus = false
FillOutlines_G.Font = Enum.Font.Gotham
FillOutlines_G.PlaceholderText = "255 - 0"
FillOutlines_G.Text = "255"
FillOutlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_G.TextSize = 14.000

FillOutlines_B.Name = "FillOutlines_B"
FillOutlines_B.Parent = Frame_7
FillOutlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FillOutlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_B.Size = UDim2.new(0, 75, 0, 24)
FillOutlines_B.ClearTextOnFocus = false
FillOutlines_B.Font = Enum.Font.Gotham
FillOutlines_B.PlaceholderText = "255 - 0"
FillOutlines_B.Text = "255"
FillOutlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_B.TextSize = 14.000
-- Made By Mick Gordon
Tracerssection.Name = "Tracers section"
Tracerssection.Parent = DeleteMobF
Tracerssection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tracerssection.BackgroundTransparency = 1.000
Tracerssection.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tracerssection.BorderSizePixel = 0
Tracerssection.Position = UDim2.new(0.682779849, 0, 0.158000082, 0)
Tracerssection.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_7.Parent = Tracerssection
UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_7.Padding = UDim.new(0, 5)

TE.Name = "TE"
TE.Parent = Tracerssection
TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TE.BorderColor3 = Color3.fromRGB(255, 255, 255)
TE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
TE.Size = UDim2.new(0, 164, 0, 29)
TE.Font = Enum.Font.Gotham
TE.Text = "Tracers"
TE.TextColor3 = Color3.fromRGB(255, 255, 255)
TE.TextSize = 16.000

TTC.Name = "TTC"
TTC.Parent = Tracerssection
TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
TTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
TTC.Size = UDim2.new(0, 164, 0, 29)
TTC.Font = Enum.Font.Gotham
TTC.Text = "Team Check"
TTC.TextColor3 = Color3.fromRGB(255, 255, 255)
TTC.TextSize = 16.000

TTCOlor.Name = "TTCOlor"
TTCOlor.Parent = Tracerssection
TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TTCOlor.BorderColor3 = Color3.fromRGB(255, 255, 255)
TTCOlor.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
TTCOlor.Size = UDim2.new(0, 164, 0, 29)
TTCOlor.Font = Enum.Font.Gotham
TTCOlor.Text = "Team Color"
TTCOlor.TextColor3 = Color3.fromRGB(255, 255, 255)
TTCOlor.TextSize = 16.000

Frame_8.Parent = Tracerssection
Frame_8.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_8.BorderSizePixel = 0
Frame_8.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_8.Size = UDim2.new(0, 100, 0, 40)

UIListLayout_8.Parent = Frame_8
UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_8.Padding = UDim.new(0, 5)

Tracers_R.Name = "Tracers_R"
Tracers_R.Parent = Frame_8
Tracers_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Tracers_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tracers_R.Size = UDim2.new(0, 75, 0, 24)
Tracers_R.ClearTextOnFocus = false
Tracers_R.Font = Enum.Font.Gotham
Tracers_R.PlaceholderText = "255 - 0"
Tracers_R.Text = "75" 
Tracers_R.TextColor3 = Color3.fromRGB(255, 255, 255)
Tracers_R.TextSize = 14.000

Tracers_G.Name = "Tracers_G"
Tracers_G.Parent = Frame_8
Tracers_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Tracers_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tracers_G.Size = UDim2.new(0, 75, 0, 24)
Tracers_G.ClearTextOnFocus = false
Tracers_G.Font = Enum.Font.Gotham
Tracers_G.PlaceholderText = "255 - 0"
Tracers_G.Text = "0"
Tracers_G.TextColor3 = Color3.fromRGB(255, 255, 255)
Tracers_G.TextSize = 14.000

Tracers_B.Name = "Tracers_B"
Tracers_B.Parent = Frame_8
Tracers_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Tracers_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tracers_B.Size = UDim2.new(0, 75, 0, 24)
Tracers_B.ClearTextOnFocus = false
Tracers_B.Font = Enum.Font.Gotham
Tracers_B.PlaceholderText = "255 - 0"
Tracers_B.Text = "10"
Tracers_B.TextColor3 = Color3.fromRGB(255, 255, 255)
Tracers_B.TextSize = 14.000
-- Made By Mick Gordon
Unknown.Name = "Unknown"
Unknown.Parent = DeleteMobF
Unknown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Unknown.BackgroundTransparency = 1.000
Unknown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unknown.BorderSizePixel = 0
Unknown.Position = UDim2.new(0.882285178, 0, 0.158000082, 0)
Unknown.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_9.Parent = Unknown
UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_9.Padding = UDim.new(0, 5)

TextLabel_13.Parent = Unknown
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_13.Size = UDim2.new(0, 100, 0, 17)
TextLabel_13.Font = Enum.Font.Gotham
TextLabel_13.Text = "More Options"
TextLabel_13.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_13.TextSize = 21.000

TextLabel_14.Parent = Unknown
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
TextLabel_14.Size = UDim2.new(0, 100, 0, 17)
TextLabel_14.Font = Enum.Font.Gotham
TextLabel_14.Text = "Later"
TextLabel_14.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_14.TextSize = 18.000

Open.Name = "Open"
Open.Parent = CheatEngineDeleteMob
Open.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Open.BorderColor3 = Color3.fromRGB(255, 255, 255)
Open.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
Open.Size = UDim2.new(0, 150, 0, 50)
Open.ZIndex = 10
Open.Draggable = true
Open.Active = true

TextButton.Parent = Open
TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.319999933, 0)
TextButton.Size = UDim2.new(0, 150, 0, 34)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "open / Close"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000
-- Made By Mick Gordon
ABE.MouseButton1Click:Connect(function()
	if ABE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.Enabled = true
	else
		ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.Enabled = false	
	end
end)

ABSF.MouseButton1Click:Connect(function()
	if ABSF.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABSF.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.ShowFov = true
	else
		ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.ShowFov = false	
	end
end)

ABTC.MouseButton1Click:Connect(function()
	if ABTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.TeamCheck = true
	else
		ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.TeamCheck = false	
	end
end)

ABWC.MouseButton1Click:Connect(function()
	if ABWC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABWC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.WallCheck = true
	else
		ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.WallCheck = false	
	end
end)

Allways_Show.MouseButton1Click:Connect(function()
	if DeleteMob.Aimbot.AimPart == "Head" then
		Allways_Show.Text = "head, TORSO"
		DeleteMob.Aimbot.AimPart = "HumanoidRootPart"
	else
		Allways_Show.Text = "HEAD, torso"
		DeleteMob.Aimbot.AimPart = "Head"
	end
end)

-- Box ESP

BBD.MouseButton1Click:Connect(function()
	if BBD.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBD.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Distance = true
	else
		BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Distance = false	
	end
end)

BBE.MouseButton1Click:Connect(function()
	if BBE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Box = true
	else
		BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Box = false	
	end
end)

BBH.MouseButton1Click:Connect(function()
	if BBH.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBH.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Health = true
	else
		BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Health = false	
	end
end)

BBHT.MouseButton1Click:Connect(function()
	if DeleteMob.ESP.Box.HealthType == "Bar" then
		BBHT.Text = "bar, TEXT, both"
		DeleteMob.ESP.Box.HealthType = "Text"
	elseif DeleteMob.ESP.Box.HealthType == "Text" then
		BBHT.Text = "bar, text, BOTH"
		DeleteMob.ESP.Box.HealthType = "Both"
	elseif DeleteMob.ESP.Box.HealthType == "Both" then
		BBHT.Text = "BAR, text, both"
		DeleteMob.ESP.Box.HealthType = "Bar"
	end
end)

BBN.MouseButton1Click:Connect(function()
	if BBN.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBN.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Name = true
	else
		BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Name = false	
	end
end)

BTC.MouseButton1Click:Connect(function()
	if BTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.TeamCheck = true
	else
		BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.TeamCheck = false	
	end
end)
-- Outlines

OE.MouseButton1Click:Connect(function()
	if OE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		OE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.OutLines.Enabled = true
	else
		OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.OutLines.Enabled = false	
	end
end)

OTC.MouseButton1Click:Connect(function()
	if OTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		OTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.OutLines.TeamCheck = true
	else
		OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.OutLines.TeamCheck = false	
	end
end)

-- Tracers

TE.MouseButton1Click:Connect(function()
	if TE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		TE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Tracers.Enabled = true
	else
		TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Tracers.Enabled = false	
	end
end)

TTC.MouseButton1Click:Connect(function()
	if TTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		TTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Tracers.TeamCheck = true
	else
		TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Tracers.TeamCheck = false	
	end
end)

TTCOlor.MouseButton1Click:Connect(function()
	if TTCOlor.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		TTCOlor.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Tracers.TeamColor = true
	else
		TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Tracers.TeamColor = false	
	end
end)

-- UI Toggle

TextButton.MouseButton1Click:Connect(function()
	if DeleteMobF.Visible == true then
		DeleteMobF.Visible = false
	else
		DeleteMobF.Visible = true
	end
end)


-- Scripts:

local function LDTZWMY_fake_script() -- Slider3.Script1 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider3
	local Fill = Fill1
	local Trigger = TriggerFov
	local TextNumbers = Numbers
	
	local maxvalue = 7 or 700/700
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Fov,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	
	local TweenService = game:GetService("TweenService")
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.Aimbot.Fov ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.Aimbot.Fov = (startingvalue +(OutPut*(maxvalue-startingvalue)))*100
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	end
	
	Fill:GetPropertyChangedSignal("Size"):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
end
coroutine.wrap(LDTZWMY_fake_script)()

local function YEOE_fake_script() -- Slider4.Script2 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider4
	local Fill = Fill2
	local Trigger = TriggerSmoothing
	local TextNumbers = Numbers_2
	
	local maxvalue = 3 or 30/30
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Smoothing,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	
	local TweenService = game:GetService("TweenService")
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.Aimbot.Smoothing ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.Aimbot.Smoothing = startingvalue +(OutPut*(maxvalue-startingvalue))
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	end
	
	Fill:GetPropertyChangedSignal("Size"):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
	
end
coroutine.wrap(YEOE_fake_script)()
local function GOUU_fake_script() -- Slider1.Script3 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider1
	local Fill = Fill3
	local Trigger = TriggerOutTans
	local TextNumbers = Numbers_3
	
	local maxvalue = 1 or 100/100
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.OutlineTrancparency,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	
	local TweenService = game:GetService("TweenService")
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.ESP.OutLines.OutlineTrancparency ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.ESP.OutLines.OutlineTrancparency = startingvalue +(OutPut*(maxvalue-startingvalue))
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	end
	
	Fill:GetPropertyChangedSignal("Size"):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
	
end
coroutine.wrap(GOUU_fake_script)()
local function MMUKLB_fake_script() -- Slider2.Script4 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider2
	local Fill = Fill4
	local Trigger = TriggerFill
	local TextNumbers = Numbers_4
	
	local maxvalue = 1 or 100/100
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.FillTrancparenct,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	
	local TweenService = game:GetService("TweenService")
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.ESP.OutLines.FillTrancparenct ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.ESP.OutLines.FillTrancparenct = startingvalue +(OutPut*(maxvalue-startingvalue))
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	end
	
	Fill:GetPropertyChangedSignal("Size"):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
	
end
coroutine.wrap(MMUKLB_fake_script)()


game:GetService('RunService').RenderStepped:connect(function()

	-- Aimbot Check
	if DeleteMob.Aimbot.Enabled == true then 
		if UIS:IsMouseButtonPressed(Enum.UserInputType[DeleteMob.Aimbot.Keybind]) then
			local _pos = CameraGetClosestToMouse(DeleteMob.Aimbot.Fov)
			if _pos then
				aimAt(_pos, DeleteMob.Aimbot.Smoothing)
			end
		end
	end 

	-- Fov
	local acc = DeleteMob.Aimbot.Smoothing / 2	
	local posd = UIS:GetMouseLocation() 
	FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36)
	FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov + acc, 0, DeleteMob.Aimbot.Fov + acc)
	FOVFFrame.Visible = DeleteMob.Aimbot.ShowFov
	FOVFFrame.BackgroundColor3 = DeleteMob.Aimbot.FovFillColor
	FOVFFrame.Transparency = DeleteMob.Aimbot.FovFillTransparency

	UIStroke.Color = DeleteMob.Aimbot.FovFillColor
	UIStroke.Transparency = DeleteMob.Aimbot.FovTransparenct
	UIStroke.Thickness = DeleteMob.Aimbot.Thickness
	
	-- Colors 
	
	DeleteMob.ESP.Box.BoxColor = Color3.fromRGB(tonumber(Box_R.Text), tonumber(Box_G.Text), tonumber(Box_B.Text))
	DeleteMob.ESP.OutLines.FillCollor = Color3.fromRGB(tonumber(FillOutlines_R.Text), tonumber(FillOutlines_G.Text), tonumber(FillOutlines_B.Text))
	DeleteMob.ESP.OutLines.OutlineColor = Color3.fromRGB(tonumber(Outlines_R.Text), tonumber(Outlines_G.Text), tonumber(Outlines_B.Text))
	DeleteMob.ESP.Tracers.Color = Color3.fromRGB(tonumber(Tracers_R.Text), tonumber(Tracers_G.Text), tonumber(Tracers_B.Text))
end)


task.wait()

for i,plr in pairs(game.Players:GetChildren()) do
	AddHighlight(plr)
	AddBox(plr)
	AddTracers(plr)
end

game.Players.PlayerAdded:Connect(function(plr)
	AddHighlight(plr)
	AddBox(plr)
	AddTracers(plr)
end)
      -- The function that takes place when the button is pressed
   end,
})
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("其它")
local Button = Tab:CreateButton({
   Name = "穿墙",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "开启夜视",
   Callback = function()
      game.Lighting.Ambient = Color3.new(1, 1, 1) -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "关闭夜视",
   Callback = function()
      game.Lighting.Ambient = Color3.new(0, 0, 0) -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "隐身",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-35376"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "隐身道具",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "转圈",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "杀死NPC",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/WSbuq/-/main/killNPC"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "r15撸管",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "r6撸管",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "操人脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/bzmhRgKL"))()-- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "零重力",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/zerogravity"))()-- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "聊天框画画",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/_/refs/heads/main/a"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "infinite yield指令",
   Callback = function(v)
      v = loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "防挂机",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "控制玩家",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "john doe",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://rawscripts.net/raw/Client-Replication-John-doe-up-by-gojohdkaisenkt-34198"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "变成蜘蛛侠",
   Callback = function()
		loadstring([[
-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- States
local autoPull, noclip, webPhysics, spiderMode = false, false, false, false
local targetPos, currentWeb = nil, nil

-- GUI
local guiMain, panelFrame, btnAuto, btnNoclip, btnSpider, subButtons = nil

local function buildGui()
    if guiMain then guiMain:Destroy() end
    guiMain = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    guiMain.ResetOnSpawn = false

    panelFrame = Instance.new("Frame")
    panelFrame.Size = UDim2.new(0, 210, 0, 260)
    panelFrame.Position = UDim2.new(0.1, 0, 0.4, 0)
    panelFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    panelFrame.BackgroundTransparency = 0.2
    panelFrame.Active = true
    panelFrame.Parent = guiMain

    -- Make whole panel draggable (mobile + desktop)
    local dragging = false
    local dragStartPos = nil
    local startPos = nil

    panelFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStartPos = input.Position
            startPos = panelFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    panelFrame.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
            local delta = input.Position - dragStartPos
            panelFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    -- Button creator
    local function mk(text, y)
        local btn = Instance.new("TextButton", panelFrame)
        btn.Size = UDim2.new(1, -10, 0, 40)
        btn.Position = UDim2.new(0, 5, 0, y)
        btn.Text = text
        btn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.SourceSansBold
        btn.TextSize = 18
        return btn
    end

    btnAuto = mk("Auto Walk: OFF", 10)
    btnNoclip = mk("Noclip: OFF", 60)
    btnSpider = mk("🕷 Spider‑Man Mode", 110)
    local btnWebPull = mk("Web Pull: OFF", 160)
    local btnWebPhys = mk("Web Physics: OFF", 210)

    subButtons = {btnWebPull, btnWebPhys}
    for _, b in ipairs(subButtons) do
        b.Visible = false
    end

    btnSpider.MouseButton1Click:Connect(function()
        spiderMode = not spiderMode
        for _, b in ipairs(subButtons) do
            b.Visible = spiderMode
        end
    end)

    btnAuto.MouseButton1Click:Connect(function()
        autoPull = not autoPull
        btnAuto.Text = "Auto Walk: " .. (autoPull and "ON" or "OFF")
        btnAuto.BackgroundColor3 = autoPull and Color3.fromRGB(0, 120, 255) or Color3.fromRGB(70, 70, 70)
    end)

    btnNoclip.MouseButton1Click:Connect(function()
        noclip = not noclip
        btnNoclip.Text = "Noclip: " .. (noclip and "ON" or "OFF")
    end)

    btnWebPull.MouseButton1Click:Connect(function()
        webPhysics = false
        autoPull = true
        btnWebPull.Text = "Web Pull: ON"
        btnWebPhys.Text = "Web Physics: OFF"
    end)

    btnWebPhys.MouseButton1Click:Connect(function()
        webPhysics = true
        autoPull = false
        btnWebPhys.Text = "Web Physics: ON"
        btnWebPull.Text = "Web Pull: OFF"
    end)
end

local function createWeb(startPos, endPos)
    if currentWeb then currentWeb:Destroy() end
    local p1 = Instance.new("Part", workspace)
    p1.Anchored = true
    p1.CanCollide = false
    p1.Transparency = 1
    p1.CFrame = CFrame.new(startPos)
    local p2 = Instance.new("Part", workspace)
    p2.Anchored = true
    p2.CanCollide = false
    p2.Transparency = 1
    p2.CFrame = CFrame.new(endPos)
    local a1 = Instance.new("Attachment", p1)
    local a2 = Instance.new("Attachment", p2)
    local beam = Instance.new("Beam", p1)
    beam.Attachment0 = a1
    beam.Attachment1 = a2
    beam.Width0 = 2
    beam.Width1 = 2
    beam.LightEmission = 1
    beam.Texture = "rbxassetid://446111271"
    beam.TextureMode = Enum.TextureMode.Stretch
    beam.TextureLength = 1
    beam.TextureSpeed = 2
    beam.Color = ColorSequence.new(Color3.new(1, 1, 1))
    beam.Transparency = NumberSequence.new(0.05)
    currentWeb = Instance.new("Folder", workspace)
    p1.Parent = currentWeb
    p2.Parent = currentWeb
end

local function useWeb()
    if not targetPos then
        return
    end
    local char = player.Character or player.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")
    createWeb(root.Position, targetPos)
    if webPhysics then
        local bv = Instance.new("BodyVelocity", root)
        bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
        bv.Velocity = (targetPos - root.Position).Unit * 100
        Debris:AddItem(bv, 0.5)
    elseif autoPull then
        local tw = TweenService:Create(root, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {
            CFrame = CFrame.new(targetPos + Vector3.new(0, 3, 0))
        })
        tw:Play()
    end
end

UserInputService.InputBegan:Connect(function(input, processed)
    if processed then
        return
    end
    if
        input.UserInputType == Enum.UserInputType.Touch
        or input.UserInputType == Enum.UserInputType.MouseButton1
    then
        local ray = camera:ScreenPointToRay(input.Position.X, input.Position.Y)
        local rp = RaycastParams.new()
        rp.FilterDescendantsInstances = {player.Character}
        rp.FilterType = Enum.RaycastFilterType.Blacklist
        local hit = workspace:Raycast(ray.Origin, ray.Direction * 500, rp)
        if hit then
            targetPos = hit.Position
            useWeb()
        end
    end
end)

RunService.RenderStepped:Connect(function()
    local char = player.Character
    if char then
        if noclip then
            for _, p in pairs(char:GetDescendants()) do
                if p:IsA("BasePart") then
                    p.CanCollide = false
                end
            end
        end
    end
end)

player.CharacterAdded:Connect(function()
    wait(1)
    buildGui()
    if targetPos then
        wait(0.5)
        useWeb()
    end
end)

buildGui()
]])()
       -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "vape v4",
   Callback = function(v)
   v = loadstring(utf8.char(table.unpack({
108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,55,71,114,97,110,100,68,97,100,80,71,78,47,86,97,112,101,86,52,70,111,114,82,111,98,108,111,120,47,109,97,105,110,47,78,101,119,77,97,105,110,83,99,114,105,112,116,46,108,117,97,34,44,32,116,114,117,101,41,41,40,41
})))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "ak47",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://rscripts.net/raw/fe-ak-47-script_1740880749757_Wwv03lCsFC.txt'))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "音乐播放器",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Loader.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "把角色变成彩色（再点一下为关闭）",
   Callback = function()
	        rainbowActive = not rainbowActive
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        if rainbowActive then
            
            rainbowConnection = game:GetService("RunService").RenderStepped:Connect(function()
                local hue = tick() % 5 / 5 
                local color = Color3.fromHSV(hue, 1, 1)

                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                        part.Color = color
                    end
                end
            end)
        else
            
            if rainbowConnection then rainbowConnection:Disconnect() end
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                    part.Color = Color3.new(1, 1, 1)
                end
            end
        end
       -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "改碰撞箱",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/ZQMVNxkT"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "改其他人碰撞箱",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/0a7cG84K"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "偷物品",
   Callback = function()
      --Copy And Paste:
for i,v in pairs (game.Players:GetChildren()) do
wait()
for i,b in pairs (v.Backpack:GetChildren()) do
b.Parent = game.Players.LocalPlayer.Backpack
end
end
      -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "点击传送工具",
   Callback = function()
      mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE]点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "铁拳",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "黑洞",
   Callback = function()
		---- Keybinds: E - Teleport to position wherever your cursor is at!


local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Folder = Instance.new("Folder", game:GetService("Workspace"))
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in next, game:GetService("Players"):GetPlayers() do
            if Players ~= game:GetService("Players").LocalPlayer then
                Players.MaximumSimulationRadius = 0 
                sethiddenproperty(Players, "SimulationRadius", 0) 
            end 
        end
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        setsimulationradius(math.huge) 
    end 
end) 
coroutine.resume(NetworkAccess)
local function ForcePart(v)
    if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
        Mouse.TargetFilter = v
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2 
        AlignPosition.Attachment1 = Attachment1
    end
end
for _, v in next, game:GetService("Workspace"):GetDescendants() do
    ForcePart(v)
end
game:GetService("Workspace").DescendantAdded:Connect(function(v)
    ForcePart(v)
end)
UserInputService.InputBegan:Connect(function(Key, Chat)
    if Key.KeyCode == Enum.KeyCode.E and not Chat then
       Updated = Mouse.Hit + Vector3.new(0, 5, 0)
    end
end)
spawn(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        Attachment1.WorldCFrame = Updated
    end
end)

       -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "灵魂出窍",
   Callback = function()
      for i, v in pairs(game.CoreGui:GetChildren()) do
    if v:FindFirstChild("UI") then
        v:Destroy()
    end
end
wait(1)

local UI = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")
local InvisText = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

--Properties:

UI.Name = "UI"
UI.Parent = game:WaitForChild("CoreGui")

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, -75, 0.41232878, -37)
Main.Size = UDim2.new(0, 248, 0, 107)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(48, 48, 48)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

Toggle.Name = "Toggle"
Toggle.Parent = Main
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.5, -23, 0.565420568, -11)
Toggle.Size = UDim2.new(0, 46, 0, 22)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

local toggled = false
local debounce = false

Button.MouseButton1Click:Connect(
    function()
        if debounce == false then
            if toggled == true then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(200, 200, 200)}
                ):Play()
                game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0, 2, 0, 2)}):Play(

                )
                wait(0.25)
                debounce = false
                toggled = false

                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            elseif toggled == false then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(64, 200, 114)}
                ):Play()
                game:GetService("TweenService"):Create(
                    Circle,
                    TweenInfo.new(0.25),
                    {Position = UDim2.new(1, -20, 0, 2)}
                ):Play()
                wait(0.25)
                debounce = false
                toggled = true
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "Root" or v.Name == "RootJoint" then
                        v:Destroy()
                    end
                end
            end
        end
    end
)

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0, 2, 0, 2)
Circle.Size = UDim2.new(0, 18, 0, 18)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

InvisText.Name = "InvisText"
InvisText.Parent = Main
InvisText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InvisText.BackgroundTransparency = 1.000
InvisText.BorderColor3 = Color3.fromRGB(27, 42, 53)
InvisText.BorderSizePixel = 0
InvisText.Position = UDim2.new(0.0967741907, 0, 0, 0)
InvisText.Size = UDim2.new(0, 200, 0, 50)
InvisText.Font = Enum.Font.SourceSans
InvisText.Text = "通用隐身(出体)"
InvisText.TextColor3 = Color3.fromRGB(255, 255, 255)
InvisText.TextScaled = true
InvisText.TextSize = 14.000
InvisText.TextTransparency = 0.140
InvisText.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(27, 42, 53)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0241935477, 0, 0.738317728, 0)
Credits.Size = UDim2.new(0, 94, 0, 18)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Bebo Mods汉化组"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextTransparency = 0.250
Credits.TextWrapped = true

-- Scripts:

local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"))

local gui = Main

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
    return a + (b - a) * m
end

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8) -- // The speed of the UI darg.
function Update(dt)
    if not (startPos) then
        return
    end
    if not (dragging) and (lastGoalPos) then
        gui.Position =
            UDim2.new(
            startPos.X.Scale,
            Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale,
            Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED)
        )
        return
    end

    local delta = (lastMousePos - UserInputService:GetMouseLocation())
    local xGoal = (startPos.X.Offset - delta.X)
    local yGoal = (startPos.Y.Offset - delta.Y)
    lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
    gui.Position =
        UDim2.new(
        startPos.X.Scale,
        Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED),
        startPos.Y.Scale,
        Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED)
    )
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            lastMousePos = UserInputService:GetMouseLocation()

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

runService.Heartbeat:Connect(Update)
       -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "引力道具",
   Callback = function()
      --控制：
    
-- Q - 更近
-- E - 更远
-- Y - 投出
-- L - 不知道怎么翻
-- J - 超级投掷
-- X - 更远(小)
-- U - 使物体高速自转
-- P - 使物体悬浮在空中
local sandbox = function(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
local _Name = "Telekinesis V4"
local uis = game:GetService("UserInputService")
local _Ins, _CF_new, _VTR_new = Instance.new, CFrame.new, Vector3.new
mas = _Ins("Model",game:GetService("Lighting"))
Tool0 = _Ins("Tool")
Part1 = _Ins("Part")
Script2 = _Ins("Script")
LocalScript3 = _Ins("LocalScript")
Tool0.Name = _Name
Tool0.Parent = mas
Tool0.Grip = _CF_new(0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Tool0.GripPos = _VTR_new(0, 0, 1)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = _CF_new(-3.5, 5.30000019, -3.5, 1, 0, 0, 0, -1, 0, 0, 0, -1)
Part1.Orientation = _VTR_new(0, 180, 180)
Part1.Position = _VTR_new(-3.5, 5.300000190734863, -3.5)
Part1.Rotation = _VTR_new(-180, 0, 0)
Part1.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part1.Transparency = 1
Part1.Size = _VTR_new(1, 1, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Institutional white")
Part1.Locked = true
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Institutional white")
Script2.Name = "LineConnect"
Script2.Parent = Tool0
local Sound = _Ins("Sound", game.Workspace)
Sound.SoundId = "rbxassetid://1092093337"
Sound:Play()
table.insert(cors,sandbox(Script2,function()
	wait()
	local check = script.Part2
	local part1 = script.Part1.Value
	local part2 = script.Part2.Value
	local parent = script.Par.Value
	local color = script.Color
	local line = _Ins("Part")
	line.TopSurface = 0
	line.BottomSurface = 0
	line.Reflectance = .5
	line.Name = "Laser"
	line.Locked = true
	line.CanCollide = false
	line.Anchored = true
	line.formFactor = 0
	line.Size = _VTR_new(1,1,1)
	local mesh = _Ins("BlockMesh")
	mesh.Parent = line
	while true do
		if (check.Value==nil) then break end
		if (part1==nil or part2==nil or parent==nil) then break end
		if (part1.Parent==nil or part2.Parent==nil) then break end
		if (parent.Parent==nil) then break end
		local lv = _CF_new(part1.Position,part2.Position)
		local dist = (part1.Position-part2.Position).magnitude
		line.Parent = parent
		line.BrickColor = color.Value.BrickColor
		line.Reflectance = color.Value.Reflectance
		line.Transparency = color.Value.Transparency
		line.CFrame = _CF_new(part1.Position+lv.lookVector*dist/2)
		line.CFrame = _CF_new(line.Position,part2.Position)
		mesh.Scale = _VTR_new(.25,.25,dist)
		wait()
	end
	line:remove()
	script:remove() 
end))
Script2.Disabled = true
LocalScript3.Name = "MainScript"
LocalScript3.Parent = Tool0
table.insert(cors,sandbox(LocalScript3,function()
	wait() 
	tool = script.Parent
	lineconnect = tool.LineConnect
	object = nil
	mousedown = false
	found = false
	BP = _Ins("BodyPosition")
	BP.maxForce = _VTR_new(math.huge*math.huge,math.huge*math.huge,math.huge*math.huge) --pwns everyone elses bodyposition
	BP.P = BP.P*3
	dist = nil
	point = _Ins("Part")
	point.Locked = true
	point.Anchored = true
	point.formFactor = 0
	point.Shape = 0
	point.BrickColor = BrickColor.Blue() 
	point.Size = _VTR_new(1,1,1)
	point.CanCollide = false
	local mesh = _Ins("SpecialMesh")
	mesh.MeshType = "Sphere"
	mesh.Scale = _VTR_new(.7,.7,.7)
	mesh.Parent = point
	handle = tool.Handle
	front = tool.Handle
	color = tool.Handle
	objval = nil
	local hooked = false 
	local hookBP = BP:clone() 
	hookBP.maxForce = _VTR_new(30000,30000,30000) 

	function LineConnect(part1,part2,parent)
		local p1 = _Ins("ObjectValue")
		p1.Value = part1
		p1.Name = "Part1"
		local p2 = _Ins("ObjectValue")
		p2.Value = part2
		p2.Name = "Part2"
		local par = _Ins("ObjectValue")
		par.Value = parent
		par.Name = "Par"
		local col = _Ins("ObjectValue")
		col.Value = color
		col.Name = "Color"
		local s = lineconnect:clone()
		s.Disabled = false
		p1.Parent = s
		p2.Parent = s
		par.Parent = s
		col.Parent = s
		s.Parent = workspace
		if (part2==object) then
			objval = p2
		end
	end

	function onButton1Down(mouse)
		if (mousedown==true) then return end
		mousedown = true
		coroutine.resume(coroutine.create(function()
			local p = point:clone()
			p.Parent = tool
			LineConnect(front,p,workspace)
			while (mousedown==true) do
				p.Parent = tool
				if (object==nil) then
					if (mouse.Target==nil) then
						local lv = _CF_new(front.Position,mouse.Hit.p)
						p.CFrame = _CF_new(front.Position+(lv.lookVector*1000))
					else
						p.CFrame = _CF_new(mouse.Hit.p)
					end
				else
					LineConnect(front,object,workspace)
					break
				end
				wait()
			end
			p:remove()
		end))
		while (mousedown==true) do
			if (mouse.Target~=nil) then
				local t = mouse.Target
				if (t.Anchored==false) then
					object = t
					dist = (object.Position-front.Position).magnitude
					break
				end
			end
			wait()
		end
		while (mousedown==true) do
			if (object.Parent==nil) then break end
			local lv = _CF_new(front.Position,mouse.Hit.p)
			BP.Parent = object
			BP.position = front.Position+lv.lookVector*dist
			wait()
		end
		BP:remove()
		object = nil
		objval.Value = nil
	end

	function onKeyDown(key,mouse) 
		local key = key:lower() 
		local yesh = false 
		if (key=="q") then 
			if (dist>=5) then 
				dist = dist-5 
			end 
		end
		if (key=="u") then 
			if (dist ~=1) then 
				BX = _Ins("BodyGyro")
				BX.MaxTorque = _VTR_new(math.huge,0,math.huge)
				BX.CFrame = BX.CFrame * CFrame.Angles(0, math.rad(45), 0)
				BX.D = 0
				BX.Parent = object
				--object.CFrame = CFrame.Angles(math.rad(90), 0,0) -- not used
				--object.Orientation = _VTR_new(50,0,0)
				--BX.Orientation = _VTR_new(23,0,0)

			end 
		end 
		if (key=="p") then 
			if (dist ~=1) then
				BX = _Ins("BodyVelocity")
				BX.maxForce = _VTR_new(0,math.huge,0)
				BX.velocity = _VTR_new(0,1,0)
				--BX.CFrame = BX.CFrame * CFrame.Angles(0, math.rad(45), 0)
				BX.Parent = object

			end 
		end 
		if key == "l" then 
			if (object==nil) then return end 
			for _,v in pairs(object:children()) do 
				if v.className == "BodyGyro" then 
					return nil 
				end 
			end 
			BG = _Ins("BodyGyro") 
			BG.maxTorque = _VTR_new(math.huge,math.huge,math.huge) 
			BG.cframe = _CF_new(object.CFrame.p) 
			BG.Parent = object 
			repeat wait() until(object.CFrame == _CF_new(object.CFrame.p))
			BG.Parent = nil 
			if (object==nil) then return end 
			for _,v in pairs(object:children()) do 
				if v.className == "BodyGyro" then 
					v.Parent = nil 
				end 
			end 
			object.Velocity = _VTR_new(0,0,0) 
			object.RotVelocity = _VTR_new(0,0,0) 
		end 
		if (key=="y") then 
			if (dist ~=100) then 
				dist = 100 
			end 
		end 
		if (key=="j") then 
			if (dist~=5000) then 
				dist = 5000 
			end 
		end
		if (key=="e") then
			dist = dist+5
		end
		if (key=="x") then 
			if dist ~= 15 then 
				dist = 15 
			end 
		end 
	end
	
	function onEquipped(mouse)
		keymouse = mouse
		local char = tool.Parent
		human = char.Humanoid
		human.Changed:connect(function() if (human.Health==0) then mousedown = false BP:remove() point:remove() tool:remove() end end)
		mouse.Button1Down:connect(function() onButton1Down(mouse) end)
		mouse.KeyDown:connect(function(key) onKeyDown(key,mouse) end)
		mouse.Icon = "rbxasset://textures\\GunCursor.png"
		if uis.TouchEnabled then
			uis.TouchEnded:Connect(function() mousedown = false end)
		else
			mouse.Button1Up:connect(function() mousedown = false end)
		end
	end

	tool.Equipped:connect(onEquipped)
	tool.Unequipped:connect(function() mousedown = false end)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
      -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "btools",
   Callback = function()
      backpack = game:GetService("Players").LocalPlayer.Backpack

hammer = Instance.new("HopperBin")
hammer.Name = "Hammer"
hammer.BinType = 4
hammer.Parent = backpack

cloneTool = Instance.new("HopperBin")
cloneTool.Name = "Clone"
cloneTool.BinType = 3
cloneTool.Parent = backpack

grabTool = Instance.new("HopperBin")
grabTool.Name = "Grab"
grabTool.BinType = 2
grabTool.Parent = backpack
      -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("辅助类脚本", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "光影",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "光影滤镜",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "高画质",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "光影V4",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "RTX",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "光影深",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "光影浅",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Synapse X",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "阿尔宙斯",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))() -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("FE脚本", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "c00lkid",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-coolkid-gui-15453"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "c00lkid外网搬运",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/MiRw3b/c00lgui-v3rx/main/c00lguiv3rx.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "1x1x1x1",
   Callback = function(v)
      v = loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "召唤guest666",
   Callback = function()
		local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local userId = 5097019383

local function spawnGuest()
	local model = Players:CreateHumanoidModelFromUserId(userId)
	model.Name = "Guest666"
	model.Parent = workspace

	local root = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
	if root and model.PrimaryPart then
		model:SetPrimaryPartCFrame(root.CFrame * CFrame.new(math.random(-5, 5), 0, math.random(-5, 5)))
	end

	local guestRoot = model:FindFirstChild("HumanoidRootPart")
	if guestRoot then
		local bp = Instance.new("BodyPosition", guestRoot)
		bp.Position = guestRoot.Position + Vector3.new(0, 5, 0)
		bp.MaxForce = Vector3.new(0, 5000, 0)
		bp.D = 100
		bp.P = 3000

		local fire = Instance.new("Fire", guestRoot)
		fire.Heat = 10
		fire.Size = 10

		local smoke = Instance.new("Smoke", guestRoot)
		smoke.Color = Color3.new(0, 0, 0)
		smoke.RiseVelocity = 5
		smoke.Opacity = 0.5
		smoke.Size = 10
	end

	local humanoid = model:FindFirstChild("Humanoid")
	if humanoid then
		local tPoseAnim = Instance.new("Animation")
		tPoseAnim.AnimationId = "rbxassetid://235542946"
		local track = humanoid:LoadAnimation(tPoseAnim)
		track.Looped = true
		track:Play()
	end

	return model
end

spawnGuest()

local hint = Instance.new("Hint", workspace)

for i = 100, 1, -1 do
	hint.Text = "Countdown: " .. i
	wait(1)
end

hint:Destroy()

for _, player in pairs(Players:GetPlayers()) do
	player:Kick("Server Shutdown")
end
       -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "ink monster",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/RvrJsRX9"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "动画中心",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "仓鼠球",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/scripts/refs/heads/main/unofficial-Projects/FEHamsterBall.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "不知道啥",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "动作",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gazer-Ha/Free-emote/refs/heads/main/Delta%20mad%20stuffs"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "假车",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexCr4sh/FeScripts/main/FeCarScript.lua", true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "某个FE合集",
   Callback = function(v)
      v = loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "控制NPC",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/fe-source/refs/heads/main/NPC/source/main.Luau"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "假朋友",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/sigmaboy123z/MYFRIENDSCRIPT/refs/heads/main/MYNEWFRIENDSPAWNER"))(); -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "假延迟",
   Callback = function()
	-- EXPANDED EGOR GUI by jonhfoer (No Minimize)
local Players    = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Defaults
local DEFAULTS = {
    WalkSpeed = 16,
    JumpPower = 50,
    Gravity   = 196.2,
    AnimSpeed = 5
}

-- State
local egorOn, freezeOn = false, false

-- Remove old GUI
local old = LocalPlayer.PlayerGui:FindFirstChild("EgorExpandedUI")
if old then old:Destroy() end

-- Build GUI
local gui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
gui.Name = "EgorExpandedUI"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size              = UDim2.new(0,300,0,380)
frame.Position          = UDim2.new(0.5,-150,0.5,-190)
frame.BackgroundColor3  = Color3.fromRGB(28,28,30)
frame.Active            = true
frame.Draggable         = true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0,12)
local stroke = Instance.new("UIStroke", frame)
stroke.Color         = Color3.fromRGB(60,60,60)
stroke.Transparency  = 0.5

-- Signature
local title = Instance.new("TextLabel", frame)
title.Size               = UDim2.new(1,-20,0,18)
title.Position           = UDim2.new(0,10,0,6)
title.BackgroundTransparency = 1
title.Text               = "created by jonhfoer"
title.Font               = Enum.Font.Gotham
title.TextSize           = 12
title.TextColor3         = Color3.fromRGB(200,200,200)

-- Close Button
local close = Instance.new("TextButton", frame)
close.Size              = UDim2.new(0,24,0,24)
close.Position          = UDim2.new(1,-30,0,6)
close.Text              = "X"
close.Font              = Enum.Font.GothamBold
close.TextSize          = 14
close.TextColor3        = Color3.new(1,1,1)
close.BackgroundColor3  = frame.BackgroundColor3
Instance.new("UICorner", close).CornerRadius = UDim.new(0,6)

local function resetAll()
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.WalkSpeed = DEFAULTS.WalkSpeed
            hum.JumpPower = DEFAULTS.JumpPower
            for _, t in ipairs(hum:GetPlayingAnimationTracks()) do
                t:AdjustSpeed(DEFAULTS.AnimSpeed)
            end
        end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if hrp then hrp.Anchored = false end
    end
    workspace.Gravity = DEFAULTS.Gravity
    RunService:UnbindFromRenderStep("EgorRun")
end

close.MouseButton1Click:Connect(function()
    resetAll()
    gui:Destroy()
end)

-- Button Factory
local function makeButton(text, y)
    local btn = Instance.new("TextButton", frame)
    btn.Size              = UDim2.new(0,260,0,36)
    btn.Position          = UDim2.new(0,20,0,y)
    btn.BackgroundColor3  = Color3.fromRGB(45,45,48)
    btn.AutoButtonColor   = false
    btn.Font              = Enum.Font.GothamBold
    btn.TextSize          = 14
    btn.TextColor3        = Color3.new(1,1,1)
    btn.Text              = text
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)
    btn.MouseEnter:Connect(function()
        btn:TweenBackgroundColor(Color3.fromRGB(65,65,68), "Out","Quad",.12,true)
    end)
    btn.MouseLeave:Connect(function()
        btn:TweenBackgroundColor(Color3.fromRGB(45,45,48), "Out","Quad",.12,true)
    end)
    return btn
end

-- Egor Mode Button
local egorBtn = makeButton("Egor Mode: OFF", 40)
egorBtn.MouseButton1Click:Connect(function()
    egorOn = not egorOn
    egorBtn.Text = egorOn and "Egor Mode: ON" or "Egor Mode: OFF"
    if egorOn then
        RunService:BindToRenderStep("EgorRun", Enum.RenderPriority.Character.Value+1, function()
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                for _, t in ipairs(hum:GetPlayingAnimationTracks()) do
                    t:AdjustSpeed(DEFAULTS.AnimSpeed)
                end
            end
        end)
    else
        RunService:UnbindFromRenderStep("EgorRun")
        local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            for _, t in ipairs(hum:GetPlayingAnimationTracks()) do
                t:AdjustSpeed(DEFAULTS.AnimSpeed)
            end
        end
    end
end)

-- Freeze Mode Button
local freezeBtn = makeButton("Freeze Mode: OFF", 100)
freezeBtn.MouseButton1Click:Connect(function()
    freezeOn = not freezeOn
    freezeBtn.Text = freezeOn and "Freeze Mode: ON" or "Freeze Mode: OFF"
    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then hrp.Anchored = freezeOn end
end)

-- Inputs
local inputs = {}
local function makeLabel(name, y)
    local lbl = Instance.new("TextLabel", frame)
    lbl.Size               = UDim2.new(0,120,0,18)
    lbl.Position           = UDim2.new(0,20,0,y)
    lbl.BackgroundTransparency = 1
    lbl.Font               = Enum.Font.Gotham
    lbl.TextSize           = 14
    lbl.TextColor3         = Color3.fromRGB(200,200,200)
    lbl.Text               = name
    return lbl
end

local function makeBox(name, y)
    makeLabel(name, y)
    local box = Instance.new("TextBox", frame)
    box.Size               = UDim2.new(0,120,0,28)
    box.Position           = UDim2.new(0,160,0,y)
    box.PlaceholderText    = tostring(DEFAULTS[name])
    box.ClearTextOnFocus   = false
    box.Font               = Enum.Font.Gotham
    box.TextSize           = 14
    box.TextColor3         = Color3.new(1,1,1)
    box.BackgroundColor3   = Color3.fromRGB(45,45,48)
    Instance.new("UICorner", box).CornerRadius = UDim.new(0,6)
    inputs[name] = box
    return box
end

makeBox("WalkSpeed", 160)
makeBox("JumpPower", 208)
makeBox("Gravity", 256)
makeBox("AnimSpeed", 304)

-- Apply numeric inputs
for name, box in pairs(inputs) do
    box.FocusLost:Connect(function()
        local v = tonumber(box.Text)
        if not v then return end
        if name == "WalkSpeed" then
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = v end
        elseif name == "JumpPower" then
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.JumpPower = v end
        elseif name == "Gravity" then
            workspace.Gravity = v
        end
    end)
end

-- Reapply after respawn
Players.LocalPlayer.CharacterAdded:Connect(function()
    wait(0.5)
    if egorOn then
        RunService:BindToRenderStep("EgorRun", Enum.RenderPriority.Character.Value+1, function()
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                for _, t in ipairs(hum:GetPlayingAnimationTracks()) do
                    t:AdjustSpeed(DEFAULTS.AnimSpeed)
                end
            end
        end)
    end
    if freezeOn then
        local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hrp then hrp.Anchored = true end
    end
end)

      -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "FE终极合集",
   Callback = function()
      -- Farewell Infortality.
-- Version: 2.82
-- Instances:
local UltimateFEGui = Instance.new("ScreenGui")
local OpenGui = Instance.new("Frame")
local Open = Instance.new("TextButton")
local Main = Instance.new("Frame")
local Panel1 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local Panel2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Animations = Instance.new("TextButton")
local MachineGunv2 = Instance.new("TextButton")
local OofSound = Instance.new("TextButton")
local FeInfiniteYield = Instance.new("TextButton")
local FeKill = Instance.new("TextButton")
local FeGod = Instance.new("TextButton")
local ChatBypass = Instance.new("TextButton")
local ClickTP = Instance.new("TextButton")
local ChatSpy = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
--Properties:
UltimateFEGui.Name = "Ultimate FE Gui"
UltimateFEGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UltimateFEGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenGui.Name = "OpenGui"
OpenGui.Parent = UltimateFEGui
OpenGui.BackgroundColor3 = Color3.new(1, 0.333333, 0)
OpenGui.BorderColor3 = Color3.new(0.160784, 0.160784, 0.160784)
OpenGui.BorderSizePixel = 4
OpenGui.Position = UDim2.new(0.00546874991, 0, 0.468055546, 0)
OpenGui.Size = UDim2.new(0, 108, 0, 47)

Open.Name = "Open"
Open.Parent = OpenGui
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BackgroundTransparency = 1
Open.Position = UDim2.new(-0.435185194, 0, -0.0851063803, 0)
Open.Size = UDim2.new(0, 200, 0, 50)
Open.Font = Enum.Font.Cartoon
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 40
Open.MouseButton1Down:connect(function()
Main.Visible = true
OpenGui.Visible = false
end)

Main.Name = "Main"
Main.Parent = UltimateFEGui
Main.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.160784)
Main.Position = UDim2.new(0.232354879, 0, 0.324197292, 0)
Main.Size = UDim2.new(0, 685, 0, 364)
Main.Visible = false
Main.Draggable = true
local UserInputService = game:GetService("UserInputService")

local gui = Main

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

Panel1.Name = "Panel1"
Panel1.Parent = Main
Panel1.BackgroundColor3 = Color3.new(1, 0.333333, 0)
Panel1.Position = UDim2.new(-0.00108785147, 0, -0.000992072863, 0)
Panel1.Size = UDim2.new(0, 685, 0, 34)

TextLabel.Parent = Panel1
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.353284657, 0, -0.235294119, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Ultimate FE Gui"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 40

TextButton.Parent = Panel1
TextButton.BackgroundColor3 = Color3.new(0.933333, 0, 0)
TextButton.BackgroundTransparency = 1
TextButton.Position = UDim2.new(0.945985436, 0, 0.0294117667, 0)
TextButton.Size = UDim2.new(0, 37, 0, 31)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 30
TextButton.MouseButton1Down:connect(function()
OpenGui.Visible = true
Main.Visible = false
end)


TextLabel_2.Parent = Panel1
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.353284657, 0, 8.23529434, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.Text = "Made by caioryan8 (v3rm)"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 30

Panel2.Name = "Panel2"
Panel2.Parent = Main
Panel2.BackgroundColor3 = Color3.new(1, 0.333333, 0)
Panel2.Position = UDim2.new(-0.00108785147, 0, 0.905601323, 0)
Panel2.Size = UDim2.new(0, 685, 0, 34)

TextLabel_3.Parent = Panel2
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.353284657, 0, -0.235294119, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.Cartoon
TextLabel_3.Text = "This is my first GUI all the credits go to the respective owners."
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 25

Animations.Name = "Animations"
Animations.Parent = Main
Animations.BackgroundColor3 = Color3.new(1, 0.333333, 0)
Animations.Position = UDim2.new(0.0218978114, 0, 0.156593412, 0)
Animations.Size = UDim2.new(0, 164, 0, 58)
Animations.Font = Enum.Font.SourceSans
Animations.Text = "Animations"
Animations.TextColor3 = Color3.new(1, 1, 1)
Animations.TextScaled = true
Animations.TextSize = 35
Animations.TextWrapped = true
Animations.MouseButton1Down:connect(function()
local Gui = Instance.new("ScreenGui", game.CoreGui)

Gui.Name = "FE Animations"
local Background = Instance.new("Frame",Gui)
Background.Name = "Background"
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(220,190,200)
Background.Transparency = 0.3
Background.BorderSizePixel = 5
Background.Draggable = true
Background.Position = UDim2.new(0,300,0,300)
Background.Size = UDim2.new(0,345,0,190)
local Title = Instance.new("TextLabel",Background)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,0,0,-80)
Title.Size = UDim2.new(0,290,1,0)
Title.Font = "SourceSansLight"
Title.FontSize = "Size18"
Title.Text = "FE Animations [by illremember] IMPROVED"
Title.TextColor3 = Color3.fromRGB(20,20,25)

local BarrelRoll = Instance.new("TextButton", Background)
BarrelRoll.Name = "BarrelRoll"
BarrelRoll.BackgroundColor3 = Color3.fromRGB(20,20,20)
BarrelRoll.BackgroundTransparency = 0.1
BarrelRoll.BorderSizePixel = 0
BarrelRoll.Position = UDim2.new(0,120,0,30)
BarrelRoll.Size = UDim2.new(0,100,0,30)
BarrelRoll.Font = "SourceSansItalic"
BarrelRoll.FontSize = "Size18"
BarrelRoll.Text = "BarrelRoll"
BarrelRoll.TextColor3 = Color3.fromRGB(230,230,230)
BarrelRoll.TextWrapped = true

local Dab = BarrelRoll:Clone()
Dab.Name = "Dab"
Dab.Parent = Background
Dab.Position = UDim2.new(0,120,0,70)
Dab.Text = "Dab"

local Crouch = BarrelRoll:Clone()
Crouch.Name = "Crouch"
Crouch.Parent = Background
Crouch.Position = UDim2.new(0,10,0,110)
Crouch.Text = "Crouch"

local Scream = BarrelRoll:Clone()
Scream.Name = "Scream"
Scream.Parent = Background
Scream.Position = UDim2.new(0,10,0,30)
Scream.Text = "Scream"

local HeadOff = BarrelRoll:Clone()
HeadOff.Name = "HeadOff"
HeadOff.Parent = Background
HeadOff.Position = UDim2.new(0,10,0,70)
HeadOff.Text = "HeadOff"

local LayDown = BarrelRoll:Clone()
LayDown.Name = "LayDown"
LayDown.Parent = Background
LayDown.Position = UDim2.new(0,120,0,110)
LayDown.Text = "LayDown"

local hmm2 = BarrelRoll:Clone()
hmm2.Name = "hmm2"
hmm2.Parent = Background
hmm2.Position = UDim2.new(0,120,0,150)
hmm2.Text = "hmm2"

local HeadTHROW = BarrelRoll:Clone()
HeadTHROW.Name = "HeadTHROW"
HeadTHROW.Parent = Background
HeadTHROW.Position = UDim2.new(0,10,0,150)
HeadTHROW.Size = UDim2.new(0,100,0,30)
HeadTHROW.Text = "HeadTHROW"

local Scared = BarrelRoll:Clone()
Scared.Name = "Scared"
Scared.Parent = Background
Scared.Position = UDim2.new(0,230,0,30)
Scared.Size = UDim2.new(0,100,0,30)
Scared.Text = "Scared"

local WARNING = BarrelRoll:Clone()
WARNING.Name = "WARNING"
WARNING.Parent = Background
WARNING.Position = UDim2.new(0,230,0,70)
WARNING.Size = UDim2.new(0,100,0,30)
WARNING.Text = "WARNING"

local LoopHead = BarrelRoll:Clone()
LoopHead.Name = "LoopHead"
LoopHead.Parent = Background
LoopHead.Position = UDim2.new(0,230,0,110)
LoopHead.Size = UDim2.new(0,100,0,30)
LoopHead.Text = "LoopHead"

local armturbine = BarrelRoll:Clone()
armturbine.Name = "armturbine"
armturbine.Parent = Background
armturbine.Position = UDim2.new(0,230,0,150)
armturbine.Size = UDim2.new(0,100,0,30)
armturbine.Text = "armturbine"

--
 local plr = game.Players.LocalPlayer

local mouse = plr:GetMouse()

lpc = game.Players.LocalPlayer.Character

weld1 = Instance.new("Weld")

BarrelRoll.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "136801964"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

armturbine.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "259438880"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(100)
end
end
end)


LoopHead.MouseButton1Click:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
while wait(0.00703125) do
k:Play()
k:AdjustSpeed(640)
end
end
end
end)

hmm2.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "148840371"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

LayDown.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "282574440"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

Dab.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

Scream.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "180611870"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

HeadTHROW.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

Scared.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "180612465"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

HeadOff.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "121572214"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)

Crouch.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "182724289"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
end)

MachineGunv2.Name = "MachineGunv2"
MachineGunv2.Parent = Main
MachineGunv2.BackgroundColor3 = Color3.new(1, 0.333333, 0)
MachineGunv2.Position = UDim2.new(0.0218978114, 0, 0.640109837, 0)
MachineGunv2.Size = UDim2.new(0, 164, 0, 58)
MachineGunv2.Font = Enum.Font.SourceSans
MachineGunv2.Text = "Machine Gun V2"
MachineGunv2.TextColor3 = Color3.new(1, 1, 1)
MachineGunv2.TextScaled = true
MachineGunv2.TextSize = 35
MachineGunv2.TextWrapped = true
MachineGunv2.MouseButton1Down:connect(function()
repeat wait(.025)
for i,v in pairs(game.Players:GetChildren()) do
v.Character.Head.Splash.TimePosition = .375
v.Character.Head.Splash:Play()
end
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end)

OofSound.Name = "OofSound"
OofSound.Parent = Main
OofSound.BackgroundColor3 = Color3.new(1, 0.333333, 0)
OofSound.Position = UDim2.new(0.0218978114, 0, 0.398351699, 0)
OofSound.Size = UDim2.new(0, 164, 0, 58)
OofSound.Font = Enum.Font.SourceSans
OofSound.Text = "OOF Sound"
OofSound.TextColor3 = Color3.new(1, 1, 1)
OofSound.TextScaled = true
OofSound.TextSize = 35
OofSound.TextWrapped = true
OofSound.MouseButton1Down:connect(function()
local player = game.Players:getChildren()
for i=1,#player do
player[i].Character.Head.Died.Playing = true
end

end)

FeInfiniteYield.Name = "FeInfiniteYield"
FeInfiniteYield.Parent = Main
FeInfiniteYield.BackgroundColor3 = Color3.new(1, 0.333333, 0)
FeInfiniteYield.Position = UDim2.new(0.37956205, 0, 0.156593412, 0)
FeInfiniteYield.Size = UDim2.new(0, 164, 0, 58)
FeInfiniteYield.Font = Enum.Font.SourceSans
FeInfiniteYield.Text = "FE Infinite Yield"
FeInfiniteYield.TextColor3 = Color3.new(1, 1, 1)
FeInfiniteYield.TextScaled = true
FeInfiniteYield.TextSize = 35
FeInfiniteYield.TextWrapped = true
FeInfiniteYield.MouseButton1Down:connect(function()
ver = '2.2'

repeat wait() until game:FindFirstChildOfClass("Players")
Players = game:GetService("Players")
repeat wait() until Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")

local Holder = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Dark = Instance.new("Frame")
local Cmdbar = Instance.new("TextBox")
local Dark_2 = Instance.new("Frame")
local CMDsF = Instance.new("ScrollingFrame")
local SettingsButton = Instance.new("ImageButton")
local Settings = Instance.new("Frame")
local Prefix = Instance.new("TextLabel")
local PrefixBox = Instance.new("TextBox")
local Keybinds = Instance.new("TextLabel")
local Select = Instance.new("TextButton")
local StayOpen = Instance.new("TextLabel")
local Button = Instance.new("Frame")
local On = Instance.new("TextButton")
local Positions = Instance.new("TextLabel")
local Select_8 = Instance.new("TextButton")
local SpawnC = Instance.new("TextLabel")
local Select_2 = Instance.new("TextButton")
local Plugins = Instance.new("TextLabel")
local Select_9 = Instance.new("TextButton")
local Example = Instance.new("TextButton")
local Notification = Instance.new("Frame")
local Dark_3 = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Text_2 = Instance.new("TextLabel")
local CloseButton = Instance.new("ImageButton")
local IntroBackground = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local Credits = Instance.new("TextBox")
local KeybindsFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local SpawnCFrame = Instance.new("Frame")
local Holder_6 = Instance.new("ScrollingFrame")
local Close_5 = Instance.new("TextButton")
local Add = Instance.new("TextButton")
local Delete = Instance.new("TextButton")
local Holder_2 = Instance.new("ScrollingFrame")
local Example_2 = Instance.new("Frame")
local Text_3 = Instance.new("TextLabel")
local Delete_2 = Instance.new("TextButton")
local KeybindEditor = Instance.new("Frame")
local background_2 = Instance.new("Frame")
local Dark_4 = Instance.new("Frame")
local Directions = Instance.new("TextLabel")
local BindTo = Instance.new("TextButton")
local Add_2 = Instance.new("TextButton")
local Cmdbar_2 = Instance.new("TextBox")
local Toggles = Instance.new("ScrollingFrame")
local Fly = Instance.new("TextLabel")
local Select_3 = Instance.new("TextButton")
local Noclip = Instance.new("TextLabel")
local Select_4 = Instance.new("TextButton")
local Float = Instance.new("TextLabel")
local Select_5 = Instance.new("TextButton")
local ClickTP = Instance.new("TextLabel")
local Select_6 = Instance.new("TextButton")
local Xray = Instance.new("TextLabel")
local Select_10 = Instance.new("TextButton")
local Dark_7 = Instance.new("Frame")
local shadow_2 = Instance.new("Frame")
local PopupText_2 = Instance.new("TextLabel")
local Exit_2 = Instance.new("ImageButton")
local SpawnCEditor = Instance.new("Frame")
local background_4 = Instance.new("Frame")
local Cmdbar_3 = Instance.new("TextBox")
local Dark_10 = Instance.new("Frame")
local Add_5 = Instance.new("TextButton")
local DelayNum = Instance.new("TextBox")
local Delay = Instance.new("TextLabel")
local Directions_3 = Instance.new("TextLabel")
local Dark_11 = Instance.new("Frame")
local shadow_4 = Instance.new("Frame")
local PopupText_4 = Instance.new("TextLabel")
local Exit_4 = Instance.new("ImageButton")
local PositionsFrame = Instance.new("Frame")
local Close_3 = Instance.new("TextButton")
local Delete_5 = Instance.new("TextButton")
local Holder_4 = Instance.new("ScrollingFrame")
local Example_4 = Instance.new("Frame")
local Text_5 = Instance.new("TextLabel")
local Delete_6 = Instance.new("TextButton")
local TP = Instance.new("TextButton")
local AliasesFrame = Instance.new("Frame")
local Close_2 = Instance.new("TextButton")
local Delete_3 = Instance.new("TextButton")
local Holder_3 = Instance.new("ScrollingFrame")
local Example_3 = Instance.new("Frame")
local Text_4 = Instance.new("TextLabel")
local Delete_4 = Instance.new("TextButton")
local Aliases = Instance.new("TextLabel")
local Select_7 = Instance.new("TextButton")
local PluginsFrame = Instance.new("Frame")
local Close_4 = Instance.new("TextButton")
local Add_4 = Instance.new("TextButton")
local Delete_8 = Instance.new("TextButton")
local Add_3 = Instance.new("TextButton")
local Holder_5 = Instance.new("ScrollingFrame")
local Example_5 = Instance.new("Frame")
local Text_6 = Instance.new("TextLabel")
local Delete_7 = Instance.new("TextButton")
local PluginEditor = Instance.new("Frame")
local background_3 = Instance.new("Frame")
local Dark_8 = Instance.new("Frame")
local Dark_9 = Instance.new("Frame")
local Img = Instance.new("ImageButton")
local AddPlugin = Instance.new("TextButton")
local FileName = Instance.new("TextBox")
local About = Instance.new("TextLabel")
local Directions_2 = Instance.new("TextLabel")
local shadow_3 = Instance.new("Frame")
local PopupText_3 = Instance.new("TextLabel")
local Exit_3 = Instance.new("ImageButton")
local logsDrag = Instance.new("Frame")
local shadow = Instance.new("Frame")
local Hide = Instance.new("ImageButton")
local PopupText = Instance.new("TextLabel")
local Exit = Instance.new("ImageButton")
local scroll = Instance.new("ScrollingFrame")
local background = Instance.new("Frame")
local Dark_6 = Instance.new("Frame")
local Clear = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")
local AliasHint = Instance.new("TextLabel")
local PluginsHint = Instance.new("TextLabel")
local PositionsHint = Instance.new("TextLabel")

local PARENT
if game:GetService("CoreGui"):FindFirstChild('RobloxGui') then
	PARENT = game:GetService("CoreGui").RobloxGui
else
	PARENT = game:GetService("CoreGui")
end

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

Holder.Name = randomString()
Holder.Parent = PARENT
Holder.Active = true
Holder.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Holder.BackgroundTransparency = 0.20000000298023
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(1, -250, 1, -220)
Holder.Size = UDim2.new(0, 250, 0, 220)

Title.Name = "Title"
Title.Parent = Holder
Title.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 250, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.TextSize = 20
Title.Text = "Infinite Yield FE"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextStrokeTransparency = 0

Dark.Name = "Dark"
Dark.Parent = Holder
Dark.Active = true
Dark.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Dark.BorderSizePixel = 0
Dark.Position = UDim2.new(0, 0, 0, 45)
Dark.Size = UDim2.new(0, 250, 0, 175)

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = Holder
Cmdbar.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Cmdbar.BackgroundTransparency = 1
Cmdbar.BorderSizePixel = 0
Cmdbar.Position = UDim2.new(0, 0, 0, 25)
Cmdbar.Size = UDim2.new(0, 250, 0, 20)
Cmdbar.Font = Enum.Font.SourceSans
Cmdbar.FontSize = Enum.FontSize.Size18
Cmdbar.Text = "Command Bar"
Cmdbar.TextColor3 = Color3.new(1, 1, 1)
Cmdbar.TextScaled = true
Cmdbar.TextWrapped = true
Cmdbar.TextStrokeTransparency = 0

Dark_2.Name = "Dark"
Dark_2.Parent = Holder
Dark_2.Active = true
Dark_2.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Dark_2.BorderSizePixel = 0
Dark_2.Position = UDim2.new(0, 0, 0, 20)
Dark_2.Size = UDim2.new(0, 250, 0, 5)

CMDsF.Name = "CMDs"
CMDsF.Parent = Holder
CMDsF.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
CMDsF.BackgroundTransparency = 1
CMDsF.BorderSizePixel = 0
CMDsF.Position = UDim2.new(0, 0, 0, 50)
CMDsF.Size = UDim2.new(0, 250, 0, 170)
CMDsF.BottomImage = "rbxasset://textures/blackBkg_square.png"
CMDsF.CanvasSize = UDim2.new(0, 0, 0, 0)
CMDsF.MidImage = "rbxasset://textures/blackBkg_square.png"
CMDsF.ScrollBarThickness = 8
CMDsF.TopImage = "rbxasset://textures/blackBkg_square.png"

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Holder
SettingsButton.BackgroundColor3 = Color3.new(1, 1, 1)
SettingsButton.BackgroundTransparency = 1
SettingsButton.Position = UDim2.new(0, 230, 0, 25)
SettingsButton.Size = UDim2.new(0, 20, 0, 20)
SettingsButton.Image = "rbxassetid://1204397029"

Settings.Name = "Settings"
Settings.Parent = Holder
Settings.Active = true
Settings.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0, 0, 0, 220)
Settings.Size = UDim2.new(0, 250, 0, 175)

Prefix.Name = "Prefix"
Prefix.Parent = Settings
Prefix.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Prefix.BackgroundTransparency = 0.5
Prefix.BorderSizePixel = 0
Prefix.Position = UDim2.new(0, 0, 0, 5)
Prefix.Size = UDim2.new(0, 250, 0, 20)
Prefix.Font = Enum.Font.SourceSans
Prefix.FontSize = Enum.FontSize.Size14
Prefix.Text = "    Prefix"
Prefix.TextColor3 = Color3.new(1, 1, 1)
Prefix.TextXAlignment = Enum.TextXAlignment.Left

PrefixBox.Name = "PrefixBox"
PrefixBox.Parent = Prefix
PrefixBox.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
PrefixBox.BorderSizePixel = 0
PrefixBox.Position = UDim2.new(0, 230, 0, 0)
PrefixBox.Size = UDim2.new(0, 20, 0, 20)
PrefixBox.Font = Enum.Font.SourceSansBold
PrefixBox.FontSize = Enum.FontSize.Size14
PrefixBox.Text = ''
PrefixBox.TextColor3 = Color3.new(0, 0, 0)

Keybinds.Name = "Keybinds"
Keybinds.Parent = Settings
Keybinds.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Keybinds.BackgroundTransparency = 0.5
Keybinds.BorderSizePixel = 0
Keybinds.Position = UDim2.new(0, 0, 0, 55)
Keybinds.Size = UDim2.new(0, 250, 0, 20)
Keybinds.Font = Enum.Font.SourceSans
Keybinds.FontSize = Enum.FontSize.Size14
Keybinds.Text = "    Keybinds"
Keybinds.TextColor3 = Color3.new(1, 1, 1)
Keybinds.TextXAlignment = Enum.TextXAlignment.Left

Select.Name = "Select"
Select.Parent = Keybinds
Select.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select.BorderSizePixel = 0
Select.Position = UDim2.new(0, 200, 0, 0)
Select.Size = UDim2.new(0, 50, 0, 20)
Select.Font = Enum.Font.SourceSans
Select.FontSize = Enum.FontSize.Size14
Select.Text = "Edit"
Select.TextColor3 = Color3.new(0, 0, 0)

Aliases.Name = "Aliases"
Aliases.Parent = Settings
Aliases.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Aliases.BackgroundTransparency = 0.5
Aliases.BorderSizePixel = 0
Aliases.Position = UDim2.new(0, 0, 0, 80)
Aliases.Size = UDim2.new(0, 250, 0, 20)
Aliases.Font = Enum.Font.SourceSans
Aliases.FontSize = Enum.FontSize.Size14
Aliases.Text = "    Aliases"
Aliases.TextColor3 = Color3.new(1, 1, 1)
Aliases.TextXAlignment = Enum.TextXAlignment.Left

Select_7.Name = "Select"
Select_7.Parent = Aliases
Select_7.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_7.BorderSizePixel = 0
Select_7.Position = UDim2.new(0, 200, 0, 0)
Select_7.Size = UDim2.new(0, 50, 0, 20)
Select_7.Font = Enum.Font.SourceSans
Select_7.FontSize = Enum.FontSize.Size14
Select_7.Text = "Edit"
Select_7.TextColor3 = Color3.new(0, 0, 0)

StayOpen.Name = "StayOpen"
StayOpen.Parent = Settings
StayOpen.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
StayOpen.BackgroundTransparency = 0.5
StayOpen.BorderSizePixel = 0
StayOpen.Position = UDim2.new(0, 0, 0, 30)
StayOpen.Size = UDim2.new(0, 250, 0, 20)
StayOpen.Font = Enum.Font.SourceSans
StayOpen.FontSize = Enum.FontSize.Size14
StayOpen.Text = "    Keep Menu Open"
StayOpen.TextColor3 = Color3.new(1, 1, 1)
StayOpen.TextXAlignment = Enum.TextXAlignment.Left

Button.Name = "Button"
Button.Parent = StayOpen
Button.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 230, 0, 0)
Button.Size = UDim2.new(0, 20, 0, 20)

On.Name = "On"
On.Parent = Button
On.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
On.BackgroundTransparency = 1
On.BorderSizePixel = 0
On.Position = UDim2.new(0, 2, 0, 2)
On.Size = UDim2.new(0, 16, 0, 16)
On.Font = Enum.Font.SourceSans
On.FontSize = Enum.FontSize.Size14
On.Text = ""
On.TextColor3 = Color3.new(0, 0, 0)

Positions.Name = "Positions"
Positions.Parent = Settings
Positions.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Positions.BackgroundTransparency = 0.5
Positions.BorderSizePixel = 0
Positions.Position = UDim2.new(0, 0, 0, 105)
Positions.Size = UDim2.new(0, 250, 0, 20)
Positions.Font = Enum.Font.SourceSans
Positions.FontSize = Enum.FontSize.Size14
Positions.Text = "    Waypoints / Positions"
Positions.TextColor3 = Color3.new(1, 1, 1)
Positions.TextXAlignment = Enum.TextXAlignment.Left

Select_8.Name = "Select"
Select_8.Parent = Positions
Select_8.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_8.BorderSizePixel = 0
Select_8.Position = UDim2.new(0, 200, 0, 0)
Select_8.Size = UDim2.new(0, 50, 0, 20)
Select_8.Font = Enum.Font.SourceSans
Select_8.FontSize = Enum.FontSize.Size14
Select_8.Text = "Edit / TP"
Select_8.TextColor3 = Color3.new(0, 0, 0)

SpawnC.Name = "SpawnC"
SpawnC.Parent = Settings
SpawnC.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
SpawnC.BackgroundTransparency = 0.5
SpawnC.BorderSizePixel = 0
SpawnC.Position = UDim2.new(0, 0, 0, 155)
SpawnC.Size = UDim2.new(0, 250, 0, 20)
SpawnC.Font = Enum.Font.SourceSans
SpawnC.FontSize = Enum.FontSize.Size14
SpawnC.Text = "    Spawn Commands"
SpawnC.TextColor3 = Color3.new(1, 1, 1)
SpawnC.TextXAlignment = Enum.TextXAlignment.Left

Select_2.Name = "Select"
Select_2.Parent = SpawnC
Select_2.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_2.BorderSizePixel = 0
Select_2.Position = UDim2.new(0, 200, 0, 0)
Select_2.Size = UDim2.new(0, 50, 0, 20)
Select_2.Font = Enum.Font.SourceSans
Select_2.FontSize = Enum.FontSize.Size14
Select_2.Text = "Edit"
Select_2.TextColor3 = Color3.new(0, 0, 0)

Plugins.Name = "Plugins"
Plugins.Parent = Settings
Plugins.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Plugins.BackgroundTransparency = 0.5
Plugins.BorderSizePixel = 0
Plugins.Position = UDim2.new(0, 0, 0, 130)
Plugins.Size = UDim2.new(0, 250, 0, 20)
Plugins.Font = Enum.Font.SourceSans
Plugins.FontSize = Enum.FontSize.Size14
Plugins.Text = "    Plugins"
Plugins.TextColor3 = Color3.new(1, 1, 1)
Plugins.TextXAlignment = Enum.TextXAlignment.Left

Select_9.Name = "Select"
Select_9.Parent = Plugins
Select_9.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_9.BorderSizePixel = 0
Select_9.Position = UDim2.new(0, 200, 0, 0)
Select_9.Size = UDim2.new(0, 50, 0, 20)
Select_9.Font = Enum.Font.SourceSans
Select_9.FontSize = Enum.FontSize.Size14
Select_9.Text = "Edit"
Select_9.TextColor3 = Color3.new(0, 0, 0)

Example.Name = "Example"
Example.Parent = Holder
Example.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Example.BackgroundTransparency = 1
Example.BorderSizePixel = 0
Example.Size = UDim2.new(0, 190, 0, 20)
Example.Visible = false
Example.Font = Enum.Font.SourceSansBold
Example.FontSize = Enum.FontSize.Size18
Example.Text = "Example"
Example.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Example.TextStrokeTransparency = 0
Example.TextXAlignment = Enum.TextXAlignment.Left

Notification.Name = randomString()
Notification.Parent = PARENT
Notification.Active = true
Notification.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Notification.BackgroundTransparency = 0
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(1, -500, 1, 20)
Notification.Size = UDim2.new(0, 250, 0, 100)

Dark_3.Name = "Dark"
Dark_3.Parent = Notification
Dark_3.Active = true
Dark_3.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_3.BackgroundTransparency = 0.5
Dark_3.BorderSizePixel = 0
Dark_3.Position = UDim2.new(0, 0, 0, 20)
Dark_3.Size = UDim2.new(0, 250, 0, 5)

Title_2.Name = "Title"
Title_2.Parent = Notification
Title_2.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Title_2.BackgroundTransparency = 1
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 250, 0, 20)
Title_2.Font = Enum.Font.SourceSans
Title_2.TextSize = 20
Title_2.Text = "Notification Title"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.TextStrokeTransparency = 0

Text_2.Name = "Text"
Text_2.Parent = Notification
Text_2.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Text_2.BackgroundTransparency = 1
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0, 5, 0, 25)
Text_2.Size = UDim2.new(0, 240, 0, 75)
Text_2.Font = Enum.Font.SourceSans
Text_2.FontSize = Enum.FontSize.Size18
Text_2.Text = "Notification Text"
Text_2.TextColor3 = Color3.new(1, 1, 1)
Text_2.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = Notification
CloseButton.BackgroundColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(0, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Image = "rbxassetid://2132544126"

IntroBackground.Name = "IntroBackground"
IntroBackground.Parent = Holder
IntroBackground.Active = true
IntroBackground.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
IntroBackground.BorderSizePixel = 0
IntroBackground.Position = UDim2.new(0, 0, 0, 45)
IntroBackground.Size = UDim2.new(0, 250, 0, 175)
IntroBackground.ZIndex = 4

Logo.Name = "Logo"
Logo.Parent = Holder
Logo.BackgroundColor3 = Color3.new(1, 1, 1)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0, 125, 0, 127)
Logo.Size = UDim2.new(0, 10, 0, 10)
Logo.Image = "rbxassetid://1352543873"
Logo.ImageTransparency = 0
Logo.ZIndex = 5

Credits.Name = "Credits"
Credits.Parent = Holder
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0.9, 30)
Credits.Size = UDim2.new(0, 250, 0, 20)
Credits.Font = Enum.Font.SourceSansLight
Credits.FontSize = Enum.FontSize.Size18
Credits.Text = "Edge // Zwolf // Moon"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.ZIndex = 5

KeybindsFrame.Name = "KeybindsFrame"
KeybindsFrame.Parent = Settings
KeybindsFrame.Active = true
KeybindsFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
KeybindsFrame.BorderSizePixel = 0
KeybindsFrame.Position = UDim2.new(0, 0, 0, 175)
KeybindsFrame.Size = UDim2.new(0, 250, 0, 175)

Close.Name = "Close"
Close.Parent = KeybindsFrame
Close.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 205, 0, 150)
Close.Size = UDim2.new(0, 40, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = "Close"
Close.TextColor3 = Color3.new(0, 0, 0)

Add.Name = "Add"
Add.Parent = KeybindsFrame
Add.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Add.BorderSizePixel = 0
Add.Position = UDim2.new(0, 5, 0, 150)
Add.Size = UDim2.new(0, 40, 0, 20)
Add.Font = Enum.Font.SourceSans
Add.FontSize = Enum.FontSize.Size14
Add.Text = "Add"
Add.TextColor3 = Color3.new(0, 0, 0)

Delete.Name = "Delete"
Delete.Parent = KeybindsFrame
Delete.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0, 50, 0, 150)
Delete.Size = UDim2.new(0, 40, 0, 20)
Delete.Font = Enum.Font.SourceSans
Delete.FontSize = Enum.FontSize.Size14
Delete.Text = "Clear"
Delete.TextColor3 = Color3.new(0, 0, 0)

SpawnCFrame.Name = "SpawnCFrame"
SpawnCFrame.Parent = Settings
SpawnCFrame.Active = true
SpawnCFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
SpawnCFrame.BorderSizePixel = 0
SpawnCFrame.Position = UDim2.new(0, 0, 0, 175)
SpawnCFrame.Size = UDim2.new(0, 250, 0, 175)

Holder_6.Name = "Holder"
Holder_6.Parent = SpawnCFrame
Holder_6.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Holder_6.BackgroundTransparency = 1
Holder_6.BorderSizePixel = 0
Holder_6.Position = UDim2.new(0, 0, 0, 0)
Holder_6.Selectable = false
Holder_6.Size = UDim2.new(0, 250, 0, 145)
Holder_6.BottomImage = "rbxasset://textures/blackBkg_square.png"
Holder_6.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_6.MidImage = "rbxasset://textures/blackBkg_square.png"
Holder_6.ScrollBarThickness = 8
Holder_6.TopImage = "rbxasset://textures/blackBkg_square.png"

Close_5.Name = "Close"
Close_5.Parent = SpawnCFrame
Close_5.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Close_5.BorderSizePixel = 0
Close_5.Position = UDim2.new(0, 205, 0, 150)
Close_5.Size = UDim2.new(0, 40, 0, 20)
Close_5.Font = Enum.Font.SourceSans
Close_5.FontSize = Enum.FontSize.Size14
Close_5.Text = "Close"
Close_5.TextColor3 = Color3.new(0, 0, 0)

Add_4.Name = "Add"
Add_4.Parent = SpawnCFrame
Add_4.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Add_4.BorderSizePixel = 0
Add_4.Position = UDim2.new(0, 5, 0, 150)
Add_4.Size = UDim2.new(0, 40, 0, 20)
Add_4.Font = Enum.Font.SourceSans
Add_4.FontSize = Enum.FontSize.Size14
Add_4.Text = "Add"
Add_4.TextColor3 = Color3.new(0, 0, 0)

Delete_8.Name = "Delete"
Delete_8.Parent = SpawnCFrame
Delete_8.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_8.BorderSizePixel = 0
Delete_8.Position = UDim2.new(0, 50, 0, 150)
Delete_8.Size = UDim2.new(0, 40, 0, 20)
Delete_8.Font = Enum.Font.SourceSans
Delete_8.FontSize = Enum.FontSize.Size14
Delete_8.Text = "Clear"
Delete_8.TextColor3 = Color3.new(0, 0, 0)

Holder_2.Name = "Holder"
Holder_2.Parent = KeybindsFrame
Holder_2.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Holder_2.BackgroundTransparency = 1
Holder_2.BorderSizePixel = 0
Holder_2.Position = UDim2.new(0, 0, 0, 0)
Holder_2.Size = UDim2.new(0, 250, 0, 145)
Holder_2.BottomImage = "rbxasset://textures/blackBkg_square.png"
Holder_2.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_2.MidImage = "rbxasset://textures/blackBkg_square.png"
Holder_2.ScrollBarThickness = 0
Holder_2.TopImage = "rbxasset://textures/blackBkg_square.png"

Example_2.Name = "Example"
Example_2.Parent = KeybindsFrame
Example_2.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Example_2.BackgroundTransparency = 0.5
Example_2.BorderSizePixel = 0
Example_2.Size = UDim2.new(0, 10, 0, 20)
Example_2.Visible = false

Text_3.Name = "Text"
Text_3.Parent = Example_2
Text_3.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Text_3.BackgroundTransparency = 0.5
Text_3.BorderSizePixel = 0
Text_3.Position = UDim2.new(0, 10, 0, 0)
Text_3.Size = UDim2.new(0, 240, 0, 20)
Text_3.Font = Enum.Font.SourceSans
Text_3.FontSize = Enum.FontSize.Size14
Text_3.Text = "nom"
Text_3.TextColor3 = Color3.new(1, 1, 1)
Text_3.TextXAlignment = Enum.TextXAlignment.Left

Delete_2.Name = "Delete"
Delete_2.Parent = Text_3
Delete_2.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_2.BorderSizePixel = 0
Delete_2.Position = UDim2.new(0, 200, 0, 0)
Delete_2.Size = UDim2.new(0, 40, 0, 20)
Delete_2.Font = Enum.Font.SourceSans
Delete_2.FontSize = Enum.FontSize.Size14
Delete_2.Text = "Delete"
Delete_2.TextColor3 = Color3.new(0, 0, 0)

KeybindEditor.Name = randomString()
KeybindEditor.Parent = PARENT
KeybindEditor.Active = true
KeybindEditor.BackgroundColor3 = Color3.new(1, 1, 1)
KeybindEditor.BackgroundTransparency = 1
KeybindEditor.Position = UDim2.new(0.5, -180, 0, -400)
KeybindEditor.Size = UDim2.new(0, 360, 0, 20)
KeybindEditor.ZIndex = 4

background_2.Name = "background"
background_2.Parent = KeybindEditor
background_2.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
background_2.BorderSizePixel = 0
background_2.Position = UDim2.new(0, 0, 0, 20)
background_2.Size = UDim2.new(0, 360, 0, 185)

Dark_4.Name = "Dark"
Dark_4.Parent = background_2
Dark_4.Active = true
Dark_4.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_4.BackgroundTransparency = 0.5
Dark_4.BorderSizePixel = 0
Dark_4.Position = UDim2.new(0, 135, 0, 5)
Dark_4.Size = UDim2.new(0, 5, 0, 180)

Directions.Name = "Directions"
Directions.Parent = background_2
Directions.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Directions.BackgroundTransparency = 1
Directions.BorderSizePixel = 0
Directions.Position = UDim2.new(0, 10, 0, 15)
Directions.Size = UDim2.new(0, 115, 0, 90)
Directions.Font = Enum.Font.SourceSansBold
Directions.FontSize = Enum.FontSize.Size14
Directions.Text = "Click the button below and press a key/mouse button. Then select what you want to bind it to."
Directions.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Directions.TextStrokeTransparency = 0
Directions.TextWrapped = true
Directions.TextYAlignment = Enum.TextYAlignment.Top

BindTo.Name = "BindTo"
BindTo.Parent = background_2
BindTo.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
BindTo.BackgroundTransparency = 0.5
BindTo.BorderSizePixel = 0
BindTo.Position = UDim2.new(0, 10, 0, 95)
BindTo.Size = UDim2.new(0, 115, 0, 75)
BindTo.Font = Enum.Font.SourceSans
BindTo.FontSize = Enum.FontSize.Size18
BindTo.Text = "Click to bind"
BindTo.TextColor3 = Color3.new(1, 1, 1)
BindTo.TextStrokeTransparency = 0

Add_2.Name = "Add"
Add_2.Parent = background_2
Add_2.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Add_2.BackgroundTransparency = 0.5
Add_2.BorderSizePixel = 0
Add_2.Position = UDim2.new(0, 310, 0, 20)
Add_2.Size = UDim2.new(0, 40, 0, 20)
Add_2.Font = Enum.Font.SourceSans
Add_2.FontSize = Enum.FontSize.Size18
Add_2.Text = "Add"
Add_2.TextColor3 = Color3.new(1, 1, 1)
Add_2.TextStrokeTransparency = 0

Cmdbar_2.Name = "Cmdbar"
Cmdbar_2.Parent = background_2
Cmdbar_2.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Cmdbar_2.BackgroundTransparency = 0.5
Cmdbar_2.BorderSizePixel = 0
Cmdbar_2.Position = UDim2.new(0, 150, 0, 20)
Cmdbar_2.Size = UDim2.new(0, 150, 0, 20)
Cmdbar_2.Font = Enum.Font.SourceSans
Cmdbar_2.FontSize = Enum.FontSize.Size18
Cmdbar_2.Text = "Command"
Cmdbar_2.TextColor3 = Color3.new(1, 1, 1)
Cmdbar_2.TextScaled = true
Cmdbar_2.TextStrokeTransparency = 0
Cmdbar_2.TextWrapped = true

Toggles.Name = "Toggles"
Toggles.Parent = background_2
Toggles.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Toggles.BackgroundTransparency = 1
Toggles.BorderSizePixel = 0
Toggles.Position = UDim2.new(0, 150, 0, 50)
Toggles.Size = UDim2.new(0, 200, 0, 120)
Toggles.BottomImage = "rbxasset://textures/blackBkg_square.png"
Toggles.CanvasSize = UDim2.new(0, 0, 0, 0)
Toggles.MidImage = "rbxasset://textures/blackBkg_square.png"
Toggles.ScrollBarThickness = 8
Toggles.TopImage = "rbxasset://textures/blackBkg_square.png"

Fly.Name = "Fly"
Fly.Parent = Toggles
Fly.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Fly.BackgroundTransparency = 0.5
Fly.BorderSizePixel = 0
Fly.Size = UDim2.new(0, 200, 0, 20)
Fly.Font = Enum.Font.SourceSans
Fly.FontSize = Enum.FontSize.Size14
Fly.Text = "    Toggle Fly"
Fly.TextColor3 = Color3.new(1, 1, 1)
Fly.TextXAlignment = Enum.TextXAlignment.Left

Select_3.Name = "Select"
Select_3.Parent = Fly
Select_3.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_3.BorderSizePixel = 0
Select_3.Position = UDim2.new(0, 160, 0, 0)
Select_3.Size = UDim2.new(0, 40, 0, 20)
Select_3.Font = Enum.Font.SourceSans
Select_3.FontSize = Enum.FontSize.Size14
Select_3.Text = "Add"
Select_3.TextColor3 = Color3.new(0, 0, 0)

Noclip.Name = "Noclip"
Noclip.Parent = Toggles
Noclip.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Noclip.BackgroundTransparency = 0.5
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0, 0, 0, 25)
Noclip.Size = UDim2.new(0, 200, 0, 20)
Noclip.Font = Enum.Font.SourceSans
Noclip.FontSize = Enum.FontSize.Size14
Noclip.Text = "    Toggle Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextXAlignment = Enum.TextXAlignment.Left

Select_4.Name = "Select"
Select_4.Parent = Noclip
Select_4.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_4.BorderSizePixel = 0
Select_4.Position = UDim2.new(0, 160, 0, 0)
Select_4.Size = UDim2.new(0, 40, 0, 20)
Select_4.Font = Enum.Font.SourceSans
Select_4.FontSize = Enum.FontSize.Size14
Select_4.Text = "Add"
Select_4.TextColor3 = Color3.new(0, 0, 0)

Float.Name = "Float"
Float.Parent = Toggles
Float.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Float.BackgroundTransparency = 0.5
Float.BorderSizePixel = 0
Float.Position = UDim2.new(0, 0, 0, 50)
Float.Size = UDim2.new(0, 200, 0, 20)
Float.Font = Enum.Font.SourceSans
Float.FontSize = Enum.FontSize.Size14
Float.Text = "    Toggle Float"
Float.TextColor3 = Color3.new(1, 1, 1)
Float.TextXAlignment = Enum.TextXAlignment.Left

Select_5.Name = "Select"
Select_5.Parent = Float
Select_5.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_5.BorderSizePixel = 0
Select_5.Position = UDim2.new(0, 160, 0, 0)
Select_5.Size = UDim2.new(0, 40, 0, 20)
Select_5.Font = Enum.Font.SourceSans
Select_5.FontSize = Enum.FontSize.Size14
Select_5.Text = "Add"
Select_5.TextColor3 = Color3.new(0, 0, 0)

ClickTP.Name = "Click TP"
ClickTP.Parent = Toggles
ClickTP.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
ClickTP.BackgroundTransparency = 0.5
ClickTP.BorderSizePixel = 0
ClickTP.Position = UDim2.new(0, 0, 0, 75)
ClickTP.Size = UDim2.new(0, 200, 0, 20)
ClickTP.Font = Enum.Font.SourceSans
ClickTP.FontSize = Enum.FontSize.Size14
ClickTP.Text = "    Click TP (Hold Key & Click)"
ClickTP.TextColor3 = Color3.new(1, 1, 1)
ClickTP.TextXAlignment = Enum.TextXAlignment.Left

Select_6.Name = "Select"
Select_6.Parent = ClickTP
Select_6.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_6.BorderSizePixel = 0
Select_6.Position = UDim2.new(0, 160, 0, 0)
Select_6.Size = UDim2.new(0, 40, 0, 20)
Select_6.Font = Enum.Font.SourceSans
Select_6.FontSize = Enum.FontSize.Size14
Select_6.Text = "Add"
Select_6.TextColor3 = Color3.new(0, 0, 0)

Xray.Name = "Xray"
Xray.Parent = Toggles
Xray.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Xray.BackgroundTransparency = 0.5
Xray.BorderSizePixel = 0
Xray.Position = UDim2.new(0, 0, 0, 100)
Xray.Size = UDim2.new(0, 200, 0, 20)
Xray.Font = Enum.Font.SourceSans
Xray.FontSize = Enum.FontSize.Size14
Xray.Text = "    Toggle Xray"
Xray.TextColor3 = Color3.new(1, 1, 1)
Xray.TextXAlignment = Enum.TextXAlignment.Left

Select_10.Name = "Select"
Select_10.Parent = Xray
Select_10.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Select_10.BorderSizePixel = 0
Select_10.Position = UDim2.new(0, 160, 0, 0)
Select_10.Size = UDim2.new(0, 40, 0, 20)
Select_10.Font = Enum.Font.SourceSans
Select_10.FontSize = Enum.FontSize.Size14
Select_10.Text = "Add"
Select_10.TextColor3 = Color3.new(0, 0, 0)

Dark_7.Name = "Dark"
Dark_7.Parent = background_2
Dark_7.Active = true
Dark_7.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_7.BackgroundTransparency = 0.5
Dark_7.BorderSizePixel = 0
Dark_7.Size = UDim2.new(0, 360, 0, 5)

shadow_2.Name = "shadow"
shadow_2.Parent = KeybindEditor
shadow_2.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
shadow_2.BorderColor3 = Color3.new(0, 0, 0)
shadow_2.BorderSizePixel = 0
shadow_2.Size = UDim2.new(0, 360, 0, 20)
shadow_2.ZIndex = 4

PopupText_2.Name = "PopupText"
PopupText_2.Parent = shadow_2
PopupText_2.BackgroundTransparency = 1
PopupText_2.Position = UDim2.new(0, 51, 0, 0)
PopupText_2.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
PopupText_2.ZIndex = 4
PopupText_2.Font = Enum.Font.SourceSans
PopupText_2.TextSize = 20
PopupText_2.Text = "Set Keybinds"
PopupText_2.TextColor3 = Color3.new(1, 1, 1)
PopupText_2.TextStrokeTransparency = 0
PopupText_2.TextWrapped = true

Exit_2.Name = "Exit"
Exit_2.Parent = shadow_2
Exit_2.BackgroundColor3 = Color3.new(1, 1, 1)
Exit_2.BackgroundTransparency = 1
Exit_2.Size = UDim2.new(0, 20, 0, 20)
Exit_2.ZIndex = 4
Exit_2.Image = "rbxassetid://2132544126"

SpawnCEditor.Name = randomString()
SpawnCEditor.Parent = PARENT
SpawnCEditor.Active = true
SpawnCEditor.BackgroundColor3 = Color3.new(1, 1, 1)
SpawnCEditor.BackgroundTransparency = 1
SpawnCEditor.Position = UDim2.new(0.5, -180, 0, -400)
SpawnCEditor.Size = UDim2.new(0, 360, 0, 20)
SpawnCEditor.ZIndex = 4

background_4.Name = "background"
background_4.Parent = SpawnCEditor
background_4.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
background_4.BorderSizePixel = 0
background_4.Position = UDim2.new(0, 0, 0, 20)
background_4.Size = UDim2.new(0, 360, 0, 75)

Cmdbar_3.Name = "Cmdbar"
Cmdbar_3.Parent = background_4
Cmdbar_3.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Cmdbar_3.BackgroundTransparency = 0.5
Cmdbar_3.BorderSizePixel = 0
Cmdbar_3.Position = UDim2.new(0, 150, 0, 45)
Cmdbar_3.Size = UDim2.new(0, 150, 0, 20)
Cmdbar_3.Font = Enum.Font.SourceSans
Cmdbar_3.FontSize = Enum.FontSize.Size18
Cmdbar_3.Text = "Command"
Cmdbar_3.TextColor3 = Color3.new(1, 1, 1)
Cmdbar_3.TextScaled = true
Cmdbar_3.TextStrokeTransparency = 0
Cmdbar_3.TextWrapped = true

Dark_10.Name = "Dark"
Dark_10.Parent = background_4
Dark_10.Active = true
Dark_10.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_10.BackgroundTransparency = 0.5
Dark_10.BorderSizePixel = 0
Dark_10.Size = UDim2.new(0, 360, 0, 5)

Add_5.Name = "Add"
Add_5.Parent = background_4
Add_5.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Add_5.BackgroundTransparency = 0.5
Add_5.BorderSizePixel = 0
Add_5.Position = UDim2.new(0, 310, 0, 45)
Add_5.Size = UDim2.new(0, 40, 0, 20)
Add_5.Font = Enum.Font.SourceSans
Add_5.FontSize = Enum.FontSize.Size18
Add_5.Text = "Add"
Add_5.TextColor3 = Color3.new(1, 1, 1)
Add_5.TextStrokeTransparency = 0

DelayNum.Name = "DelayNum"
DelayNum.Parent = background_4
DelayNum.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
DelayNum.BackgroundTransparency = 0.5
DelayNum.BorderSizePixel = 0
DelayNum.Position = UDim2.new(0, 310, 0, 15)
DelayNum.Size = UDim2.new(0, 40, 0, 20)
DelayNum.Font = Enum.Font.SourceSans
DelayNum.FontSize = Enum.FontSize.Size18
DelayNum.Text = "0"
DelayNum.TextColor3 = Color3.new(1, 1, 1)
DelayNum.TextScaled = true
DelayNum.TextStrokeTransparency = 0
DelayNum.TextWrapped = true

Delay.Name = "Delay"
Delay.Parent = background_4
Delay.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Delay.BackgroundTransparency = 1
Delay.BorderSizePixel = 0
Delay.Position = UDim2.new(0, 150, 0, 15)
Delay.Size = UDim2.new(0, 150, 0, 20)
Delay.Font = Enum.Font.SourceSansBold
Delay.FontSize = Enum.FontSize.Size14
Delay.Text = "Delay (seconds) (0 for none)"
Delay.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Delay.TextStrokeTransparency = 0
Delay.TextWrapped = true

Directions_3.Name = "Directions"
Directions_3.Parent = background_4
Directions_3.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Directions_3.BackgroundTransparency = 1
Directions_3.BorderSizePixel = 0
Directions_3.Position = UDim2.new(0, 20, 0, 10)
Directions_3.Size = UDim2.new(0, 98, 0, 60)
Directions_3.Font = Enum.Font.SourceSansBold
Directions_3.FontSize = Enum.FontSize.Size14
Directions_3.Text = "Spawn commands automatically get executed when you spawn."
Directions_3.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Directions_3.TextStrokeTransparency = 0
Directions_3.TextWrapped = true
Directions_3.TextYAlignment = Enum.TextYAlignment.Top

Dark_11.Name = "Dark"
Dark_11.Parent = background_4
Dark_11.Active = true
Dark_11.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_11.BackgroundTransparency = 0.5
Dark_11.BorderSizePixel = 0
Dark_11.Position = UDim2.new(0.377777785, 0, 0.0666666701, 0)
Dark_11.Size = UDim2.new(0, 5, 0, 70)

shadow_4.Name = "shadow"
shadow_4.Parent = SpawnCEditor
shadow_4.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
shadow_4.BorderColor3 = Color3.new(0, 0, 0)
shadow_4.BorderSizePixel = 0
shadow_4.Size = UDim2.new(0, 360, 0, 20)
shadow_4.ZIndex = 4

PopupText_4.Name = "PopupText"
PopupText_4.Parent = shadow_4
PopupText_4.BackgroundTransparency = 1
PopupText_4.Position = UDim2.new(0, 51, 0, 0)
PopupText_4.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
PopupText_4.ZIndex = 4
PopupText_4.Font = Enum.Font.SourceSans
PopupText_4.TextSize = 20
PopupText_4.Text = "Set Spawn Commands"
PopupText_4.TextColor3 = Color3.new(1, 1, 1)
PopupText_4.TextStrokeTransparency = 0
PopupText_4.TextWrapped = true

Exit_4.Name = "Exit"
Exit_4.Parent = shadow_4
Exit_4.BackgroundColor3 = Color3.new(1, 1, 1)
Exit_4.BackgroundTransparency = 1
Exit_4.Size = UDim2.new(0, 20, 0, 20)
Exit_4.ZIndex = 4
Exit_4.Image = "rbxassetid://2132544126"

PositionsFrame.Name = "PositionsFrame"
PositionsFrame.Parent = Settings
PositionsFrame.Active = true
PositionsFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
PositionsFrame.BorderSizePixel = 0
PositionsFrame.Size = UDim2.new(0, 250, 0, 175)
PositionsFrame.Position = UDim2.new(0, 0, 0, 175)

Close_3.Name = "Close"
Close_3.Parent = PositionsFrame
Close_3.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(0, 205, 0, 150)
Close_3.Size = UDim2.new(0, 40, 0, 20)
Close_3.Font = Enum.Font.SourceSans
Close_3.FontSize = Enum.FontSize.Size14
Close_3.Text = "Close"
Close_3.TextColor3 = Color3.new(0, 0, 0)

Delete_5.Name = "Delete"
Delete_5.Parent = PositionsFrame
Delete_5.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_5.BorderSizePixel = 0
Delete_5.Position = UDim2.new(0, 5, 0, 150)
Delete_5.Size = UDim2.new(0, 40, 0, 20)
Delete_5.Font = Enum.Font.SourceSans
Delete_5.FontSize = Enum.FontSize.Size14
Delete_5.Text = "Clear"
Delete_5.TextColor3 = Color3.new(0, 0, 0)

Holder_4.Name = "Holder"
Holder_4.Parent = PositionsFrame
Holder_4.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Holder_4.BackgroundTransparency = 1
Holder_4.BorderSizePixel = 0
Holder_4.Position = UDim2.new(0, 0, 0, 0)
Holder_4.Selectable = false
Holder_4.Size = UDim2.new(0, 250, 0, 145)
Holder_4.BottomImage = "rbxasset://textures/blackBkg_square.png"
Holder_4.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_4.MidImage = "rbxasset://textures/blackBkg_square.png"
Holder_4.ScrollBarThickness = 8
Holder_4.TopImage = "rbxasset://textures/blackBkg_square.png"

Example_4.Name = "Example"
Example_4.Parent = PositionsFrame
Example_4.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Example_4.BackgroundTransparency = 0.5
Example_4.BorderSizePixel = 0
Example_4.Size = UDim2.new(0, 10, 0, 20)
Example_4.Visible = false
Example_4.Position = UDim2.new(0, 0, 0, -5)

Text_5.Name = "Text"
Text_5.Parent = Example_4
Text_5.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Text_5.BackgroundTransparency = 0.5
Text_5.BorderSizePixel = 0
Text_5.Position = UDim2.new(0, 10, 0, 0)
Text_5.Size = UDim2.new(0, 240, 0, 20)
Text_5.Font = Enum.Font.SourceSans
Text_5.FontSize = Enum.FontSize.Size14
Text_5.Text = "Position"
Text_5.TextColor3 = Color3.new(1, 1, 1)
Text_5.TextXAlignment = Enum.TextXAlignment.Left

Delete_6.Name = "Delete"
Delete_6.Parent = Text_5
Delete_6.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_6.BorderSizePixel = 0
Delete_6.Position = UDim2.new(0, 200, 0, 0)
Delete_6.Size = UDim2.new(0, 40, 0, 20)
Delete_6.Font = Enum.Font.SourceSans
Delete_6.FontSize = Enum.FontSize.Size14
Delete_6.Text = "Delete"
Delete_6.TextColor3 = Color3.new(0, 0, 0)

TP.Name = "TP"
TP.Parent = Text_5
TP.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
TP.BorderSizePixel = 0
TP.Position = UDim2.new(0, 155, 0, 0)
TP.Size = UDim2.new(0, 40, 0, 20)
TP.Font = Enum.Font.SourceSans
TP.FontSize = Enum.FontSize.Size14
TP.Text = "Goto"
TP.TextColor3 = Color3.new(0, 0, 0)

AliasesFrame.Name = "AliasesFrame"
AliasesFrame.Parent = Settings
AliasesFrame.Active = true
AliasesFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
AliasesFrame.BorderSizePixel = 0
AliasesFrame.Position = UDim2.new(0, 0, 0, 175)
AliasesFrame.Size = UDim2.new(0, 250, 0, 175)

Close_2.Name = "Close"
Close_2.Parent = AliasesFrame
Close_2.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0, 205, 0, 150)
Close_2.Size = UDim2.new(0, 40, 0, 20)
Close_2.Font = Enum.Font.SourceSans
Close_2.FontSize = Enum.FontSize.Size14
Close_2.Text = "Close"
Close_2.TextColor3 = Color3.new(0, 0, 0)

Delete_3.Name = "Delete"
Delete_3.Parent = AliasesFrame
Delete_3.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_3.BorderSizePixel = 0
Delete_3.Position = UDim2.new(0, 5, 0, 150)
Delete_3.Size = UDim2.new(0, 40, 0, 20)
Delete_3.Font = Enum.Font.SourceSans
Delete_3.FontSize = Enum.FontSize.Size14
Delete_3.Text = "Clear"
Delete_3.TextColor3 = Color3.new(0, 0, 0)

Holder_3.Name = "Holder"
Holder_3.Parent = AliasesFrame
Holder_3.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Holder_3.BackgroundTransparency = 1
Holder_3.BorderSizePixel = 0
Holder_3.Position = UDim2.new(0, 0, 0, 0)
Holder_3.Size = UDim2.new(0, 250, 0, 145)
Holder_3.BottomImage = "rbxasset://textures/blackBkg_square.png"
Holder_3.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_3.MidImage = "rbxasset://textures/blackBkg_square.png"
Holder_3.ScrollBarThickness = 0
Holder_3.TopImage = "rbxasset://textures/blackBkg_square.png"

Example_3.Name = "Example"
Example_3.Parent = AliasesFrame
Example_3.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Example_3.BackgroundTransparency = 0.5
Example_3.BorderSizePixel = 0
Example_3.Size = UDim2.new(0, 10, 0, 20)
Example_3.Visible = false

Text_4.Name = "Text"
Text_4.Parent = Example_3
Text_4.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Text_4.BackgroundTransparency = 0.5
Text_4.BorderSizePixel = 0
Text_4.Position = UDim2.new(0, 10, 0, 0)
Text_4.Size = UDim2.new(0, 240, 0, 20)
Text_4.Font = Enum.Font.SourceSans
Text_4.FontSize = Enum.FontSize.Size14
Text_4.Text = "honk"
Text_4.TextColor3 = Color3.new(1, 1, 1)
Text_4.TextXAlignment = Enum.TextXAlignment.Left

Delete_4.Name = "Delete"
Delete_4.Parent = Text_4
Delete_4.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_4.BorderSizePixel = 0
Delete_4.Position = UDim2.new(0, 200, 0, 0)
Delete_4.Size = UDim2.new(0, 40, 0, 20)
Delete_4.Font = Enum.Font.SourceSans
Delete_4.FontSize = Enum.FontSize.Size14
Delete_4.Text = "Delete"
Delete_4.TextColor3 = Color3.new(0, 0, 0)

PluginsFrame.Name = "PluginsFrame"
PluginsFrame.Parent = Settings
PluginsFrame.Active = true
PluginsFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
PluginsFrame.BorderSizePixel = 0
PluginsFrame.Position = UDim2.new(0, 0, 0, 175)
PluginsFrame.Size = UDim2.new(0, 250, 0, 175)

Close_4.Name = "Close"
Close_4.Parent = PluginsFrame
Close_4.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Close_4.BorderSizePixel = 0
Close_4.Position = UDim2.new(0, 205, 0, 150)
Close_4.Size = UDim2.new(0, 40, 0, 20)
Close_4.Font = Enum.Font.SourceSans
Close_4.FontSize = Enum.FontSize.Size14
Close_4.Text = "Close"
Close_4.TextColor3 = Color3.new(0, 0, 0)

Add_3.Name = "Add"
Add_3.Parent = PluginsFrame
Add_3.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Add_3.BorderSizePixel = 0
Add_3.Position = UDim2.new(0, 5, 0, 150)
Add_3.Size = UDim2.new(0, 40, 0, 20)
Add_3.Font = Enum.Font.SourceSans
Add_3.FontSize = Enum.FontSize.Size14
Add_3.Text = "Add"
Add_3.TextColor3 = Color3.new(0, 0, 0)

Holder_5.Name = "Holder"
Holder_5.Parent = PluginsFrame
Holder_5.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Holder_5.BackgroundTransparency = 1
Holder_5.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Holder_5.BorderSizePixel = 0
Holder_5.Position = UDim2.new(0, 0, 0, 0)
Holder_5.Selectable = false
Holder_5.Size = UDim2.new(0, 250, 0, 140)
Holder_5.BottomImage = "rbxasset://textures/blackBkg_square.png"
Holder_5.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_5.MidImage = "rbxasset://textures/blackBkg_square.png"
Holder_5.ScrollBarThickness = 0
Holder_5.TopImage = "rbxasset://textures/blackBkg_square.png"

Example_5.Name = "Example"
Example_5.Parent = PluginsFrame
Example_5.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Example_5.BackgroundTransparency = 0.5
Example_5.BorderSizePixel = 0
Example_5.Size = UDim2.new(0, 10, 0, 20)
Example_5.Visible = false

Text_6.Name = "Text"
Text_6.Parent = Example_5
Text_6.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Text_6.BackgroundTransparency = 0.5
Text_6.BorderSizePixel = 0
Text_6.Position = UDim2.new(0, 10, 0, 0)
Text_6.Size = UDim2.new(0, 240, 0, 20)
Text_6.Font = Enum.Font.SourceSans
Text_6.FontSize = Enum.FontSize.Size14
Text_6.Text = "F4 > Toggle Fly"
Text_6.TextColor3 = Color3.new(1, 1, 1)
Text_6.TextXAlignment = Enum.TextXAlignment.Left

Delete_7.Name = "Delete"
Delete_7.Parent = Text_6
Delete_7.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Delete_7.BorderSizePixel = 0
Delete_7.Position = UDim2.new(0, 200, 0, 0)
Delete_7.Size = UDim2.new(0, 40, 0, 20)
Delete_7.Font = Enum.Font.SourceSans
Delete_7.FontSize = Enum.FontSize.Size14
Delete_7.Text = "Delete"
Delete_7.TextColor3 = Color3.new(0, 0, 0)

PluginEditor.Name = randomString()
PluginEditor.Parent = PARENT
PluginEditor.Active = true
PluginEditor.BackgroundColor3 = Color3.new(1, 1, 1)
PluginEditor.BackgroundTransparency = 1
PluginEditor.Position = UDim2.new(0.5, -180, 0, -400)
PluginEditor.Size = UDim2.new(0, 360, 0, 20)
PluginEditor.ZIndex = 4

background_3.Name = "background"
background_3.Parent = PluginEditor
background_3.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
background_3.BorderSizePixel = 0
background_3.Position = UDim2.new(0, 0, 0, 20)
background_3.Size = UDim2.new(0, 360, 0, 160)

Dark_8.Name = "Dark"
Dark_8.Parent = background_3
Dark_8.Active = true
Dark_8.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_8.BackgroundTransparency = 0.5
Dark_8.BorderSizePixel = 0
Dark_8.Size = UDim2.new(0, 360, 0, 5)

Dark_9.Name = "Dark"
Dark_9.Parent = background_3
Dark_9.Active = true
Dark_9.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_9.BackgroundTransparency = 0.5
Dark_9.BorderSizePixel = 0
Dark_9.Position = UDim2.new(0, 220, 0, 5)
Dark_9.Size = UDim2.new(0, 5, 0, 155)

Img.Name = "Img"
Img.Parent = background_3
Img.BackgroundColor3 = Color3.new(1, 1, 1)
Img.BackgroundTransparency = 1
Img.Position = UDim2.new(0, 242, 0, 3)
Img.Size = UDim2.new(0, 100, 0, 95)
Img.Image = "rbxassetid://318740854"

AddPlugin.Name = "AddPlugin"
AddPlugin.Parent = background_3
AddPlugin.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
AddPlugin.BackgroundTransparency = 0.5
AddPlugin.BorderSizePixel = 0
AddPlugin.Position = UDim2.new(0, 235, 0, 100)
AddPlugin.Size = UDim2.new(0, 115, 0, 50)
AddPlugin.Font = Enum.Font.SourceSans
AddPlugin.FontSize = Enum.FontSize.Size18
AddPlugin.Text = "Add Plugin"
AddPlugin.TextColor3 = Color3.new(1, 1, 1)
AddPlugin.TextStrokeTransparency = 0

FileName.Name = "FileName"
FileName.Parent = background_3
FileName.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
FileName.BackgroundTransparency = 0.5
FileName.BorderSizePixel = 0
FileName.Position = UDim2.new(0.027777778, 0, 0.625, 0)
FileName.Size = UDim2.new(0, 200, 0, 50)
FileName.Font = Enum.Font.SourceSans
FileName.FontSize = Enum.FontSize.Size18
FileName.Text = "Plugin File Name"
FileName.TextColor3 = Color3.new(1, 1, 1)
FileName.TextStrokeTransparency = 0

About.Name = "About"
About.Parent = background_3
About.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
About.BackgroundTransparency = 1
About.BorderSizePixel = 0
About.Position = UDim2.new(0, 17, 0, 17)
About.Size = UDim2.new(0, 187, 0, 49)
About.Font = Enum.Font.SourceSansBold
About.FontSize = Enum.FontSize.Size14
About.Text = "Plugins are .iy files and should be located in the 'workspace' folder of your exploit."
About.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
About.TextStrokeTransparency = 0
About.TextWrapped = true
About.TextYAlignment = Enum.TextYAlignment.Top

Directions_2.Name = "Directions"
Directions_2.Parent = background_3
Directions_2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Directions_2.BackgroundTransparency = 1
Directions_2.BorderSizePixel = 0
Directions_2.Position = UDim2.new(0, 17, 0, 66)
Directions_2.Size = UDim2.new(0, 187, 0, 49)
Directions_2.Font = Enum.Font.SourceSansBold
Directions_2.FontSize = Enum.FontSize.Size14
Directions_2.Text = "Type the name of the plugin file you want to add below."
Directions_2.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Directions_2.TextStrokeTransparency = 0
Directions_2.TextWrapped = true
Directions_2.TextYAlignment = Enum.TextYAlignment.Top

shadow_3.Name = "shadow"
shadow_3.Parent = PluginEditor
shadow_3.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
shadow_3.BorderColor3 = Color3.new(0, 0, 0)
shadow_3.BorderSizePixel = 0
shadow_3.Size = UDim2.new(0, 360, 0, 20)
shadow_3.ZIndex = 4

PopupText_3.Name = "PopupText"
PopupText_3.Parent = shadow_3
PopupText_3.BackgroundTransparency = 1
PopupText_3.Position = UDim2.new(0, 51, 0, 0)
PopupText_3.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
PopupText_3.ZIndex = 4
PopupText_3.Font = Enum.Font.SourceSans
PopupText_3.TextSize = 20
PopupText_3.Text = "Add Plugins"
PopupText_3.TextColor3 = Color3.new(1, 1, 1)
PopupText_3.TextStrokeTransparency = 0
PopupText_3.TextWrapped = true

Exit_3.Name = "Exit"
Exit_3.Parent = shadow_3
Exit_3.BackgroundColor3 = Color3.new(1, 1, 1)
Exit_3.BackgroundTransparency = 1
Exit_3.Size = UDim2.new(0, 20, 0, 20)
Exit_3.ZIndex = 4
Exit_3.Image = "rbxassetid://2132544126"

logsDrag.Name = randomString()
logsDrag.Parent = PARENT
logsDrag.Active = true
logsDrag.BackgroundColor3 = Color3.new(1, 1, 1)
logsDrag.BackgroundTransparency = 1
logsDrag.Position = UDim2.new(0, 0, 1, 10)
logsDrag.Size = UDim2.new(0, 338, 0, 20)
logsDrag.ZIndex = 4

shadow.Name = "shadow"
shadow.Parent = logsDrag
shadow.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
shadow.BorderColor3 = Color3.new(0, 0, 0)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0, 0, 0.00999999978, 0)
shadow.Size = UDim2.new(0, 338, 0, 20)
shadow.ZIndex = 4

Hide.Name = "Hide"
Hide.Parent = shadow
Hide.BackgroundColor3 = Color3.new(1, 1, 1)
Hide.BackgroundTransparency = 1
Hide.Position = UDim2.new(0, 20, 0, 0)
Hide.Size = UDim2.new(0, 20, 0, 20)
Hide.ZIndex = 4
Hide.Image = "rbxassetid://2406617031"
Hide.ImageTransparency = 0.5

PopupText.Name = "PopupText"
PopupText.Parent = shadow
PopupText.BackgroundTransparency = 1
PopupText.Position = UDim2.new(0, 48, 0, 0)
PopupText.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
PopupText.ZIndex = 4
PopupText.Font = Enum.Font.SourceSans
PopupText.TextSize = 20
PopupText.Text = "Chat Logs"
PopupText.TextColor3 = Color3.new(1, 1, 1)
PopupText.TextStrokeTransparency = 0
PopupText.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = shadow
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.ZIndex = 4
Exit.Image = "rbxassetid://2132544126"

scroll.Name = "scroll"
scroll.Parent = logsDrag
scroll.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
scroll.BackgroundTransparency = 0.5
scroll.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
scroll.BorderSizePixel = 0
scroll.Position = UDim2.new(0, 5, 0, 30)
scroll.Size = UDim2.new(0, 328, 0, 190)
scroll.ZIndex = 5
scroll.BottomImage = "rbxasset://textures/blackBkg_square.png"
scroll.CanvasSize = UDim2.new(0, 0, 0, 10)
scroll.MidImage = "rbxasset://textures/blackBkg_square.png"
scroll.ScrollBarThickness = 8
scroll.TopImage = "rbxasset://textures/blackBkg_square.png"

background.Name = "background"
background.Parent = logsDrag
background.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
background.BorderColor3 = Color3.new(0, 0, 0)
background.BorderSizePixel = 0
background.Position = UDim2.new(0, 0, 1, 0)
background.Size = UDim2.new(0, 338, 0, 230)
background.ZIndex = 4

Dark_6.Name = "Dark"
Dark_6.Parent = background
Dark_6.Active = true
Dark_6.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Dark_6.BackgroundTransparency = 0.5
Dark_6.BorderSizePixel = 0
Dark_6.Size = UDim2.new(0, 338, 0, 5)
Dark_6.ZIndex = 4

Clear.Name = "Clear"
Clear.Parent = background
Clear.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0, 5, 0, 205)
Clear.Size = UDim2.new(0, 50, 0, 20)
Clear.ZIndex = 4
Clear.Font = Enum.Font.SourceSans
Clear.FontSize = Enum.FontSize.Size14
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(0, 0, 0)

Toggle.Name = "Toggle"
Toggle.Parent = background
Toggle.BackgroundColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 60, 0, 205)
Toggle.Size = UDim2.new(0, 50, 0, 20)
Toggle.ZIndex = 4
Toggle.Font = Enum.Font.SourceSans
Toggle.FontSize = Enum.FontSize.Size14
Toggle.Text = "Disabled"
Toggle.TextColor3 = Color3.new(0, 0, 0)

AliasHint.Name = "AliasHint"
AliasHint.Parent = AliasesFrame
AliasHint.BackgroundColor3 = Color3.new(1, 1, 1)
AliasHint.BackgroundTransparency = 1
AliasHint.BorderSizePixel = 0
AliasHint.Position = UDim2.new(0, 25, 0, 40)
AliasHint.Size = UDim2.new(0, 200, 0, 50)
AliasHint.Font = Enum.Font.SourceSansItalic
AliasHint.TextSize = 16
AliasHint.Text = "Add aliases by using the 'addalias' command"
AliasHint.TextColor3 = Color3.new(1, 1, 1)
AliasHint.TextStrokeColor3 = Color3.new(1, 1, 1)
AliasHint.TextWrapped = true

PluginsHint.Name = "PluginsHint"
PluginsHint.Parent = PluginsFrame
PluginsHint.BackgroundColor3 = Color3.new(1, 1, 1)
PluginsHint.BackgroundTransparency = 1
PluginsHint.BorderSizePixel = 0
PluginsHint.Position = UDim2.new(0, 25, 0, 40)
PluginsHint.Size = UDim2.new(0, 200, 0, 50)
PluginsHint.Font = Enum.Font.SourceSansItalic
PluginsHint.TextSize = 16
PluginsHint.Text = "Download plugins from the IY Discord (discord.io/infiniteyield)"
PluginsHint.TextColor3 = Color3.new(1, 1, 1)
PluginsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
PluginsHint.TextWrapped = true

PositionsHint.Name = "PositionsHint"
PositionsHint.Parent = PositionsFrame
PositionsHint.BackgroundColor3 = Color3.new(1, 1, 1)
PositionsHint.BackgroundTransparency = 1
PositionsHint.BorderSizePixel = 0
PositionsHint.Position = UDim2.new(0, 25, 0, 40)
PositionsHint.Size = UDim2.new(0, 200, 0, 50)
PositionsHint.Font = Enum.Font.SourceSansItalic
PositionsHint.TextSize = 16
PositionsHint.Text = "Use the 'spos' or 'setwaypoint' command to add a position"
PositionsHint.TextColor3 = Color3.new(1, 1, 1)
PositionsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
PositionsHint.TextWrapped = true

function writefileExploit()
	if writefile then
		return true
	end
end

function isNumber(str)
	return tonumber(str) ~= nil
end

function tools(plr)
	if plr.Backpack:FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function r15(plr)
	if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

defaultsettings = {
	prefix = ';';
	StayOpen = false;
	logsEnabled = false;
	aliases = {};
	binds = {};
	spawnCmds = {};
	WayPoints = {};
	PluginsTable = {}
}

defaults = game:GetService("HttpService"):JSONEncode(defaultsettings)

local nosaves = false

function saves()
	if writefileExploit() then
		if pcall(function() readfile("IY_FE.iy") end) then
			if readfile("IY_FE.iy") ~= nil then
				local json = game:GetService("HttpService"):JSONDecode(readfile("IY_FE.iy"))
				if json.prefix ~= nil then prefix = json.prefix else prefix = ';' end
				if json.StayOpen ~= nil then StayOpen = json.StayOpen else StayOpen = false end
				if json.logsEnabled ~= nil then logsEnabled = json.logsEnabled else logsEnabled = false end
				if json.aliases ~= nil then aliases = json.aliases else aliases = {} end
				if json.binds ~= nil then binds = json.binds else binds = {} end
				if json.spawnCmds ~= nil then spawnCmds = json.spawnCmds else spawnCmds = {} end
				if json.WayPoints ~= nil then WayPoints = json.WayPoints else WayPoints = {} end
				if json.PluginsTable ~= nil then PluginsTable = json.PluginsTable else PluginsTable = {} end
			else
				writefile("IY_FE.iy", defaults)
				wait()
				saves()
			end
		else
			writefile("IY_FE.iy", defaults)
			wait()
			if pcall(function() readfile("IY_FE.iy") end) then
				saves()
			else
				nosaves = true
				prefix = ';'
				StayOpen = false
				logsEnabled = false
				aliases = {}
				binds = {}
				spawnCmds = {}
				WayPoints = {}
				PluginsTable = {}
				
				local FileError = Instance.new("Frame")
				local background = Instance.new("Frame")
				local Directions = Instance.new("TextLabel")
				local Dark = Instance.new("Frame")
				local shadow = Instance.new("Frame")
				local PopupText = Instance.new("TextLabel")
				local Exit = Instance.new("ImageButton")
				
				FileError.Name = randomString()
				FileError.Parent = PARENT
				FileError.Active = true
				FileError.BackgroundColor3 = Color3.new(1, 1, 1)
				FileError.BackgroundTransparency = 1
				FileError.Position = UDim2.new(0.5, -180, 0, 290)
				FileError.Size = UDim2.new(0, 360, 0, 20)
				FileError.ZIndex = 4
				
				background.Name = "background"
				background.Parent = FileError
				background.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
				background.BorderSizePixel = 0
				background.Position = UDim2.new(0, 0, 0, 20)
				background.Size = UDim2.new(0, 360, 0, 210)
				
				Directions.Name = "Directions"
				Directions.Parent = background
				Directions.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
				Directions.BackgroundTransparency = 1
				Directions.BorderSizePixel = 0
				Directions.Position = UDim2.new(0, 10, 0, 15)
				Directions.Size = UDim2.new(0, 340, 0, 185)
				Directions.Font = Enum.Font.SourceSansBold
				Directions.FontSize = Enum.FontSize.Size14
				Directions.Text = "There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
				Directions.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
				Directions.TextStrokeTransparency = 0
				Directions.TextWrapped = true
				Directions.TextXAlignment = Enum.TextXAlignment.Left
				Directions.TextYAlignment = Enum.TextYAlignment.Top
				
				Dark.Name = "Dark"
				Dark.Parent = background
				Dark.Active = true
				Dark.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
				Dark.BackgroundTransparency = 0.5
				Dark.BorderSizePixel = 0
				Dark.Size = UDim2.new(0, 360, 0, 5)
				
				shadow.Name = "shadow"
				shadow.Parent = FileError
				shadow.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
				shadow.BorderColor3 = Color3.new(0, 0, 0)
				shadow.BorderSizePixel = 0
				shadow.Size = UDim2.new(0, 360, 0, 20)
				shadow.ZIndex = 4
				
				PopupText.Name = "PopupText"
				PopupText.Parent = shadow
				PopupText.BackgroundTransparency = 1
				PopupText.Position = UDim2.new(0, 51, 0, 0)
				PopupText.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
				PopupText.ZIndex = 4
				PopupText.Font = Enum.Font.SourceSans
				PopupText.TextSize = 20
				PopupText.Text = "File Error"
				PopupText.TextColor3 = Color3.new(1, 1, 1)
				PopupText.TextStrokeTransparency = 0
				PopupText.TextWrapped = true
				
				Exit.Name = "Exit"
				Exit.Parent = shadow
				Exit.BackgroundColor3 = Color3.new(1, 1, 1)
				Exit.BackgroundTransparency = 1
				Exit.Size = UDim2.new(0, 20, 0, 20)
				Exit.ZIndex = 4
				Exit.Image = "rbxassetid://2132544126"
				
				Exit.MouseButton1Click:Connect(function()
					FileError:Destroy()
				end)
			end
		end
	else
		prefix = ';'
		StayOpen = false
		logsEnabled = false
		aliases = {}
		binds = {}
		spawnCmds = {}
		WayPoints = {}
		PluginsTable = {}
	end
end

saves()

function updatesaves()
	if nosaves == false and writefileExploit() then
		local update = {
		prefix = prefix;
		StayOpen = StayOpen;
		logsEnabled = logsEnabled;
		aliases = aliases;
		binds = binds;
		spawnCmds = spawnCmds;
		WayPoints = WayPoints;
		PluginsTable = PluginsTable
		}
		writefile("IY_FE.iy", game:GetService("HttpService"):JSONEncode(update))
	end
end

function Time()
	local HOUR = math.floor((tick() % 86400) / 3600)
	local MINUTE = math.floor((tick() % 3600) / 60)
	local SECOND = math.floor(tick() % 60)
	local AP = HOUR > 11 and 'PM' or 'AM'
	HOUR = (HOUR % 12 == 0 and 12 or HOUR % 12)
	HOUR = HOUR < 10 and '0' .. HOUR or HOUR
	MINUTE = MINUTE < 10 and '0' .. MINUTE or MINUTE
	SECOND = SECOND < 10 and '0' .. SECOND or SECOND
	return HOUR .. ':' .. MINUTE .. ':' .. SECOND .. ' ' .. AP
end

UserInputService = game:GetService("UserInputService")
IYMouse = Players.LocalPlayer:GetMouse()
PrefixBox.Text = prefix
SettingsOpen = false

if StayOpen == false then
	Holder.Settings.StayOpen.Button.On.BackgroundTransparency = 1
else
	Holder.Settings.StayOpen.Button.On.BackgroundTransparency = 0
end

if logsEnabled then
	Toggle.Text = 'Enabled'
else
	Toggle.Text = 'Disabled'
end

function maximizeHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -220), "InOut", "Quart", 0.2, true, nil)
	end
end

function minimizeHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -20), "InOut", "Quart", 0.5, true, nil)
	end
end

function cmdbarHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -45), "InOut", "Quart", 0.5, true, nil)
	end
end

function enablebuttons()
	Settings.Aliases.Select.Visible = true
	Settings.SpawnC.Select.Visible = true
	Settings.Keybinds.Select.Visible = true
	Settings.StayOpen.Button.On.Visible = true
	Settings.Prefix.PrefixBox.Visible = true
	Settings.Positions.Select.Visible = true
	Settings.Plugins.Select.Visible = true
end

function disablebuttons()
	Settings.Aliases.Select.Visible = false
	Settings.SpawnC.Select.Visible = false
	Settings.Keybinds.Select.Visible = false
	Settings.StayOpen.Button.On.Visible = false
	Settings.Prefix.PrefixBox.Visible = false
	Settings.Positions.Select.Visible = false
	Settings.Plugins.Select.Visible = false
end

notifyCount = 0
function notify(text,text2)
	spawn(function()
		local LnotifyCount = notifyCount+1
		notifyCount = notifyCount+1
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -0), "InOut", "Quart", 0.5, true, nil)
		wait(0.6)
		local closepressed = false
		if text2 then
			Notification.Title.Text = text
			Notification.Text.Text = text2
		else
			Notification.Title.Text = 'Notification'
			Notification.Text.Text = text
		end
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -100), "InOut", "Quart", 0.5, true, nil)
		Notification.CloseButton.MouseButton1Click:Connect(function()
			Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -0), "InOut", "Quart", 0.5, true, nil)
			closepressed = true
		end)
		wait(10)
		if LnotifyCount == notifyCount then
			if closepressed == false then
				Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -0), "InOut", "Quart", 0.5, true, nil)
			end
			notifyCount = 0
		end
	end)
end

function CreateLabel(Name, Text)
	local sf = scroll
	if #sf:GetChildren() >= 2546 then
		sf:ClearAllChildren()
	end
	local alls = 0
	for i,v in pairs(sf:GetChildren()) do
		if v then
			alls = v.Size.Y.Offset + alls
		end
		if not v then
			alls = 0
		end
	end
	local tl = Instance.new('TextLabel', sf)
	local il = Instance.new('Frame', tl)
	tl.Name = Name
	tl.ZIndex = 6
	tl.Text = Time().." - ["..Name.."]: "..Text
	tl.Size = UDim2.new(0,322,0,84)
	tl.BackgroundTransparency = 1
	tl.BorderSizePixel = 0
	tl.Font = "SourceSansBold"
	tl.Position = UDim2.new(-1,0,0,alls)
	tl.TextTransparency = 1
	tl.TextScaled = false
	tl.TextSize = 14
	tl.TextWrapped = true
	tl.TextXAlignment = "Left"
	tl.TextYAlignment = "Top"
	il.BackgroundTransparency = 1
	il.BorderSizePixel = 0
	il.Size = UDim2.new(0,12,1,0)
	il.Position = UDim2.new(0,316,0,0)
	tl.TextColor3 = Color3.fromRGB(255,255,255)
	tl.Size = UDim2.new(0,322,0,tl.TextBounds.Y)
	sf.CanvasSize = UDim2.new(0,0,0,alls+tl.TextBounds.Y)
	sf.CanvasPosition = Vector2.new(0,sf.CanvasPosition.Y+tl.TextBounds.Y)
	local size2 = sf.CanvasSize.Y.Offset
	tl:TweenPosition(UDim2.new(0,3,0,alls), 'In', 'Quint', 0.5)
	for i = 0,50 do wait(0.05)
		tl.TextTransparency = tl.TextTransparency - 0.05
	end
	tl.TextTransparency = 0
end

IYMouse.KeyDown:connect(function(Key)
	if (Key==prefix) then
		Holder.Cmdbar:CaptureFocus()
		maximizeHolder()
	end
end)

Holder.MouseEnter:Connect(function()
	maximizeHolder()
end)

Holder.MouseLeave:Connect(function()
	minimizeHolder()
end)

Holder.SettingsButton.MouseButton1Click:Connect(function()
	if SettingsOpen == false then SettingsOpen = true
		Holder.Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.5, true, nil)
	else SettingsOpen = false
		Holder.Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.5, true, nil)
	end
end)

Holder.Settings.StayOpen.Button.On.MouseButton1Click:Connect(function()
	if StayOpen == false then StayOpen = true
		Holder.Settings.StayOpen.Button.On.BackgroundTransparency = 0
	else StayOpen = false
		Holder.Settings.StayOpen.Button.On.BackgroundTransparency = 1
	end
	updatesaves()
end)

Clear.MouseButton1Down:connect(function()
	for _, child in pairs(scroll:GetChildren()) do
		child:Destroy()
	end
	scroll.CanvasSize = UDim2.new(0, 0, 0, 10)
end)

Toggle.MouseButton1Down:connect(function()
	if logsEnabled then
		logsEnabled = false
		Toggle.Text = 'Disabled'
		updatesaves()
	else
		logsEnabled = true
		Toggle.Text = 'Enabled'
		updatesaves()
	end
end)

if not writefileExploit() then
	notify('Saves','Your exploit does not support read/write file. Your settings will not save.')
end

ChatLog = function(plr)
	plr.Chatted:Connect(function(Message)
		if logsEnabled == true then
			CreateLabel(plr.Name,Message)
		end
	end)
end

for _, plr in pairs(Players:GetChildren()) do
	if plr.ClassName == "Player" then
		ChatLog(plr)
	end
end

Players.PlayerAdded:connect(function(player)
	ChatLog(player)
	if ESPenabled then
		ESP(player)
	end
	if CHMSenabled then
		CHMS(player)
	end
end)

Players.PlayerRemoving:connect(function(player)
	for i,v in pairs(PARENT:GetChildren()) do
		if v.Name == player.Name..'_ESP' or v.Name == player.Name..'_LC' then
			v:Destroy()
		end
	end
end)

shadow.Exit.MouseButton1Down:connect(function()
	logsDrag:TweenPosition(UDim2.new(0, 0, 1, 10), "InOut", "Quart", 0.3, true, nil)
end)

shadow.Hide.MouseButton1Down:connect(function()
	if logsDrag.Position ~= UDim2.new(0, 0, 1, -20) then
		logsDrag:TweenPosition(UDim2.new(0, 0, 1, -20), "InOut", "Quart", 0.3, true, nil)
	else
		logsDrag:TweenPosition(UDim2.new(0, 0, 1, -250), "InOut", "Quart", 0.3, true, nil)
	end
end)



SpawnC.Select.MouseButton1Click:Connect(function()
	SpawnCFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	disablebuttons()
end)

SpawnCFrame.Close.MouseButton1Click:Connect(function()
	enablebuttons()
	SpawnCFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

SpawnCFrame.Delete.MouseButton1Click:Connect(function()
	spawnCmds = {}
	updatesaves()
	refreshSpawnC()
	notify('Spawn Commands Updated','Cleared all spawn commands')
end)

Add_5.MouseButton1Click:Connect(function()
	if Cmdbar_3.Text ~= '' and Cmdbar_3.Text ~= 'Command' then
		if isNumber(DelayNum.Text) then
		addspawn(Cmdbar_3.Text,tonumber(DelayNum.Text))
		refreshSpawnC()
		updatesaves()
		notify('Spawn Commands Updated','"'..Cmdbar_3.Text..'" will run when your player spawns')
		else
			notify('Spawn Command Error','Command delay must be a number')
		end
	end
end)

Keybinds.Select.MouseButton1Click:Connect(function()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	disablebuttons()
end)

KeybindsFrame.Close.MouseButton1Click:Connect(function()
	enablebuttons()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Holder.Settings.Keybinds.Select.MouseButton1Click:Connect(function()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	disablebuttons()
end)

KeybindsFrame.Add.MouseButton1Click:Connect(function()
	KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, 270), "InOut", "Quart", 0.5, true, nil)
end)

KeybindsFrame.Delete.MouseButton1Click:Connect(function()
	binds = {}
	refreshbinds()
	updatesaves()
	notify('Keybinds Updated','Removed all keybinds')
end)

AliasesFrame.Close.MouseButton1Click:Connect(function()
	enablebuttons()
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Settings.Aliases.Select.MouseButton1Click:Connect(function()
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	disablebuttons()
end)

PositionsFrame.Close.MouseButton1Click:Connect(function()
	enablebuttons()
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Settings.Positions.Select.MouseButton1Click:Connect(function()
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	disablebuttons()
end)

SpawnCFrame.Add.MouseButton1Click:Connect(function()
	SpawnCEditor:TweenPosition(UDim2.new(0.5, -180, 0, 295), "InOut", "Quart", 0.5, true, nil)
end)

Exit_4.MouseButton1Click:Connect(function()
	SpawnCEditor:TweenPosition(UDim2.new(0.5, -180, 0, -400), "InOut", "Quart", 0.5, true, nil)
	Cmdbar_3.Text = 'Command'
	DelayNum.Text = '0'
end)

local cmds={}
local customAlias = {}
AliasesFrame.Delete.MouseButton1Click:Connect(function()
	customAlias = {}
	aliases = {}
	notify('Aliases Modified','Removed all aliases')
	updatesaves()
	refreshaliases()
end)

Holder.Settings.Prefix.PrefixBox.Changed:connect(function(property)
	if property == "Text" then
		prefix = Holder.Settings.Prefix.PrefixBox.Text
		updatesaves()
	end
end)

DexNOffset = -500
DexOffset = -250

function dragMain(gui)
spawn(function()
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
	local pos = -250
    local delta = input.Position - dragStart
	if startPos.X.Offset + delta.X <= DexNOffset then
		Notification:TweenPosition(UDim2.new(1, -250, Notification.Position.Y.Scale, Notification.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
		pos = 250
	else
		Notification:TweenPosition(UDim2.new(1, DexNOffset, Notification.Position.Y.Scale, Notification.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
		pos = -250
	end
	if startPos.X.Offset + delta.X <= DexOffset then
		gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, gui.Position.Y.Scale, gui.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
		Notification:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X + pos, Notification.Position.Y.Scale, Notification.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
	else
		gui:TweenPosition(UDim2.new(1, DexOffset, gui.Position.Y.Scale, gui.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
	end
end
gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end)
end

dragMain(Holder)

function dragGUI(gui)
spawn(function()
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
    local delta = input.Position - dragStart
	gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), "InOut", "Quart", 0.04, true, nil) 
end
gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end)
end

dragGUI(logsDrag)
dragGUI(KeybindEditor)
dragGUI(PluginEditor)
dragGUI(SpawnCEditor)

local CSP = Holder
local frame = CSP:WaitForChild('CMDs')

Match = function(name,str)
	return name:lower():find(str:lower()) and true
end

canvasPos = nil
canvasTop = false
IndexContents = function(str,bool,cmdbar,anim)
	if str == '' or str == ' ' or str == prefix then
		if canvasTop == false then
			canvasPos = CMDsF.CanvasPosition.Y
		end
	else
		CMDsF.CanvasPosition = Vector2.new(0,0)
		canvasTop = true
	end
	local Index,SizeY = 0,0
	local indexnum = 0
	for i,v in next, frame:GetChildren() do
		if bool then
			if Match(v.Text,str) then
				indexnum = indexnum + 1
				Index = Index + 1
				v.Position = UDim2.new(0,10,0,Index*v.AbsoluteSize.Y-v.AbsoluteSize.Y)
				v.Visible = true
				SizeY = SizeY + v.AbsoluteSize.Y
				frame.CanvasSize = UDim2.new(0,0,0,SizeY)
			else
				v.Visible = false
			end
		else
			v.Visible = true
			SizeY = SizeY + v.AbsoluteSize.Y
			frame.CanvasSize = UDim2.new(0,0,0,SizeY)
		end
	end
	if not anim then
		if indexnum == 0 or string.find(str, " ") then
			if not cmdbar then
				minimizeHolder()
			elseif cmdbar then
				cmdbarHolder()
			end
		else
			maximizeHolder()
		end
	else
		minimizeHolder()
	end
end

PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
local chatbox
if pcall(function() chatbox = Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end) then	
	local function Index()
		if chatbox.Text:lower():sub(1,1) == prefix then
			if SettingsOpen == true then
				wait(0.2)
				Holder.Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
			end
			IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2),true)
		else
			minimizeHolder()
			if SettingsOpen == true then
				wait(0.2)
				Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
			end
		end
	end
	chatbox:GetPropertyChangedSignal("Text"):Connect(Index)
			
	chatbox.FocusLost:connect(function(enterpressed)
		if not enterpressed or chatbox.Text:lower():sub(1,1) ~= prefix then
			IndexContents('',true)
			if canvasPos ~= nil then
				CMDsF.CanvasPosition = Vector2.new(0, canvasPos)
				canvasTop = false
			end
		end
		minimizeHolder()
	end)
	
	Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.ChildAdded:Connect(function(newbar)
		wait()
		if newbar:FindFirstChild('BoxFrame') then
			chatbox = Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
			chatbox:GetPropertyChangedSignal("Text"):Connect(Index)
		end
	end)
else
	print('Custom chat detected. Will not provide suggestions for commands typed in the chat.')
end

local CMDs = {}
CMDs[#CMDs + 1] = {NAME = 'rejoin / rj', DESC = 'Makes you rejoin the game'}
CMDs[#CMDs + 1] = {NAME = 'exit', DESC = 'Kills roblox process'}
CMDs[#CMDs + 1] = {NAME = 'chatlogs / logs', DESC = 'Log what people say or whisper'}
CMDs[#CMDs + 1] = {NAME = 'serverinfo / info', DESC = 'Gives you info about the server'}
CMDs[#CMDs + 1] = {NAME = 'explorer / dex', DESC = 'Opens DEX explorer'}
CMDs[#CMDs + 1] = {NAME = 'remotespy', DESC = 'Prints remotes (updating soon)'}
CMDs[#CMDs + 1] = {NAME = 'breakloops / break (cmd loops)', DESC = 'Stops any cmd loops (;100^1^cmd)'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'addalias [cmd] [alias]', DESC = 'Adds an alias to a command'}
CMDs[#CMDs + 1] = {NAME = 'removealias [alias]', DESC = 'Removes a custom alias'}
CMDs[#CMDs + 1] = {NAME = 'clraliases', DESC = 'Removes all custom aliases'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'noclip', DESC = 'Go through objects'}
CMDs[#CMDs + 1] = {NAME = 'unnoclip / clip', DESC = 'Disables noclip'}
CMDs[#CMDs + 1] = {NAME = 'fly', DESC = 'Makes you fly'}
CMDs[#CMDs + 1] = {NAME = 'unfly', DESC = 'Disables fly'}
CMDs[#CMDs + 1] = {NAME = 'flyspeed [num]', DESC = 'Set fly speed'}
CMDs[#CMDs + 1] = {NAME = 'float', DESC = 'Makes you float'}
CMDs[#CMDs + 1] = {NAME = 'unfloat', DESC = 'Disables floating'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'spos / setwaypoint [name]', DESC = 'Sets a waypoint at your position'}
CMDs[#CMDs + 1] = {NAME = 'dpos / deletewaypoint [name]', DESC = 'Deletes a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'lpos / waypoint [name]', DESC = 'Teleports player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'clearpos / cpos / clearwaypoints', DESC = 'Clears all waypoints'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'spam [text]', DESC = 'Makes you spam the chat'}
CMDs[#CMDs + 1] = {NAME = 'unspam', DESC = 'Turns off spam'}
CMDs[#CMDs + 1] = {NAME = 'pmspam [plr] [text]', DESC = 'Makes you spam a players whispers'}
CMDs[#CMDs + 1] = {NAME = 'unpmspam [plr]', DESC = 'Turns off pm spam'}
CMDs[#CMDs + 1] = {NAME = 'spamspeed [num]', DESC = 'How quickly you spam (default is 1)'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'esp', DESC = 'View all players and their status'}
CMDs[#CMDs + 1] = {NAME = 'noesp / unesp', DESC = 'Removes esp'}
CMDs[#CMDs + 1] = {NAME = 'chams', DESC = 'ESP but without text in the way'}
CMDs[#CMDs + 1] = {NAME = 'nochams / unchams', DESC = 'Removes chams'}
CMDs[#CMDs + 1] = {NAME = 'locate [plr]', DESC = 'View a single player and their status'}
CMDs[#CMDs + 1] = {NAME = 'unlocate / nolocate [plr]', DESC = 'Removes locate'}
CMDs[#CMDs + 1] = {NAME = 'xray', DESC = 'Makes all parts in workspace transparent'}
CMDs[#CMDs + 1] = {NAME = 'unxray / noxray', DESC = 'Restores transparency'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'spectate / view [plr]', DESC = 'View a player'}
CMDs[#CMDs + 1] = {NAME = 'unspectate / unview', DESC = 'Stops viewing player'}
CMDs[#CMDs + 1] = {NAME = 'freecam / fc', DESC = 'Allows you to freely move camera around the game'}
CMDs[#CMDs + 1] = {NAME = 'unfreecam / unfc', DESC = 'Disables freecam'}
CMDs[#CMDs + 1] = {NAME = 'freecamspeed / fcspeed [num]', DESC = 'Adjusts freecam speed'}
CMDs[#CMDs + 1] = {NAME = 'firstp', DESC = 'Forces camera to go into first person'}
CMDs[#CMDs + 1] = {NAME = 'thirdp', DESC = 'Allows camera to go into third person'}
CMDs[#CMDs + 1] = {NAME = 'maxzoom [num]', DESC = 'Maximum camera zoom'}
CMDs[#CMDs + 1] = {NAME = 'fixcam', DESC = 'Fixes camera'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'btools (CLIENT)', DESC = 'Gives you building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'f3x (CLIENT)', DESC = 'Loads f3x tools'}
CMDs[#CMDs + 1] = {NAME = 'delete [part name] (CLIENT)', DESC = 'Removes any part with a certain name from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'deleteclass / dc [class name] (CLIENT)', DESC = 'Removes any part with a certain classname from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'lockworkspace / lockws', DESC = 'Locks the whole workspace'}
CMDs[#CMDs + 1] = {NAME = 'unlockworkspace / unlockws', DESC = 'Unlocks the whole workspace'}
CMDs[#CMDs + 1] = {NAME = 'gotopart [part name]', DESC = 'Moves your character to a part or multiple parts'}
CMDs[#CMDs + 1] = {NAME = 'bringpart [part name] (CLIENT)', DESC = 'Moves a part or multiple parts to your character'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'ambient [num] [num] [num] (CLIENT)', DESC = 'Changes ambient'}
CMDs[#CMDs + 1] = {NAME = 'nofog (CLIENT)', DESC = 'Removes fog'}
CMDs[#CMDs + 1] = {NAME = 'brightness [num] (CLIENT)', DESC = 'Changes the brightness lighting property'}
CMDs[#CMDs + 1] = {NAME = 'restorelighting / rlighting', DESC = 'Restores Lighting properties'}
CMDs[#CMDs + 1] = {NAME = 'light [radius] (CLIENT)', DESC = 'Gives your player dynamic light'}
CMDs[#CMDs + 1] = {NAME = 'nolight / unlight', DESC = 'Removes dynamic light from your player'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'age [plr]', DESC = 'Tells you the age of a player'}
CMDs[#CMDs + 1] = {NAME = 'os [plr]', DESC = "Shows a player's platform"}
CMDs[#CMDs + 1] = {NAME = 'bang [plr]', DESC = 'owo'}
CMDs[#CMDs + 1] = {NAME = 'unbang [plr]', DESC = 'uwu'}
CMDs[#CMDs + 1] = {NAME = 'headsit [plr]', DESC = 'Sit on a players head'}
CMDs[#CMDs + 1] = {NAME = 'kill [plr]', DESC = 'Kills a player'}
CMDs[#CMDs + 1] = {NAME = 'bring [plr] (TOOL)', DESC = 'Brings a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fling', DESC = 'Flings anyone you touch'}
CMDs[#CMDs + 1] = {NAME = 'unfling', DESC = 'Disables the fling command'}
CMDs[#CMDs + 1] = {NAME = 'loopoof', DESC = 'Loops everyones character sounds (everyone can hear)'}
CMDs[#CMDs + 1] = {NAME = 'unloopoof', DESC = 'Stops the oof chaos'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'respawn', DESC = 'Respawns you'}
CMDs[#CMDs + 1] = {NAME = 'refresh / re', DESC = 'Respawns and brings you back to the same position'}
CMDs[#CMDs + 1] = {NAME = 'god', DESC = 'Gives you godmode'}
CMDs[#CMDs + 1] = {NAME = 'ungod', DESC = 'Respawns/ungods you'}
CMDs[#CMDs + 1] = {NAME = 'invisible / invis', DESC = 'Makes you invisible to other players'}
CMDs[#CMDs + 1] = {NAME = 'weaken', DESC = 'Changes CustomPhysicalProperties in your player'}
CMDs[#CMDs + 1] = {NAME = 'unweaken', DESC = 'Changes CustomPhysicalProperties in your player'}
CMDs[#CMDs + 1] = {NAME = 'strengthen', DESC = 'Changes CustomPhysicalProperties in your player'}
CMDs[#CMDs + 1] = {NAME = 'unstrengthen', DESC = 'Changes CustomPhysicalProperties in your player'}
CMDs[#CMDs + 1] = {NAME = 'speed / ws [num]', DESC = 'Change your walkspeed'}
CMDs[#CMDs + 1] = {NAME = 'hipheight / hheight [num]', DESC = 'Adjusts hip height'}
CMDs[#CMDs + 1] = {NAME = 'jumppower / jpower [num]', DESC = 'Change a players jump height'}
CMDs[#CMDs + 1] = {NAME = 'gravity / grav [num]', DESC = 'Change your gravity'}
CMDs[#CMDs + 1] = {NAME = 'sit', DESC = 'Makes your character sit'}
CMDs[#CMDs + 1] = {NAME = 'stun', DESC = 'Enables PlatformStand'}
CMDs[#CMDs + 1] = {NAME = 'unstun', DESC = 'Disables PlatformStand'}
CMDs[#CMDs + 1] = {NAME = 'team [team name] (CLIENT)', DESC = 'Changes your team. Sometimes fools localscripts.'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'goto [plr]', DESC = 'Go to a player'}
CMDs[#CMDs + 1] = {NAME = 'loopgoto [plr]', DESC = 'Loop teleport to a player'}
CMDs[#CMDs + 1] = {NAME = 'unloopgoto [plr]', DESC = 'Stops teleporting you to a player'}
CMDs[#CMDs + 1] = {NAME = 'loopbring [plr] (CLIENT)', DESC = 'Loop brings a player to you (useful for killing)'}
CMDs[#CMDs + 1] = {NAME = 'unloopbring [plr]', DESC = 'Undoes loopbring'}
CMDs[#CMDs + 1] = {NAME = 'freeze / fr [plr] (CLIENT)', DESC = 'Freezes a player'}
CMDs[#CMDs + 1] = {NAME = 'thaw / unfr [plr]', DESC = 'Unfreezes a player'}
CMDs[#CMDs + 1] = {NAME = 'tpposition / tppos [coordinate]', DESC = 'Teleports you to a coordinate'}
CMDs[#CMDs + 1] = {NAME = 'offset [coordinate]', DESC = 'Offsets you by a coordinate'}
CMDs[#CMDs + 1] = {NAME = 'getposition / getpos', DESC = 'Notifies you the coordinates of your character'}
CMDs[#CMDs + 1] = {NAME = 'spawnpoint / spawn', DESC = 'Sets a position where you will spawn'}
CMDs[#CMDs + 1] = {NAME = 'nospawnpoint / nospawn', DESC = 'Removes your custom spawn point'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'animation / anim [ID] [speed]', DESC = 'Makes your character preform an animation (must be by roblox to replicate)'}
CMDs[#CMDs + 1] = {NAME = 'dance', DESC = 'Makes you  d a n c e'}
CMDs[#CMDs + 1] = {NAME = 'spasm', DESC = 'Makes you  c r a z y'}
CMDs[#CMDs + 1] = {NAME = 'unspasm', DESC = 'Stops spasm'}
CMDs[#CMDs + 1] = {NAME = 'headthrow', DESC = 'Simply makes you throw your head'}
CMDs[#CMDs + 1] = {NAME = 'noarms', DESC = 'Removes your arms'}
CMDs[#CMDs + 1] = {NAME = 'nolegs', DESC = 'Removes your arms'}
CMDs[#CMDs + 1] = {NAME = 'nolimbs', DESC = 'Removes your limbs'}
CMDs[#CMDs + 1] = {NAME = 'naked', DESC = 'Removes your clothing'}
CMDs[#CMDs + 1] = {NAME = 'blockhead', DESC = 'Turns your head into a block'}
CMDs[#CMDs + 1] = {NAME = 'blockhats', DESC = 'Turns your hats into blocks'}
CMDs[#CMDs + 1] = {NAME = 'clone', DESC = 'Creates an illusion of a clone'}
CMDs[#CMDs + 1] = {NAME = 'creeper', DESC = 'Makes you look like a creeper'}
CMDs[#CMDs + 1] = {NAME = 'drophats', DESC = 'Drops your hats'}
CMDs[#CMDs + 1] = {NAME = 'droptools', DESC = 'Drops your tools'}
CMDs[#CMDs + 1] = {NAME = 'spin [speed]', DESC = 'Spins your character'}
CMDs[#CMDs + 1] = {NAME = 'unspin', DESC = 'Disables spin'}
CMDs[#CMDs + 1] = {NAME = 'spinhats', DESC = 'Spins your characters accessorys'}
CMDs[#CMDs + 1] = {NAME = 'unspinhats', DESC = 'Undoes spinhats'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'tools', DESC = 'Copies tools from ReplicatedStorage and Lighting'}
CMDs[#CMDs + 1] = {NAME = 'keeptools / ktools', DESC = 'Saves tools to startergear'}
CMDs[#CMDs + 1] = {NAME = 'nokeeptools / noktools', DESC = 'Deletes tools in startergear'}
CMDs[#CMDs + 1] = {NAME = 'notools/removetools', DESC = 'Removes tools from character and backpack'}
CMDs[#CMDs + 1] = {NAME = 'grabtools', DESC = 'Automatically get tools that are dropped'}
CMDs[#CMDs + 1] = {NAME = 'ungrabtools', DESC = 'Disables grabtools'}
CMDs[#CMDs + 1] = {NAME = 'givetools [plr]', DESC = 'Give your tools to a player'}
CMDs[#CMDs + 1] = {NAME = 'copytools [plr]', DESC = 'Copies a players tools'}
wait()

for i = 1, #CMDs do
	local newcmd = Holder.Example:Clone()
	newcmd.Parent = Holder.CMDs
	newcmd.Visible = false
	newcmd.Text = "" .. CMDs[i].NAME
	newcmd.Name = 'CMD'
	newcmd.MouseButton1Click:Connect(function()
		notify(CMDs[i].NAME,CMDs[i].DESC)
	end)
end

IndexContents('',true)

function FindInTable(Table, Name)
	for i,v in pairs(Table) do
		if v == Name then
			return true
		end
	end
	return false
end


function GetInTable(Table, Name)
	for i = 1, #Table do
		if Table[i] == Name then
			return i
		end
	end
	return false
end

function respawn(plr)
	if r15(plr) then
		plr.Character.Humanoid.Health = 0
		wait(0.1)
		plr.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
		plr.Character.HumanoidRootPart:Destroy()
	else		
		plr.Character:Destroy()
		local M = Instance.new('Model', workspace) M.Name = 'respawn_iy'
		local H = Instance.new('Humanoid', M)
		local T = Instance.new('Part', M) T.Name = 'Torso' T.CanCollide = false T.Transparency = 1
		plr.Character = M
	end
end

function refresh(plr)
	spawn(function()
		local rpos = plr.Character.HumanoidRootPart.Position
		wait()
		respawn(plr)
		wait()
		repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild('HumanoidRootPart')
		plr.Character:MoveTo(rpos)
	end)
end

godded = false
local oldCframe
local currentTool

Players.LocalPlayer.CharacterAdded:Connect(function()
	FLYING = false
	Floating = false
	bangplr = nil
	execCmd('clip')
	
	if #spawnCmds > 0 then
		for i,v in pairs(spawnCmds)do
			spawn(function()
				wait(v.DELAY)
				execCmd(v.COMMAND,Players.LocalPlayer)
			end)
		end
	end
	
	wait(0.3)
	if spawnpoint and not godded and spawnpos ~= nil then
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spawnpos
	end
	if godded then
		repeat wait() until Players.LocalPlayer.Character ~= nil and Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and Players.LocalPlayer.Character:FindFirstChild('Humanoid')
		Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15,false)
		Players.LocalPlayer.Character.Humanoid:SetStateEnabled(16,false)
		local r=Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		for i = 1,5 do
			r.CFrame = oldCframe
		end
		if currentTool ~= nil then
			local nt = Players.LocalPlayer.Backpack:FindFirstChild(currentTool.Name)
			nt.Parent = Players.LocalPlayer.Character
			currentTool = nil
		end
	end
end)

Players.LocalPlayer.CharacterRemoving:Connect(function()
    if Players.LocalPlayer.Character then
        local r = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if r ~= nil then oldCframe = r.CFrame end
		currentTool = Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    end
end)

local std={}
std.inTable=function(tbl,val)
    if tbl==nil then return false end
    for _,v in pairs(tbl)do
        if v==val then return true end
    end 
	return false
end

function getstring(begin)
	local start = begin-1
	local AA = '' for i,v in pairs(cargs) do
		if i > start then
			if AA ~= '' then
				AA = AA .. ' ' .. v
			else
				AA = AA .. v
			end
		end
	end
	return AA
end

local findCmd=function(cmd_name)
	for i,v in pairs(cmds)do
		if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower()) then
			return v
		end
	end
	return customAlias[cmd_name:lower()]
end

local function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
		for w in string.gmatch(str,"[^"..delim.."]+") do
			table.insert(broken,w)
		end
	return broken
end

local historyCount = 0
local cmdHistory = {}
local split=" "
lastBreakTime = 0
function execCmd(cmdStr,speaker)
	spawn(function()
		if canvasPos ~= nil then
			CMDsF.CanvasPosition = Vector2.new(0, canvasPos)
			canvasTop = false
		end
		local rawCmdStr = cmdStr
		cmdStr = string.gsub(cmdStr,"\\\\","%%BackSlash%%")
		local commandsToRun = splitString(cmdStr,"\\")
		for i,v in pairs(commandsToRun) do
			v = string.gsub(v,"%%BackSlash%%","\\")
			local x,y,num = v:find("^(%d+)%^")
			local cmdDelay = 0
			if num then
				v = v:sub(y+1)
				local x,y,del = v:find("^([%d%.]+)%^")
				if del then
					v = v:sub(y+1)
					cmdDelay = tonumber(del) or 0
				end
			end
		num = tonumber(num or 1)
		local args = splitString(v,split)
		local cmd = findCmd(args[1])
		if cmd then
			table.remove(args,1)
			cargs = args
			if speaker == Players.LocalPlayer then
				if cmdHistory[1] ~= rawCmdStr then table.insert(cmdHistory,1,rawCmdStr) end
			end
			if #cmdHistory > 20 then table.remove(cmdHistory) end
			local cmdStartTime = tick()
			for rep = 1,num do
				if lastBreakTime > cmdStartTime then break end
					pcall(function()
						cmd.FUNC(args, speaker)
					end)
					if cmdDelay ~= 0 then wait(cmdDelay) end
				end
			end
		end
	end)	
end	

function addcmd(name,alias,func,plgn)
	cmds[#cmds+1]=
	{
		NAME=name;
		ALIAS=alias;
		FUNC=func;
		PLUGIN=plgn;
	}
end

function addbind(cmd,key)
	binds[#binds+1]=
	{
		COMMAND=cmd;
		KEY=key;
	}
end

function addspawn(cmd,sDelay)
	spawnCmds[#spawnCmds+1]=
	{
		COMMAND=cmd;
		DELAY=sDelay;
	}
end

function addcmdtext(text,name,desc)
	local newcmd = Holder.Example:Clone()
	newcmd.Parent = Holder.CMDs
	newcmd.Visible = false
	newcmd.Text = text
	newcmd.Name = 'PLUGIN_'..name
	if desc then
		newcmd.MouseButton1Click:Connect(function()
			notify(text,desc)
		end)
	end
end

local SpecialPlayerCases = {
	["all"] = function(speaker)return Players:GetPlayers() end,
	["others"] = function(speaker)
		local plrs = {}
		for i,v in pairs(Players:GetPlayers()) do
			if v ~= speaker then
				table.insert(plrs,v)
			end
		end
		return plrs
	 end,
	["me"] = function(speaker)return {speaker} end,
	["#(%d+)"] = function(speaker,args,currentList)
		local returns = {}
		local randAmount = tonumber(args[1])
		local players = {unpack(currentList)}
		for i = 1,randAmount do
			if #players == 0 then break end
			local randIndex = math.random(1,#players)
			table.insert(returns,players[randIndex])
			table.remove(players,randIndex)
		end
		return returns
	end,
	["random"] = function(speaker,args,currentList)
		local players = currentList
		return {players[math.random(1,#players)]}
	end,
	["%%(.+)"] = function(speaker,args)
		local returns = {}
		local team = args[1]
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["allies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["enemies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["team"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonteam"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["friends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonfriends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["guests"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Guest then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["bacons"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["age(%d+)"] = function(speaker,args)
		local returns = {}
		local age = tonumber(args[1])
		if not age == nil then return end
		for _,plr in pairs(Players:GetPlayers()) do
		if plr.AccountAge <= age then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["rad(%d+)"] = function(speaker,args)
		local returns = {}
		local radius = tonumber(args[1])
		local speakerChar = speaker.Character
		if not speakerChar or not speakerChar:FindFirstChild("HumanoidRootPart") then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
				local magnitude = (plr.Character:FindFirstChild("HumanoidRootPart").Position-speakerChar.HumanoidRootPart.Position).magnitude
				if magnitude <= radius then table.insert(returns,plr) end
			end
		end
		return returns
	end
}

local function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end

local function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

local function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

local function getPlayersByName(name)
	local found = {}
	for i,v in pairs(Players:GetChildren()) do
		if string.sub(string.lower(v.Name),1,#name) == string.lower(name) then
			table.insert(found,v)
		end
	end
	return found
end

function getPlayer(list,speaker)
	if list == nil then return {speaker.Name} end
	local nameList = splitString(list,",")
	
	local foundList = {}
	
	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = Players:GetPlayers()
		
		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
				end
			else
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = removeTableMatches(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
				end
			end
		end
		
		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end
	
	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end
	
	return foundNames
end

local getprfx=function(strn)
    if strn:sub(1,string.len(prefix))==prefix then return{'cmd',string.len(prefix)+1}
    end return
end

function do_exec(str, plr)
	str = str:gsub('/e ', '')
	local t = getprfx(str)
	if not t then return end
	str = str:sub(t[2])
	if t[1]=='cmd' then
		execCmd(str, plr)
		IndexContents('',true,false,true)
	end
end


Players.LocalPlayer.Chatted:connect(function(message)
	do_exec(message, Players.LocalPlayer)
end)

Holder.Cmdbar.Changed:connect(function(property)
	if property == "Text" and Holder.Cmdbar:IsFocused() then
		IndexContents(Holder.Cmdbar.Text,true,true)
	end
end)

Holder.Cmdbar.FocusLost:connect(function(enterpressed)
	if enterpressed then
		execCmd(Holder.Cmdbar.Text,Players.LocalPlayer)
	end
	Holder.Cmdbar.Text = "Command Bar"
	IndexContents('',true,false,true)
	if canvasPos ~= nil then
		CMDsF.CanvasPosition = Vector2.new(0, canvasPos)
		canvasTop = false
	end
	if SettingsOpen == true then
		wait(0.2)
		Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
	end
end)

Holder.Cmdbar.Focused:Connect(function() historyCount = 0 end)
UserInputService.InputBegan:Connect(function(input)
    if not Holder.Cmdbar:IsFocused() then return end
    if input.KeyCode == Enum.KeyCode.Up then
        historyCount = historyCount + 1
        if historyCount > #cmdHistory then historyCount = #cmdHistory end
        Holder.Cmdbar.Text = cmdHistory[historyCount] or ""
    elseif input.KeyCode == Enum.KeyCode.Down then
        historyCount = historyCount - 1
        if historyCount < 1 then historyCount = 1 end
        Holder.Cmdbar.Text = cmdHistory[historyCount] or ""
    end
	if SettingsOpen == true then
		wait(0.2)
		Holder.Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
	end
end)

ESPenabled = false
CHMSenabled = false

function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
  end

function ESP(plr)
	spawn(function()
		local refreshing = true
		for i,v in pairs(PARENT:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not PARENT:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder", PARENT)
			ESPholder.Name = plr.Name..'_ESP'
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment", ESPholder)
					a.Name = plr.Name
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 0
					a.Size = n.Size
					a.Transparency = 0.7
					if plr.TeamColor == Players.LocalPlayer.TeamColor then
						a.Color = BrickColor.new("Lime green")
					else
						a.Color = BrickColor.new("Really red")
					end
				end
			end
            if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui", ESPholder)
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				plr.CharacterAdded:Connect(function()
					if ESPenabled then
						refreshing = false
						ESPholder:Destroy()
						repeat wait(1) until plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid')
						ESP(plr)
					end
				end)
				game:GetService("RunService").RenderStepped:Connect(function()
					if refreshing and PARENT:FindFirstChild(plr.Name..'_ESP') and plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid') then
						local pos = math.floor((Players.LocalPlayer.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude)
						TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character.Humanoid.Health, 1)..' | Studs: '..pos
					end
				end)
			end
		end
	end)
end

function CHMS(plr)
	spawn(function()
		local refreshing = true
		for i,v in pairs(PARENT:GetChildren()) do
			if v.Name == plr.Name..'_CHMS' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not PARENT:FindFirstChild(plr.Name..'_CHMS') then
			local ESPholder = Instance.new("Folder", PARENT)
			ESPholder.Name = plr.Name..'_CHMS'
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment", ESPholder)
					a.Name = plr.Name
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 0
					a.Size = n.Size
					a.Transparency = 0.7
					if plr.TeamColor == Players.LocalPlayer.TeamColor then
						a.Color = BrickColor.new("Lime green")
					else
						a.Color = BrickColor.new("Really red")
					end
				end
			end
			plr.CharacterAdded:Connect(function()
				if CHMSenabled then
					refreshing = false
					ESPholder:Destroy()
					repeat wait(1) until plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid')
					CHMS(plr)
				end
			end)
		end
	end)
end

function Locate(plr)
	spawn(function()
		local refreshing = true
		for i,v in pairs(PARENT:GetChildren()) do
			if v.Name == plr.Name..'_LC' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not PARENT:FindFirstChild(plr.Name..'_LC') then
			local ESPholder = Instance.new("Folder", PARENT)
			ESPholder.Name = plr.Name..'_LC'
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment", ESPholder)
					a.Name = plr.Name
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 0
					a.Size = n.Size
					a.Transparency = 0.7
					if plr.TeamColor == Players.LocalPlayer.TeamColor then
						a.Color = BrickColor.new("Lime green")
					else
						a.Color = BrickColor.new("Really red")
					end
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui", ESPholder)
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				plr.CharacterAdded:Connect(function()
					if ESPholder ~= nil and ESPholder.Parent ~= nil then
						refreshing = false
						ESPholder:Destroy()
						repeat wait(1) until plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid')
						Locate(plr)
					end
				end)
				game:GetService("RunService").RenderStepped:Connect(function()
					if refreshing and PARENT:FindFirstChild(plr.Name..'_LC') and plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid') then
						local pos = math.floor((Players.LocalPlayer.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude)
						TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character.Humanoid.Health, 1)..' | Studs: '..pos
					end
				end)
			end
		end
	end)
end

bindsGUI = KeybindEditor
awaitingInput = false
keySelected = false

function unkeybind(cmd,key)
	for i = #binds,1,-1 do
		if binds[i].COMMAND == cmd and binds[i].KEY == key then
			table.remove(binds, i)
		end
	end
	refreshbinds()
	updatesaves()
	if key == 'RightClick' or key == 'LeftClick' then
		notify('Keybinds Updated','Unbinded '..key..' from '..cmd)
	else
		notify('Keybinds Updated','Unbinded '..key:sub(14)..' from '..cmd)
	end
end

function refreshbinds()
	if Holder_2 then
		Holder_2:ClearAllChildren()
		Holder_2.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #binds do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newbind = Example_2:Clone()
			newbind.Parent = Holder_2
			newbind.Visible = true
			newbind.Position = UDim2.new(0,0,0, Position + 5)
			local input = tostring(binds[i].KEY)
			local key
			if input == 'RightClick' or input == 'LeftClick' then
				key = input
			else
				key = input:sub(14)
			end
			newbind.Text.Text = key.." > "..binds[i].COMMAND
			Holder_2.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newbind.Text.Delete.MouseButton1Click:Connect(function()
				unkeybind(binds[i].COMMAND,binds[i].KEY)
			end)
		end
	end
end

refreshbinds()

PositionsFrame.Delete.MouseButton1Click:Connect(function()
	execCmd('cpos')
end)

function refreshwaypoints()
	if #WayPoints > 0 then
		PositionsHint:Destroy()
	end
	if Holder_4 then
		Holder_4:ClearAllChildren()
		Holder_4.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #WayPoints do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newpoint = Example_4:Clone()
			newpoint.Parent = Holder_4
			newpoint.Visible = true
			newpoint.Position = UDim2.new(0,0,0, Position + 5)
			newpoint.Text.Text = WayPoints[i].NAME
			Holder_4.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newpoint.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('dpos '..WayPoints[i].NAME)
			end)
			newpoint.Text.TP.MouseButton1Click:Connect(function()
				execCmd("loadpos "..WayPoints[i].NAME)
			end)
		end
	end
end

refreshwaypoints()

function removeSpawnC(cmd,Delay)
	for i = #spawnCmds,1,-1 do
		if spawnCmds[i].COMMAND == cmd and spawnCmds[i].DELAY == Delay then
			table.remove(spawnCmds, i)
		end
	end
	refreshSpawnC()
	updatesaves()
	notify('Spawn Commands Updated','Removed "'..cmd..'" from spawn commands')
end

function refreshSpawnC()
	if Holder_6 then
		Holder_6:ClearAllChildren()
		Holder_6.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #spawnCmds do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newpoint = Example_2:Clone()
			newpoint.Parent = Holder_6
			newpoint.Visible = true
			newpoint.Position = UDim2.new(0,0,0, Position + 5)
			if spawnCmds[i].DELAY == 0 or spawnCmds[i].DELAY == '0' then
				newpoint.Text.Text = spawnCmds[i].COMMAND
			else
				newpoint.Text.Text = spawnCmds[i].COMMAND..' (Delay '..spawnCmds[i].DELAY..')'
			end
			Holder_6.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newpoint.Text.Delete.MouseButton1Click:Connect(function()
				removeSpawnC(spawnCmds[i].COMMAND,spawnCmds[i].DELAY)
				refreshSpawnC()
			end)
		end
	end
end

refreshSpawnC()

function refreshaliases()
	if #aliases > 0 then
		AliasHint:Destroy()
	end
	if Holder_3 then
		Holder_3:ClearAllChildren()
		Holder_3.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #aliases do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newalias = Example_3:Clone()
			newalias.Parent = Holder_3
			newalias.Visible = true
			newalias.Position = UDim2.new(0,0,0, Position + 5)
			newalias.Text.Text = aliases[i].CMD.." > "..aliases[i].ALIAS
			Holder_3.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newalias.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('removealias '..aliases[i].ALIAS)
			end)
		end
	end
end

BindTo.MouseButton1Click:Connect(function()
	awaitingInput = true
	BindTo.Text = 'Press something'
end)

Add_2.MouseButton1Click:Connect(function()
	if keySelected then
		if string.find(Cmdbar_2.Text, "\\\\") then
			notify('Keybind Error','Only use one backslash to keybind multiple commands into one keybind or command')
		else
			addbind(Cmdbar_2.Text,keyPressed)
			refreshbinds()
			updatesaves()
			if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
				notify('Keybinds Updated','Binded '..keyPressed..' to '..Cmdbar_2.Text)
			else
				notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to '..Cmdbar_2.Text)
			end
		end
	end
end)

Exit_2.MouseButton1Click:Connect(function()
	Cmdbar_2.Text = 'Command'
	BindTo.Text = 'Click to bind'
	keySelected = false
	KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, -400), "InOut", "Quart", 0.5, true, nil)
end)

local function onInputBegan(input,gameProcessed)
	if awaitingInput then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			keyPressed = tostring(input.KeyCode)
			BindTo.Text = keyPressed:sub(14)
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			keyPressed = 'LeftClick'
			BindTo.Text = 'LeftClick'
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			keyPressed = 'RightClick'
			BindTo.Text = 'RightClick'
		end
		awaitingInput = false
		keySelected = true
	end
	if not gameProcessed and #binds > 0 then
		for i,v in pairs(binds)do
			if input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower() then
				execCmd(v.COMMAND,Players.LocalPlayer)
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick' then
				execCmd(v.COMMAND,Players.LocalPlayer)
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick' then
				execCmd(v.COMMAND,Players.LocalPlayer)
			end
		end
	end
end
 
UserInputService.InputBegan:connect(onInputBegan)

game:GetService('RunService').Stepped:connect(function()
	if bangplr then
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Players[bangplr].Character.HumanoidRootPart.CFrame
	end
	if spinenabled then
		pcall(function()
			spinning.Position = Players.LocalPlayer.Character.Head.Position
		end)
	end
end)

Fly.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('togglefly',keyPressed)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to toggle fly')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to toggle fly')
		end
	end
end)

Noclip.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('togglenoclip',keyPressed)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to toggle noclip')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to toggle noclip')
		end
	end
end)

Float.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('togglefloat',keyPressed)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to toggle float')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to toggle float')
		end
	end
end)

ClickTP.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('clicktp',keyPressed)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to click tp')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click tp')
		end
	end
end)

Xray.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('togglexray',keyPressed)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to toggle xray')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to toggle xray')
		end
	end
end)

IYMouse.Button1Down:connect(function()
	for i,v in pairs(binds) do
		if v.COMMAND == 'clicktp' then
			local input = v.KEY
			if input == 'RightClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and Players.LocalPlayer.Character then
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = IYMouse.Hit + Vector3.new(0,7,0)
			elseif input == 'LeftClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and Players.LocalPlayer.Character then
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = IYMouse.Hit + Vector3.new(0,7,0)
			elseif UserInputService:IsKeyDown(Enum.KeyCode[input:sub(14)]) and Players.LocalPlayer.Character then
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = IYMouse.Hit + Vector3.new(0,7,0)
			end
		end
	end
end)

PluginsGUI = PluginEditor.background

function refreshplugins()
	if #PluginsTable > 0 then
		PluginsHint:Destroy()
	end
	if Holder_5 then
		Holder_5:ClearAllChildren()
		Holder_5.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i,v in pairs(PluginsTable) do
			local pName = v
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newplugin = Example_5:Clone()
			newplugin.Parent = Holder_5
			newplugin.Visible = true
			newplugin.Position = UDim2.new(0,0,0, Position + 5)
			newplugin.Text.Text = pName
			Holder_5.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newplugin.Text.Delete.MouseButton1Click:Connect(function()
				for i = #cmds,1,-1 do
					if cmds[i].PLUGIN == pName then
						table.remove(cmds, i)
					end
				end
				for i,v in pairs(Holder.CMDs:GetChildren()) do
					if v.Name == 'PLUGIN_'..pName then
						v:Destroy()
					end
				end
				for i,v in pairs(PluginsTable) do
					if v == pName then
						table.remove(PluginsTable, i)
						notify('Removed Plugin',pName..' was removed')
					end
				end
				IndexContents('',true)
				refreshplugins()
			end)
		end
		updatesaves()
	end
end

local PluginCache
function LoadPlugin(val,startup)
	local plugin

	function CatchedPluginLoad()
		plugin = loadfile(val)()
	end

	function handlePluginError(plerror)
		notify('Plugin Error','An error occurred with the plugin, "'..val..'" and it could not be loaded')
		if FindInTable(PluginsTable,val) then
			for i,v in pairs(PluginsTable) do
				if v == val then
					table.remove(PluginsTable,i)
				end
			end
		end

		print("Original Error: "..tostring(plerror))
		print("Plugin Error, stack traceback: "..tostring(debug.traceback()))

		plugin = nil

		return false
	end

	xpcall(CatchedPluginLoad, handlePluginError)

	if plugin ~= nil then
		if not startup then
			notify('Loaded Plugin',"Name: "..plugin["PluginName"].."\n".."Description: "..plugin["PluginDescription"])
		end
		addcmdtext('',val)
		addcmdtext(string.upper('--'..plugin["PluginName"]),val,plugin["PluginDescription"])
		for i,v in pairs(plugin["Commands"]) do 
			local cmdExt = ''
			local cmdName = i
			local function handleNames()
				cmdName = i
				if findCmd(cmdName..cmdExt) then
					if isNumber(cmdExt) then
						cmdExt = cmdExt+1
					else
						cmdExt = 1
					end
					handleNames()
				else
					cmdName = cmdName..cmdExt
				end
			end
			handleNames()
			addcmd(cmdName, v["Aliases"], v["Function"], val)
			if v["ListName"] then
				local newName = v.ListName
				local cmdNames = {i,unpack(v.Aliases)}
				for i,v in pairs(cmdNames) do
				    newName = newName:gsub(v,v..cmdExt)
				end
				addcmdtext(newName,val,v["Description"])
			else
				addcmdtext(cmdName,val,v["Description"])
			end
		end
		IndexContents('',true)
	elseif plugin == nil then
		plugin = nil
	end
end

function FindPlugins()
	if PluginsTable ~= nil and type(PluginsTable) == "table" then
		for i,v in pairs(PluginsTable) do
			LoadPlugin(v,true)
		end
		refreshplugins()
	end
end

PluginsGUI.AddPlugin.MouseButton1Click:connect(function()
	if PluginsGUI.FileName.Text:lower() == 'plugin file name' or PluginsGUI.FileName.Text:lower() == 'iy_fe.iy' or PluginsGUI.FileName.Text == 'iy_fe' then
		notify('Plugin Error','Please enter a valid plugin')
	else
		local file
		local fileName
		if PluginsGUI.FileName.Text:sub(-3) == '.iy' then
			pcall(function() file = readfile(PluginsGUI.FileName.Text) end)
			fileName = PluginsGUI.FileName.Text
		else
			pcall(function() file = readfile(PluginsGUI.FileName.Text..'.iy') end)
			fileName = PluginsGUI.FileName.Text..'.iy'
		end
		if file then
			if not FindInTable(PluginsTable, fileName) then
				table.insert(PluginsTable, fileName)
				LoadPlugin(fileName)
				refreshplugins()
			else
				notify('Plugin Error','This plugin is already added')
			end
		else
			notify('Plugin Error','Cannot locate file "'..fileName..'". Is the file in the correct folder?')
		end
	end
end)

Exit_3.MouseButton1Click:connect(function()
	PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, -400), "InOut", "Quart", 0.5, true, nil)
	PluginsGUI.FileName.Text = 'Plugin File Name'
end)

PluginsFrame.Add.MouseButton1Click:Connect(function()
	PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, 250), "InOut", "Quart", 0.5, true, nil)
end)

Settings.Plugins.Select.MouseButton1Click:Connect(function()
	if writefileExploit() then
		PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.5)
		disablebuttons()
	else
		notify('Incompatible Exploit','Your exploit is unable to use plugins')
	end
end)

PluginsFrame.Close.MouseButton1Click:Connect(function()
	enablebuttons()
	PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

addcmd('addalias',{},
function(args,speaker)
	if #args < 2 then return end
	local cmd = string.lower(args[1])
	local alias = string.lower(args[2])
	for i,v in pairs(cmds) do
		if v.NAME:lower()==cmd or std.inTable(v.ALIAS,cmd) then
			customAlias[alias] = v
			aliases[#aliases + 1] = {CMD = cmd, ALIAS = alias}
			notify('Aliases Modified',"Added "..alias.." as an alias to "..cmd)
			updatesaves()
			refreshaliases()
			break
		end
	end
end)

addcmd('loadsavedaliases',{},
function(args,speaker)
    if #args < 2 then return end
    local cmd = string.lower(args[1])
    local alias = string.lower(args[2])
    for i,v in pairs(cmds) do
        if v.NAME:lower()==cmd or std.inTable(v.ALIAS,cmd) then
            customAlias[alias] = v
			refreshaliases()
            break
        end
    end
end)

if aliases then
	for i = 1, #aliases do
		execCmd('loadsavedaliases '..aliases[i].CMD..' '..aliases[i].ALIAS)
	end
end

addcmd('removealias',{},
function(args,speaker)
	if #args < 1 then return end
	local alias = string.lower(args[1])
	if customAlias[alias] then
		local cmd = customAlias[alias].NAME
		customAlias[alias] = nil
		for i,v in pairs(aliases) do
			if v.ALIAS == tostring(alias) then
				table.remove(aliases, i)
			end
		end
		notify('Aliases Modified',"Removed the alias "..alias.." from "..cmd)
		updatesaves()
		refreshaliases()
	end
end)

addcmd('clraliases',{},
function(args,speaker)
	customAlias = {}
	aliases = {}
	notify('Aliases Modified','Removed all aliases')
	updatesaves()
	refreshaliases()
end)

addcmd('serverinfo',{'info','sinfo'},
function(args, speaker)
	local FRAME = Instance.new("Frame")
	local shadow = Instance.new("Frame")
	local PopupText = Instance.new("TextLabel")
	local Exit = Instance.new("ImageButton")
	local background = Instance.new("Frame")
	local Dark = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel2 = Instance.new("TextLabel")
	local TextLabel3 = Instance.new("TextLabel")
	local Time = Instance.new("TextLabel")
	local appearance = Instance.new("TextLabel")
	local maxplayers = Instance.new("TextLabel")
	local name = Instance.new("TextLabel")
	local placeid = Instance.new("TextLabel")
	local playerid = Instance.new("TextLabel")
	local players = Instance.new("TextLabel")
	
	FRAME.Name = randomString()
	FRAME.Parent = PARENT
	FRAME.Active = true
	FRAME.BackgroundColor3 = Color3.new(1, 1, 1)
	FRAME.BackgroundTransparency = 1
	FRAME.Position = UDim2.new(0.5, -130, 0, -400)
	FRAME.Size = UDim2.new(0, 250, 0, 20)
	FRAME.ZIndex = 4
	dragGUI(FRAME)
	
	shadow.Name = "shadow"
	shadow.Parent = FRAME
	shadow.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	shadow.BorderColor3 = Color3.new(0, 0, 0)
	shadow.BorderSizePixel = 0
	shadow.Size = UDim2.new(0, 250, 0, 20)
	shadow.ZIndex = 4
	
	PopupText.Name = "PopupText"
	PopupText.Parent = shadow
	PopupText.BackgroundTransparency = 1
	PopupText.Position = UDim2.new(0, 38, 0, 0)
	PopupText.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
	PopupText.ZIndex = 4
	PopupText.Font = Enum.Font.SourceSans
	PopupText.TextSize = 20
	PopupText.Text = "Server"
	PopupText.TextColor3 = Color3.new(1, 1, 1)
	PopupText.TextStrokeTransparency = 0
	PopupText.TextWrapped = true
	
	Exit.Name = "Exit"
	Exit.Parent = shadow
	Exit.BackgroundColor3 = Color3.new(1, 1, 1)
	Exit.BackgroundTransparency = 1
	Exit.Size = UDim2.new(0, 20, 0, 20)
	Exit.ZIndex = 4
	Exit.Image = "rbxassetid://2132544126"
	
	background.Name = "background"
	background.Parent = FRAME
	background.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	background.BorderColor3 = Color3.new(0, 0, 0)
	background.BorderSizePixel = 0
	background.Position = UDim2.new(0, 0, 1, 0)
	background.Size = UDim2.new(0, 250, 0, 250)
	background.ZIndex = 4
	
	Dark.Name = "Dark"
	Dark.Parent = background
	Dark.Active = true
	Dark.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
	Dark.BackgroundTransparency = 0.5
	Dark.BorderSizePixel = 0
	Dark.Size = UDim2.new(0, 250, 0, 5)
	Dark.ZIndex = 4
	
	TextLabel.Name = "Text Label"
	TextLabel.Parent = background
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel.Position = UDim2.new(0, 5, 0, 80)
	TextLabel.Size = UDim2.new(0, 100, 0, 20)
	TextLabel.ZIndex = 10
	TextLabel.Font = Enum.Font.SourceSansLight
	TextLabel.TextSize = 20
	TextLabel.Text = "Run Time:"
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
	TextLabel2.Name = "Text Label2"
	TextLabel2.Parent = background
	TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel2.BackgroundTransparency = 1
	TextLabel2.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel2.Position = UDim2.new(0, 5, 0, 130)
	TextLabel2.Size = UDim2.new(0, 100, 0, 20)
	TextLabel2.ZIndex = 10
	TextLabel2.Font = Enum.Font.SourceSansLight
	TextLabel2.TextSize = 20
	TextLabel2.Text = "Statistics:"
	TextLabel2.TextColor3 = Color3.new(1, 1, 1)
	TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
	
	TextLabel3.Name = "Text Label3"
	TextLabel3.Parent = background
	TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel3.BackgroundTransparency = 1
	TextLabel3.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel3.BorderSizePixel = 0
	TextLabel3.Position = UDim2.new(0, 5, 0, 10)
	TextLabel3.Size = UDim2.new(0, 100, 0, 20)
	TextLabel3.ZIndex = 10
	TextLabel3.Font = Enum.Font.SourceSansLight
	TextLabel3.TextSize = 20
	TextLabel3.Text = "Local Player:"
	TextLabel3.TextColor3 = Color3.new(1, 1, 1)
	TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
	
	Time.Name = "Time"
	Time.Parent = background
	Time.BackgroundColor3 = Color3.new(0, 0.8, 1)
	Time.BackgroundTransparency = 1
	Time.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	Time.Position = UDim2.new(0, 5, 0, 105)
	Time.Size = UDim2.new(0, 100, 0, 20)
	Time.ZIndex = 10
	Time.Font = Enum.Font.SourceSans
	Time.FontSize = Enum.FontSize.Size14
	Time.Text = "LOADING"
	Time.TextColor3 = Color3.new(1, 1, 1)
	Time.TextXAlignment = Enum.TextXAlignment.Left
	
	appearance.Name = "appearance"
	appearance.Parent = background
	appearance.BackgroundColor3 = Color3.new(0, 0.8, 1)
	appearance.BackgroundTransparency = 1
	appearance.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	appearance.Position = UDim2.new(0, 5, 0, 55)
	appearance.Size = UDim2.new(0, 100, 0, 20)
	appearance.ZIndex = 10
	appearance.Font = Enum.Font.SourceSans
	appearance.FontSize = Enum.FontSize.Size14
	appearance.Text = "Appearance: LOADING"
	appearance.TextColor3 = Color3.new(1, 1, 1)
	appearance.TextXAlignment = Enum.TextXAlignment.Left
	
	maxplayers.Name = "maxplayers"
	maxplayers.Parent = background
	maxplayers.BackgroundColor3 = Color3.new(0, 0.8, 1)
	maxplayers.BackgroundTransparency = 1
	maxplayers.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	maxplayers.Position = UDim2.new(0, 5, 0, 175)
	maxplayers.Size = UDim2.new(0, 100, 0, 20)
	maxplayers.ZIndex = 10
	maxplayers.Font = Enum.Font.SourceSans
	maxplayers.FontSize = Enum.FontSize.Size14
	maxplayers.Text = "LOADING"
	maxplayers.TextColor3 = Color3.new(1, 1, 1)
	maxplayers.TextXAlignment = Enum.TextXAlignment.Left
	
	name.Name = "name"
	name.Parent = background
	name.BackgroundColor3 = Color3.new(0, 0.8, 1)
	name.BackgroundTransparency = 1
	name.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	name.Position = UDim2.new(0, 5, 0, 215)
	name.Size = UDim2.new(0, 240, 0, 30)
	name.ZIndex = 10
	name.Font = Enum.Font.SourceSans
	name.FontSize = Enum.FontSize.Size14
	name.Text = "Place Name: LOADING"
	name.TextColor3 = Color3.new(1, 1, 1)
	name.TextWrapped = true
	name.TextXAlignment = Enum.TextXAlignment.Left
	name.TextYAlignment = Enum.TextYAlignment.Top
	
	placeid.Name = "placeid"
	placeid.Parent = background
	placeid.BackgroundColor3 = Color3.new(0, 0.8, 1)
	placeid.BackgroundTransparency = 1
	placeid.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	placeid.Position = UDim2.new(0, 5, 0, 195)
	placeid.Size = UDim2.new(0, 100, 0, 20)
	placeid.ZIndex = 10
	placeid.Font = Enum.Font.SourceSans
	placeid.FontSize = Enum.FontSize.Size14
	placeid.Text = "Place ID: LOADING"
	placeid.TextColor3 = Color3.new(1, 1, 1)
	placeid.TextXAlignment = Enum.TextXAlignment.Left
	
	playerid.Name = "playerid"
	playerid.Parent = background
	playerid.BackgroundColor3 = Color3.new(0, 0.8, 1)
	playerid.BackgroundTransparency = 1
	playerid.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	playerid.Position = UDim2.new(0, 5, 0, 35)
	playerid.Size = UDim2.new(0, 100, 0, 20)
	playerid.ZIndex = 10
	playerid.Font = Enum.Font.SourceSans
	playerid.FontSize = Enum.FontSize.Size14
	playerid.Text = "Player ID: LOADING"
	playerid.TextColor3 = Color3.new(1, 1, 1)
	playerid.TextXAlignment = Enum.TextXAlignment.Left
	
	players.Name = "players"
	players.Parent = background
	players.BackgroundColor3 = Color3.new(0, 0.8, 1)
	players.BackgroundTransparency = 1
	players.BorderColor3 = Color3.new(0.2, 0.8, 0.2)
	players.Position = UDim2.new(0, 5, 0, 155)
	players.Size = UDim2.new(0, 100, 0, 20)
	players.ZIndex = 10
	players.Font = Enum.Font.SourceSans
	players.FontSize = Enum.FontSize.Size14
	players.Text = "LOADING"
	players.TextColor3 = Color3.new(1, 1, 1)
	players.TextXAlignment = Enum.TextXAlignment.Left
	
	local SINFOGUI = background
	FRAME:TweenPosition(UDim2.new(0.5, -130, 0, 100), "InOut", "Quart", 0.5, true, nil) 
	wait(0.5)
	Exit.MouseButton1Click:Connect(function()
		FRAME:TweenPosition(UDim2.new(0.5, -130, 0, -400), "InOut", "Quart", 0.5, true, nil) 
		wait(0.6)
		FRAME:Destroy()
	end)
	local Asset = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	SINFOGUI.name.Text = "Place Name: " .. Asset.Name
	SINFOGUI.playerid.Text = "Player ID: " ..Players.LocalPlayer.UserId
	SINFOGUI.maxplayers.Text = Players.MaxPlayers.. " Players Max"
	SINFOGUI.placeid.Text = "Place ID: " ..game.PlaceId
	repeat
		players = Players:getPlayers()
		SINFOGUI.players.Text = #players.. " Player(s)"
		SINFOGUI.appearance.Text = "Appearance: " ..Players.LocalPlayer.CharacterAppearanceId
		local seconds = math.floor(workspace.DistributedGameTime)
		local minutes = math.floor(workspace.DistributedGameTime / 60)
		local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
		local seconds = seconds - (minutes * 60)
	local minutes = minutes - (hours * 60)
		if hours < 1 then if minutes < 1 then
			SINFOGUI.Time.Text = seconds .. " Second(s)" else
			SINFOGUI.Time.Text = minutes .. " Minute(s), " .. seconds .. " Second(s)"
		end
		else
			SINFOGUI.Time.Text = hours .. " Hour(s), " .. minutes .. " Minute(s), " .. seconds .. " Second(s)"
		end
		wait(1)
	until SINFOGUI.Parent == nil
end)

addcmd('breakloops',{'break'},
function(args, speaker)
	lastBreakTime = tick()
end)

addcmd('rejoin',{'rj'},
function(args, speaker)
	game:GetService('TeleportService'):Teleport(game.PlaceId)
end)

addcmd('exit',{},
function(args, speaker)
	game:shutdown() 
end)

runningnoclip = false
Clip = true
addcmd('noclip',{},
function(args, speaker)
Clip = false
	wait(0.1)
	if runningnoclip == false then runningnoclip = true
	game:GetService('RunService').Stepped:connect(function ()
	if Clip == false and Players.LocalPlayer.Character ~= nil then
    for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
	if child:IsA("BasePart") and child.CanCollide == true then
    child.CanCollide = false
	end end end end) end
end)

addcmd('clip',{'unnoclip'},
function(args, speaker)
	Clip = true
end)

addcmd('togglenoclip',{},
function(args, speaker)
	if Clip then
		execCmd('noclip')
	else
		execCmd('clip')
	end
end)

FLYING = false
iyflyspeed = 1
function sFLY()
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and Players.LocalPlayer.Character:FindFirstChild('Humanoid')
	repeat wait() until IYMouse
	
	local T = Players.LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = 0
	
	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
		repeat wait()
		Players.LocalPlayer.Character.Humanoid.PlatformStand = true
		if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
		SPEED = 50
		elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
		SPEED = 0
		end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0, 0)
end
	BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		end)
	end
	IYMouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = iyflyspeed
		elseif KEY:lower() == 's' then
			CONTROL.B = -iyflyspeed
		elseif KEY:lower() == 'a' then
			CONTROL.L = -iyflyspeed 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = iyflyspeed
		end
	end)
	IYMouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end

addcmd('fly',{},
function(args, speaker)
	sFLY()
end)

addcmd('flyspeed',{'flysp'},
function(args, speaker)
	if isNumber(args[1]) then
		iyflyspeed = args[1]
	end
end)

addcmd('unfly',{'nofly'},
function(args, speaker)
	NOFLY()
end)

addcmd('togglefly',{},
function(args, speaker)
	if FLYING then
		NOFLY()
	else
		sFLY()
	end
end)

Floating = false
addcmd('float', {},
function(args,speaker)
	Floating = true
	local pchar = Players.LocalPlayer.Character
	if pchar and not pchar:FindFirstChild("Float") then
		spawn(function()
			local Float = Instance.new('Part', pchar)
			Float.Name = 'Float'
			Float.Transparency = 1
			Float.Size = Vector3.new(6,1,6)
			Float.Anchored = true
			Float.CFrame = pchar.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
			notify('Float','Float Enabled')
			spawn(function()
				while wait(0.1) do
					if pchar:FindFirstChild("Float") then
						Float.CFrame = pchar.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
					else
						break
					end
				end
			end)
		end)
	end
end)

addcmd('unfloat',{'nofloat'},
function(args, speaker)
	Floating = false
	local pchar = Players.LocalPlayer.Character
	notify('Float','Float Disabled')
	if pchar:FindFirstChild("Float") then
		pchar.Float:Destroy()
	end
end)

addcmd('togglefloat',{},
function(args, speaker)
	if Floating then
		execCmd('unfloat')
	else
		execCmd('float')
	end
end)

addcmd('savepos',{'spos','saveposition','setwaypoint'},
function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character:findFirstChild("HumanoidRootPart") then
		notify('Modified Waypoints',"Created waypoint: "..getstring(1))
		local torso = speaker.Character:findFirstChild("HumanoidRootPart")
		WayPoints[#WayPoints + 1] = {NAME = WPName, COORD = {math.floor(torso.Position.X), math.floor(torso.Position.Y), math.floor(torso.Position.Z)}}
	end	
	refreshwaypoints()
	updatesaves()
end)

addcmd('deletepos',{'dpos','deleteposition','deletewaypoint'},
function(args, speaker)
	for i,v in pairs(WayPoints) do
		if v.NAME == tostring(getstring(1)) then
			notify('Modified Waypoints',"Deleted waypoint: " .. v.NAME)
			table.remove(WayPoints, i)
		end
	end
	refreshwaypoints()
	updatesaves()
end)

addcmd('clearpos',{'clrpositions','clearpositions','cpos','clrpos'},
function(args, speaker)
	WayPoints = {}
	refreshwaypoints()
	updatesaves()
	notify('Modified Waypoints','Removed all waypoints')
end)

addcmd('loadpos',{'lpos','loadposition','waypoint'},
function(args, speaker)
	local WPName = tostring(getstring(1))
	if Players.LocalPlayer.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME) == tostring(WPName) then
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
			end
		end
	end
end)

addcmd('esp',{},
function(args, speaker)
	if not CHMSenabled then
		ESPenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= Players.LocalPlayer.Name then
				ESP(v)
			end
		end
	else
		notify('ESP','Disable chams (nochams) before using esp')
	end
end)

addcmd('noesp',{'unesp'},
function(args, speaker)
	ESPenabled = false
	for i,v in pairs(Players:GetChildren()) do
		local espplr = v
		for i,c in pairs(PARENT:GetChildren()) do
			if c.Name == espplr.Name..'_ESP' then
				c:Destroy()
			end
		end
	end
end)

addcmd('chams',{},
function(args, speaker)
	if not ESPenabled then
		CHMSenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= Players.LocalPlayer.Name then
				CHMS(v)
			end
		end
		else
		notify('Chams','Disable ESP (noesp) before using chams')
	end
end)

addcmd('nochams',{'unchams'},
function(args, speaker)
	CHMSenabled = false
	for i,v in pairs(Players:GetChildren()) do
		local chmsplr = v
		for i,c in pairs(PARENT:GetChildren()) do
			if c.Name == chmsplr.Name..'_CHMS' then
				c:Destroy()
			end
		end
	end
end)

addcmd('locate',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		Locate(Players[v])
	end
end)

addcmd('nolocate',{'unlocate'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		for i,c in pairs(PARENT:GetChildren()) do
			if c.Name == Players[v].Name..'_LC' then
				c:Destroy()
			end
		end
	end
end)

addcmd('view',{'spectate'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		workspace.CurrentCamera.CameraSubject = Players[v].Character
		notify('Spectate','Viewing ' .. Players[v].Name)
	end
end)

addcmd('unview',{'unspectate'},
function()
	workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character
	notify('Spectate','View turned off')
end)

local fa = false
local cam = workspace.CurrentCamera
local cam1 = 0
local cam2 = 0
local cam3 = 0
local k1 = false
local k2 = false
local k3 = false
local k4 = false
local k5 = false
local k6 = false
cs = 0.5
function movecam()
	local fc = Players.LocalPlayer.Character:FindFirstChild('xFC')
	if fa == false then
		repeat
			if Players.LocalPlayer.Character:FindFirstChild('xFC') then
				local fp = fc.Position
				fc.CFrame = CFrame.new(Vector3.new(fp.X,fp.Y+cam3,fp.Z),cam.CFrame.p)*CFrame.new(cam2,0,cam1)
				fa = true
				Players.LocalPlayer.Character.Head.Anchored = true
			end
			game:GetService('RunService').RenderStepped:Wait()
		until not Players.LocalPlayer.Character:FindFirstChild('xFC')
		fa = false
	end
end
function kp1(inputObject, gameProcessedEvent)
	if not gameProcessedEvent and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild('xFC') then
		if inputObject.KeyCode == Enum.KeyCode.W or inputObject.KeyCode == Enum.KeyCode.Up then
			k1 = true
			cam1 = cs end
		if inputObject.KeyCode == Enum.KeyCode.S or inputObject.KeyCode == Enum.KeyCode.Down then
			k2 = true
			cam1 = (cs*-1) end
		if inputObject.KeyCode == Enum.KeyCode.A or inputObject.KeyCode == Enum.KeyCode.Left then
			k3 = true
			cam2 = cs end
		if inputObject.KeyCode == Enum.KeyCode.D or inputObject.KeyCode == Enum.KeyCode.Right then
			k4 = true
			cam2 = (cs*-1) end
		if inputObject.KeyCode == Enum.KeyCode.E or inputObject.KeyCode == Enum.KeyCode.Space then
			k5 = true
			cam3 = cs end
		if inputObject.KeyCode == Enum.KeyCode.Q or inputObject.KeyCode == Enum.KeyCode.LeftControl then
			k6 = true
			cam3 = (cs*-1) end
	end
end
UserInputService.InputBegan:connect(kp1)
function kp2(inputObject, gameProcessedEvent)
	if not gameProcessedEvent and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild('xFC') then
		if inputObject.KeyCode == Enum.KeyCode.W or inputObject.KeyCode == Enum.KeyCode.Up then
			k1 = false
			if k2 == false then
				cam1 = 0
			end
		end
		if inputObject.KeyCode == Enum.KeyCode.S or inputObject.KeyCode == Enum.KeyCode.Down then
			k2 = false
			if k1 == false then
				cam1 = 0
			end
		end
		if inputObject.KeyCode == Enum.KeyCode.A or inputObject.KeyCode == Enum.KeyCode.Left then
			k3= false
			if k4== false then
				cam2 = 0
			end
		end
		if inputObject.KeyCode == Enum.KeyCode.D or inputObject.KeyCode == Enum.KeyCode.Right then
			k4 = false
			if k3 == false then
				cam2 = 0
			end
		end
		if inputObject.KeyCode == Enum.KeyCode.E or inputObject.KeyCode == Enum.KeyCode.Space then
			k5 = false
			if k6 == false then
				cam3 = 0
			end
		end
		if inputObject.KeyCode == Enum.KeyCode.Q or inputObject.KeyCode == Enum.KeyCode.LeftControl then
			k6 = false
			if k5 == false then
				cam3 = 0
			end
		end
	end
end
UserInputService.InputEnded:connect(kp2)
fcEnabled = false
function FC()
	if not Players.LocalPlayer.Character:FindFirstChild('xFC') then
		local fc = Instance.new('Part',Players.LocalPlayer.Character)
		fc.CanCollide = false
		fc.Anchored = true
		fc.Transparency = 1
		fc.Size = Vector3.new(1,1,1)
		fc.Name = 'xFC'
		fc.CFrame = Players.LocalPlayer.Character.Head.CFrame
		local cam = workspace.CurrentCamera
		cam.CameraSubject = fc
		cam.CameraType = 'Custom'
		movecam()
	end
end
function UFC()
	if Players.LocalPlayer.Character:FindFirstChild('xFC') then
		Players.LocalPlayer.Character:FindFirstChild('xFC'):Destroy()
		local cam = workspace.CurrentCamera
		cam.CameraSubject = Players.LocalPlayer.Character.Humanoid
		cam.CameraType = 'Custom'
		Players.LocalPlayer.Character.Head.Anchored = false
	end
end

addcmd('freecam',{'fc'},
function(args, speaker)
	FC()
end)

addcmd('fixcam',{},
function(args, speaker)
	UFC()
	workspace.CurrentCamera:remove()
	wait(.1)
	workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character.Humanoid
	workspace.CurrentCamera.CameraType = "Custom"
	Players.LocalPlayer.CameraMinZoomDistance = 0.5
	Players.LocalPlayer.CameraMaxZoomDistance = 400
	Players.LocalPlayer.CameraMode = "Classic"
	Players.LocalPlayer.Character.Head.Anchored = false
end)

addcmd('unfreecam',{'nofreecam','unfc','nofc'},
function(args, speaker)
	UFC()
end)

addcmd('freecamspeed',{'fcspeed'},
function(args, speaker)
	if isNumber(args[1]) then
		cs = args[1]
	end
end)

addcmd('firstp',{},
function(args, speaker)
	Players.LocalPlayer.CameraMode = "LockFirstPerson"
end)

addcmd('thirdp',{},
function(args, speaker)
	Players.LocalPlayer.CameraMode = "Classic"
end)

addcmd('maxzoom',{},
function(args, speaker)
	Players.LocalPlayer.CameraMaxZoomDistance = args[1]
end)

addcmd('unlockws',{'unlockworkspace'},
function(args, speaker)
	notify('Workspace Modified','Workspace unlocked')
	wait(1)
    local function unlock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
end)

addcmd('lockws',{'lockworkspace'},
function(args, speaker)
	notify('Workspace Modified','Workspace locked')
	wait(1)
    local function lock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = true
            end
            lock(v)
        end
    end
    lock(workspace)
end)

addcmd('delete',{'remove'},
function(args, speaker)
	part = getstring(1)
    local function dels(instance)
        for i,v in pairs(instance:GetChildren())do
            if v.Name:lower() == part:lower() then v:Destroy() end
            dels(v)
        end
    end
    dels(workspace)
notify('Item(s) Deleted','Deleted ' ..getstring(1))
end)

addcmd('deleteclass',{'removeclass','deleteclassname','removeclassname','dc'},
function(args, speaker)
	part = getstring(1)
    local function dels(instance)
        for i,v in pairs(instance:GetChildren())do
            if v.ClassName:lower() == part:lower() then v:Destroy() end
            dels(v)
        end
    end
    dels(workspace)
notify('Item(s) Deleted','Deleted items with ClassName ' ..getstring(1))
end)

addcmd('btools',{},
function(args, speaker)
	Instance.new("HopperBin", Players.LocalPlayer.Backpack).BinType = 1
	Instance.new("HopperBin", Players.LocalPlayer.Backpack).BinType = 2
	Instance.new("HopperBin", Players.LocalPlayer.Backpack).BinType = 3
	Instance.new("HopperBin", Players.LocalPlayer.Backpack).BinType = 4
end)

addcmd('f3x',{'fex'},
function(args, speaker)
	loadstring(game:GetObjects("rbxassetid://1059691823")[1].Source)()
end)

addcmd('age',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local players = getPlayer(args[1], speaker)
		local ages = {}
		for i,v in pairs(players) do
			local p = Players[v]
			table.insert(ages, p.Name.."'s age is: "..p.AccountAge)
		end
    notify('Account Age',table.concat(ages, ',\n'))
	end
end)

addcmd('os',{'platform', 'device'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local platforms = {}
	for i,v in pairs(players) do
		local p = Players[v]
		table.insert(platforms, p.Name.."'s platform is: "..p.OsPlatform)
	end
	notify('OS',table.concat(platforms, ',\n'))
end)

addcmd('goto',{'to'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChild("HumanoidRootPart") then
				speaker.Character.Humanoid.Jump = true
			end
			speaker.Character.HumanoidRootPart.CFrame = Players[v].Character.HumanoidRootPart.CFrame + Vector3.new(4,1,0)
		end
	end
end)

bringT = {}
addcmd('loopbring',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			if Players[v].Name ~= Players.LocalPlayer.Name and not FindInTable(bringT, Players[v].Name) then
				table.insert(bringT, Players[v].Name)
				local pchar=Players[v].Character
				pchar.Humanoid.Jump = true
				repeat wait()
				pchar = Players[v].Character
				for i,c in pairs(players) do
					if pchar~= nil and pchar:FindFirstChild("HumanoidRootPart") and speaker.Character ~= nil and speaker.Character:FindFirstChild("HumanoidRootPart") then
						pchar.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(3,1,0)
					end
				end
				until not FindInTable(bringT, Players[v].Name)
			end
		end)
	end
end)

addcmd('unloopbring',{'noloopbring'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			for a,b in pairs(bringT) do if b == Players[v].Name then table.remove(bringT, a) end end
		end)
	end
end)

addcmd('freeze',{'fr'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i, v in pairs(players) do
			spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Part") and not x.Anchored then
						x.Anchored = true
					end
				end
			end)
		end
	end
end)

addcmd('thaw',{'unfreeze','unfr'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i, v in pairs(players) do
			spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Part") and x.Anchored then
						x.Anchored = false
					end
				end
			end)
		end
	end
end)

addcmd('kill',{'fekill'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		-- Full credit to CyclicaIIy @V3rmillion Cyclically#4905 @Discord
		local target = Players[v]
		local torsoname = "Torso"
		if Players.LocalPlayer.Character:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R15 then
		    torsoname = "UpperTorso"
		end
		if target.Character ~= nil then
		    local savepos =Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
		    Players.LocalPlayer.Character:FindFirstChild(torsoname).Anchored = true
		    local tool = Instance.new("Tool", Players.LocalPlayer.Backpack)
		    local hat = Players.LocalPlayer.Character:FindFirstChildOfClass("Accessory")
		    local hathandle = hat.Handle
		    hathandle.Parent = tool
		    hathandle.Massless = true
		    tool.GripPos = Vector3.new(0, 9e99, 0)
		    tool.Parent = Players.LocalPlayer.Character
		    repeat wait() until Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
		    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
		    Players.LocalPlayer.Character:FindFirstChild(torsoname).Anchored = false
		    repeat
		        Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = target.Character:FindFirstChild("HumanoidRootPart").CFrame
		        wait()
		    until target.Character == nil or target.Character:FindFirstChild("Humanoid").Health <= 0 or Players.LocalPlayer.Character == nil or Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - target.Character:FindFirstChild("Humanoid").WalkSpeed) > (target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
		    Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
		    hathandle.Parent = hat
		    hathandle.Massless = false
		    tool:Destroy()
		   Players. LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
		end
	end
end)

addcmd('bring',{'febring'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if tools(Players.LocalPlayer) then
		for i,v in pairs(players)do
			-- Full credit to CyclicaIIy @V3rmillion
			local LocalPlayer = Players.LocalPlayer
			local ran1 = false
			local equipped = false
			local savepos = LocalPlayer.Character.HumanoidRootPart.CFrame
			local target = Players[v]
			if #LocalPlayer.Backpack:GetChildren() < 2 then
				repeat
					for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
						if tool:IsA("Tool") then
							tool.Parent = LocalPlayer
						end
					end
					LocalPlayer.Character:ClearAllChildren()
					local char = Instance.new("Model", workspace)
					char.Name = "character"
					Instance.new("Part", char).Name = "Torso";
					Instance.new("Part", char).Name = "Head";
					Instance.new("Humanoid", char).Name = "Humanoid";
					LocalPlayer.Character = char
					repeat wait() until LocalPlayer.Character
				until #LocalPlayer:GetChildren() - 4 >= 2
				for _, char in pairs(workspace:GetChildren()) do
					if char.Name == "character" and char:IsA("Model") then
						char:Destroy()
					end
				end
				repeat wait() until LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
				for _, tool in pairs(LocalPlayer:GetChildren()) do
				if tool:IsA("Tool") then
						tool.Parent = LocalPlayer.Backpack
					end
				end
				LocalPlayer.Character.HumanoidRootPart.CFrame = savepos
			end
			LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Character
			LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Character
			local tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
			tool.Parent = workspace
			local attacher = LocalPlayer.Character:FindFirstChildOfClass("Tool")
			attacher.Parent = workspace
			LocalPlayer.Character.Humanoid:EquipTool(tool)
			repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
			LocalPlayer.Character.Humanoid:UnequipTools()
			attacher.AncestryChanged:connect(function()
				if ran1 == false then
					ran1 = true
					equipped = true
				end
			end)
			local anim = Instance.new("Animation")
			anim.AnimationId = "rbxassetid://188632011"
			local loadanim = LocalPlayer.Character.Humanoid:LoadAnimation(anim)
			loadanim.Looped = true
			loadanim:Play()
			repeat
				target.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position + LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 2 + LocalPlayer.Character.HumanoidRootPart.CFrame.rightVector * 2)
				wait()
			until equipped == true
			loadanim:Stop()
			anim:Destroy()
			LocalPlayer.Character.Humanoid:EquipTool(tool)
			wait()
			LocalPlayer.Character.Humanoid:UnequipTools()
		end
	else
		notify('Tool Required','You need to have a tool to use this command')
	end
end)

oofing = false
addcmd('loopoof',{},
function(args, speaker)
	oofing = true
	repeat wait(0.01)
		for i,v in pairs(Players:GetPlayers()) do
			if v.Character ~= nil and v.Character:FindFirstChild'Head' then
				for _,x in pairs(v.Character.Head:GetChildren()) do
					if x:IsA'Sound' then x.Playing = true end
				end
			end
		end
	until oofing == false
end)

addcmd('unloopoof',{},
function(args, speaker)
	oofing = false
end)

addcmd('respawn',{'ungod'},
function(args, speaker)
	respawn(Players.LocalPlayer)
end)

addcmd('refresh',{'re'},
function(args, speaker)
	refresh(Players.LocalPlayer)
end)

addcmd('god',{''},
function(args, speaker)
	Players.LocalPlayer.Character.Humanoid.Name = 1
	local l = Players.LocalPlayer.Character["1"]:Clone()
	l.Parent = Players.LocalPlayer.Character
	l.Name = "Humanoid"
	wait(0.1)
	Players.LocalPlayer.Character["1"]:Destroy()
	workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character
	Players.LocalPlayer.Character.Animate.Disabled = true
	wait(0.1)
	Players.LocalPlayer.Character.Animate.Disabled = false
	Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)

addcmd('invisible',{'invis'},
function(args, speaker)
-- Full credit to Elite1337#9377 & Timeless#4044 @Discord
local function CheckRig()
	if Players.LocalPlayer.Character then
		local Humanoid = Players.LocalPlayer.Character:WaitForChild('Humanoid')
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			return 'R15'
		else
			return 'R6'
		end
	end
end
local function InitiateInvis()
	local Character = Players.LocalPlayer.Character
	local StoredCF = Character.PrimaryPart.CFrame
	local Part = Instance.new('Part',workspace)
	Part.Size = Vector3.new(5,0,5)
	Part.Anchored = true
	Part.CFrame = CFrame.new(Vector3.new(9999,9999,9999))
	Character.PrimaryPart.CFrame = Part.CFrame*CFrame.new(0,3,0)
	spawn(function()
		wait(3)
		Part:Destroy()
	end)
	if CheckRig() == 'R6' then
		local Clone = Character.HumanoidRootPart:Clone()
		Character.HumanoidRootPart:Destroy()
		Clone.Parent = Character
	else
	local Clone = Character.LowerTorso.Root:Clone()
	Character.LowerTorso.Root:Destroy()
	Clone.Parent = Character.LowerTorso
	end
end
InitiateInvis()
end)

addcmd('strengthen',{},
function(args, speaker)
	for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
		end
	end
end)

addcmd('weaken',{},
function(args, speaker)
	for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
		end
	end
end)

addcmd('unweaken',{'unstrengthen'},
function(args, speaker)
	for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('jpower',{'jumppower','jp'},
function(args, speaker)
	if Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		Players.LocalPlayer.Character.Humanoid.JumpPower=tonumber(args[1])
	end
end)

addcmd('gravity',{'grav'},
function(args, speaker)
	workspace.Gravity = (args[1])
end)

addcmd('hipheight',{'hheight'},
function(args, speaker)
	if Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		Players.LocalPlayer.Character.Humanoid.HipHeight = args[1]
	end
end)

addcmd('dance',{},
function(args, speaker)
	if not r15(Players.LocalPlayer) then
		local pchar=Players.LocalPlayer.Character
			local anim = nil		
			local dance1 = math.random(1,7)
			if dance1 == 1 then
			anim = '27789359'
			end
			if dance1 == 2 then
			anim = '30196114'
			end
			if dance1 == 3 then
			anim = '248263260'
			end
			if dance1 == 4 then
			anim = '45834924'
			end
			if dance1 == 5 then
			anim = '33796059'
			end
			if dance1 == 6 then
			anim = '28488254'
			end
			if dance1 == 7 then
			anim = '52155728'
			end
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://"..anim
		local animTrack = pchar.Humanoid:LoadAnimation(animation)
		animTrack:Play()
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('nolimbs',{'rlimbs'},
function(args, speaker)
	if r15(Players.LocalPlayer) then
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" or
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" or
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('noarms',{'rarms'},
function(args, speaker)
	if r15(Players.LocalPlayer) then
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('nolegs',{'rlegs'},
function(args, speaker)
	if r15(Players.LocalPlayer) then
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end)

addcmd('sit',{},
function(args, speaker)
	if Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		Players.LocalPlayer.Character.Humanoid.Sit = true
	end
end)

addcmd('team',{},
function(args, speaker)
	local teamname = nil
	for a,b in pairs(game:GetService("Teams"):GetChildren()) do
		local L_name = b.Name:lower()
		local F = L_name:find(getstring(1))
		if F == 1 then
			teamname = b 
		end
	end
	Players.LocalPlayer.Team = teamname
end)

addcmd('spasm',{},
function(args, speaker)
	if not r15(Players.LocalPlayer) then
		local pchar=Players.LocalPlayer.Character
		local AnimationId = "33796059"
		SpasmAnim = Instance.new("Animation")
		SpasmAnim.AnimationId = "rbxassetid://"..AnimationId
		Spasm = pchar.Humanoid:LoadAnimation(SpasmAnim)
		Spasm:Play()
		Spasm:AdjustSpeed(99)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('unspasm',{'nospasm'},
function(args, speaker)
	Spasm:Stop()
	SpasmAnim:Destroy()
end)

addcmd('headthrow',{},
function(args, speaker)
	if not r15(Players.LocalPlayer) then
		local AnimationId = "35154961"
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play(0)
		k:AdjustSpeed(1)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('animation',{'anim'},
function(args, speaker)
	if not r15(Players.LocalPlayer) then
		local pchar=Players.LocalPlayer.Character
		local AnimationId = tostring(args[1])
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = pchar.Humanoid:LoadAnimation(Anim)
		k:Play()
		if args[2] then
			k:AdjustSpeed(tostring(args[2]))
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('tpposition',{'tppos'},
function(args,speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = Players.LocalPlayer.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		char.HumanoidRootPart.CFrame = CFrame.new(tpX,tpY,tpZ)
	end
end)

addcmd('offset',{},
function(args,speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = Players.LocalPlayer.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(tpX,tpY,tpZ)
	end
end)

addcmd('getposition',{'getpos'},
function(args,speaker)
	local char = Players.LocalPlayer.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		local pos = tostring(char.HumanoidRootPart.Position)
		notify('Current Position',pos)
	end
end)

addcmd('speed',{'ws'},
function(args, speaker)
	if Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		if args[2] then
			Players.LocalPlayer.Character.Humanoid.WalkSpeed=tonumber(args[2])
		else
			Players.LocalPlayer.Character.Humanoid.WalkSpeed=tonumber(args[1])
		end
	end
end)

addcmd('tools',{'gears'},
function(args, speaker)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = Players.LocalPlayer.Backpack
			end
			copy(c)
		end
	end
	copy(game:GetService("Lighting"))
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
			c:Clone().Parent = Players.LocalPlayer.Backpack
			end
			copy(c)
		end
	end
	copy(game:GetService("ReplicatedStorage"))
	notify('Tools','Copied tools from ReplicatedStorage and Lighting')
end)

addcmd('keeptools',{'startertools','stools','ktools'},
function(args, speaker)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = Players.LocalPlayer.StarterGear
			end
			copy(c)
        end
    end
    copy(Players.LocalPlayer.Backpack)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = Players.LocalPlayer.StarterGear
			end
			copy(c)
		end
	end
	copy(Players.LocalPlayer.Character)
	notify('Tools','Copied tools to StarterGear')
end)

addcmd('nokeeptools',{'unkeeptools','nokeeptools','nostartertools','unstartertools','nostools','unstools','noktools','unktools'},
function(args, speaker)
	for i,c in pairs(Players.LocalPlayer.StarterGear:GetChildren())do
		if c:IsA('Tool') or c:IsA('HopperBin') then c:destroy()
		end
	end
	notify('Tools','Cleared tools from StarterGear')
end)

addcmd('notools',{'rtools','clrtools','removetools'},
function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Backpack:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:destroy()
		end
	end
	for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:destroy()
		end
	end
	notify('Tools','Removed tools')
end)

addcmd('explorer',{'dex'},
function(args, speaker)
	local dex = loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
	game:GetService("CoreGui").RobloxGui.Dex.PropertiesFrame.Changed:connect(function(property)
		if property == 'Position' then
			if game:GetService("CoreGui").RobloxGui.Dex.PropertiesFrame.Position == UDim2.new(1, -300, 0.5, 36) then
				if Holder.Position.X.Offset > -550 or Notification.Position.X.Offset > -550 then
					Holder:TweenPosition(UDim2.new(1, -550, 1, Holder.Position.Y.Offset), "InOut", "Quart", 0.2, true, nil)
					Notification:TweenPosition(UDim2.new(1, -800, 1, Notification.Position.Y.Offset), "InOut", "Quart", 0.5, true, nil)
				end
				DexNOffset = -800
				DexOffset = -550
			elseif game:GetService("CoreGui").RobloxGui.Dex.PropertiesFrame.Position == UDim2.new(1, 30, 0.5, 36) then
				if Holder.Position.X.Offset == -550 or Notification.Position.X.Offset == -800 then
					Holder:TweenPosition(UDim2.new(1, -250, 1, Holder.Position.Y.Offset), "InOut", "Quart", 0.2, true, nil)
					Notification:TweenPosition(UDim2.new(1, -500, 1, Notification.Position.Y.Offset), "InOut", "Quart", 0.5, true, nil)
				end
				DexNOffset = -500
				DexOffset = -250
			end
		end
	end)
end)

addcmd('remotespy',{'remotes'},
function(args, speaker)
	notify('Remotespy','Printed remotes')
	function getem(o)
		for i,v in pairs(o:children())do
			if string.match(v.ClassName, "RemoteEvent") or string.match(v.ClassName, "RemoteFunction") then              
				print("Name: "..v.Name.." | ".."Type: "..v.ClassName.." | ".."Location: ".."game."..v:GetFullName())
			end
			getem(v)
		end
	end
	pcall(getem,game)
end)

loopgoto = nil
addcmd('loopgoto',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		loopgoto = Players[v]
		repeat wait() if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character.Humanoid.Jump = true
			end
			speaker.Character:MoveTo(Players[v].Character.HumanoidRootPart.Position)
		end
		until loopgoto ~= Players[v]
	end
end)

addcmd('unloopgoto',{'noloopgoto'},
function(args, speaker)
	loopgoto = nil
end)

headsitting = false
addcmd('headsit',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		headsitting = true
		Players.LocalPlayer.Character.Humanoid.Sit = true
		repeat wait()
			if Players[v].Character and Players[v].Character:FindFirstChild('HumanoidRootPart') and Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
				if Players:FindFirstChild(Players[v].Name) and Players.LocalPlayer.Character.Humanoid.Sit == true then
					Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Players[v].Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
				else
					headsitting = false
				end
			end
		until headsitting == false
	end
end)

spamming = false
spamspeed = 1
addcmd('spam',{},
function(args, speaker)
	spamming = true
	local spamstring = getstring(1)
	repeat wait(spamspeed)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamstring, "All")
	until spamming == false
end)

addcmd('nospam',{'unspam'},
function(args, speaker)
	spamming = false
end)

pmspamming = {}
addcmd('pmspam',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			if FindInTable(pmspamming, Players[v].Name) then return end
			table.insert(pmspamming, Players[v].Name)
			local pmspamstring = getstring(2)
			repeat wait(spamspeed)
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Players[v].Name.." "..pmspamstring, "All")
			until not FindInTable(pmspamming, Players[v].Name)
		end)
	end
end)

addcmd('nopmspam',{'unpmspam'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			for a,b in pairs(pmspamming) do
				if b == Players[v].Name then
					table.remove(pmspamming, a)
				end
			end
		end)
	end
end)

addcmd('spamspeed',{},
function(args, speaker)
	spamspeed = args[1]
end)

addcmd('blockhead',{},
function(args, speaker)
	Players.LocalPlayer.Character.Head.Mesh:Destroy()
end)

addcmd('blockhats',{},
function(args, speaker)
	for _,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if (v:IsA("Accessory")) then
			v.Handle.Mesh:remove()
		end
	end
end)

addcmd('clone',{},
function(args, speaker)
	local AnimationId = "215384594"
	local Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://"..AnimationId
	local k = Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
	k:Play()
	k:AdjustSpeed(100)
end)

addcmd('creeper',{},
function(args, speaker)
	if r15(Players.LocalPlayer) then
		local lol = Players.LocalPlayer
		lol.Character["Head"].Mesh:Destroy()
		lol.Character["LeftUpperArm"]:Destroy()
		lol.Character["RightUpperArm"]:Destroy()
		for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA'Hat' or v:IsA'Accessory' then
				v.Parent = workspace
			end
		end
	else
		local lol = Players.LocalPlayer
		lol.Character["Head"].Mesh:Destroy()
		lol.Character["Left Arm"]:Destroy()
		lol.Character["Right Arm"]:Destroy()
		for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA'Hat' or v:IsA'Accessory' then
				v.Parent = workspace
			end
		end
	end
end)

bangplr = nil

addcmd('bang',{'rape'},
function(args, speaker)
	if not r15(Players.LocalPlayer) then
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players)do
			bangAnim = Instance.new("Animation")
			bangAnim.AnimationId = "rbxassetid://148840371"
			bang = Players.LocalPlayer.Character.Humanoid:LoadAnimation(bangAnim)
			bang:Play(.1, 1, 1)
			bang:AdjustSpeed(3)
			bangplr = Players[v].Name
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('unbang',{'unrape'},
function(args, speaker)
	bangplr = nil
	bang:Stop()
	bangAnim:Destroy()
end)

addcmd('bringpart',{},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = speaker.Character.HumanoidRootPart.CFrame
		end
	end
end)

addcmd('gotopart',{},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			speaker.Character.HumanoidRootPart.CFrame = v.CFrame
			wait(0.1)
		end
	end
end)

gtools = false
addcmd('grabtools',{},
function(args, speaker)
	workspace.ChildAdded:connect(function(part)
		if gtools then
			if part:IsA("Tool") then
				part.Handle.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end)
end)

addcmd('nograbtools',{'ungrabtools'},
function(args, speaker)
	gtools = false
end)

addcmd('light',{},
function(args, speaker)
	local light = Instance.new("PointLight", speaker.Character.HumanoidRootPart)
	light.Range = 30
	if args[1] then
		light.Brightness = args[1]
	else
		light.Brightness = 5
	end
end)

addcmd('unlight',{'nolight'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.ClassName == "PointLight" then
			v:Destroy()
		end
	end
end)

addcmd('givetools',{},
function(args, speaker)
	for i,t in pairs(Players.LocalPlayer.Backpack:GetDescendants()) do
		if t:IsA("Tool") then
			t.Parent = Players.LocalPlayer.Character
			wait()
			local players = getPlayer(args[1], speaker)
			for i,v in pairs(players)do
				t.Parent = Players[v].Character
			end
		end
	end
end)

addcmd('copytools',{'clonetools'},
function(args, speaker)
    local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			for i,v in pairs(Players[v].Backpack:GetChildren()) do
				if v:IsA('Tool') or v:IsA('HopperBin') then
					v:Clone().Parent = speaker.Backpack
				end
			end
		end)
	end
end)

addcmd('naked',{},
function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Clothing") then
			v:Destroy()
		end
	end
end)

addcmd('spawnpoint',{'spawn'},
function(args, speaker)
	spawnpos = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	spawnpoint = true
	notify('Spawn Point','Spawn point created at '..tostring(spawnpos))
end)

addcmd('nospawnpoint',{'nospawn'},
function(args, speaker)
	spawnpoint = false
	notify('Spawn Point','Removed spawn point')
end)

addcmd('hatspin',{'spinhats'},
function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			local keep = Instance.new("BodyPosition") keep.Parent = v.Handle keep.Name = "no"
			local spin = Instance.new("BodyAngularVelocity") spin.Parent = v.Handle spin.Name = "ha"
			if v.Handle.AccessoryWeld then
				v.Handle.AccessoryWeld:Destroy()
			end
			if args[1] then
				spin.AngularVelocity = Vector3.new(0, args[1], 0)
				spin.MaxTorque = Vector3.new(0, args[1] * 2, 0)
			else
				spin.AngularVelocity = Vector3.new(0, 100, 0)
				spin.MaxTorque = Vector3.new(0, 200, 0)
			end
			keep.P = 30000
			keep.D = 50
			spinning = keep
			spinenabled = true
		end
	end
end)

addcmd('unhatspin',{'unspinhats'},
function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			pcall(function()
				if v:IsA("Accessory") or v:IsA("Hat") then
					v.Parent = workspace
				end
				wait(0.5)
				v.Handle.no:Destroy()
				v.Handle.ha:Destroy()
				if v:IsA("Accessory") or v:IsA("Hat") then
					v.Parent = Players.LocalPlayer.Character
				end
			end)
		end
	end
end)

addcmd('ambient',{},
function(args, speaker)
	game:GetService("Lighting").Ambient = Color3.new(args[1],args[2],args[3])
	game:GetService("Lighting").OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

addcmd('nofog',{},
function(args, speaker)
	game:GetService("Lighting").FogEnd = 100000
end)

addcmd('brightness',{},
function(args, speaker)
	game:GetService("Lighting").Brightness = args[1]
end)

origsettings = {abt = game:GetService("Lighting").Ambient, oabt = game:GetService("Lighting").OutdoorAmbient, brt = game:GetService("Lighting").Brightness, time = game:GetService("Lighting").TimeOfDay, fclr = game:GetService("Lighting").FogColor, fe = game:GetService("Lighting").FogEnd, fs = game:GetService("Lighting").FogStart}

addcmd('restorelighting',{'rlighting'},
function(args,speaker)
	game:GetService("Lighting").Ambient = origsettings.abt
	game:GetService("Lighting").OutdoorAmbient = origsettings.oabt
	game:GetService("Lighting").Brightness = origsettings.brt
	game:GetService("Lighting").TimeOfDay = origsettings.time
	game:GetService("Lighting").FogColor = origsettings.fclr
	game:GetService("Lighting").FogEnd = origsettings.fe
	game:GetService("Lighting").FogStart = origsettings.fs
end)

addcmd('stun',{},
function(args, speaker)
	Players.LocalPlayer.Character.Humanoid.PlatformStand = true
end)

addcmd('unstun',{'nostun'},
function(args, speaker)
	Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end)

addcmd('drophats',{'drophat'},
function(args, speaker)
	if speaker.Character then
		for _,obj in pairs(speaker.Character:GetChildren()) do
			if obj:IsA("Accessory") then
				obj.Parent = workspace
			end
		end
	end
end)

addcmd('droptools',{'droptool'},
function(args, speaker)
	if speaker.Character then
		for _,obj in pairs(speaker.Character:GetChildren()) do
			if obj:IsA("Tool") then
				obj.Parent = workspace
			end
		end
	end
	if speaker:FindFirstChild("Backpack") then
		for _,obj in pairs(speaker.Backpack:GetChildren()) do
			if obj:IsA("Tool") then
				obj.Parent = workspace
			end
		end
	end
end)

addcmd('logs',{'chatlogs'},
function(args, speaker)
	logsDrag:TweenPosition(UDim2.new(0, 0, 1, -250), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('fling',{},
function(args, speaker)
	for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(2, 0.3, 0.5)
		end
	end
	for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA('Accessory') or v:IsA('Hat') then
			for e,c in pairs(v:GetDescendants()) do
				if c:IsA('Part') or c:IsA('MeshPart') then
					c.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
				end
			end
		end
	end
	execCmd('noclip')
	wait(.1)
	local bambam = Instance.new("BodyAngularVelocity")
	bambam.Parent = Players.LocalPlayer.Character.HumanoidRootPart
	bambam.AngularVelocity = Vector3.new(0,311111,0)
	bambam.MaxTorque = Vector3.new(0,311111,0)
	bambam.P = math.huge
end)

addcmd('unfling',{'nofling'},
function(args, speaker)
	execCmd('clip')
	wait(.1)
	for i,v in pairs(Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('spin',{},
function(args, speaker)
	local Spin = Instance.new("BodyAngularVelocity", Players.LocalPlayer.Character.HumanoidRootPart)
	Spin.Name = "Spinning"
	Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	Spin.AngularVelocity = Vector3.new(0,20,0)
end)

addcmd('unspin',{},
function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
end)

transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end

addcmd('xray',{},
function(args, speaker)
	transparent = true
	x(transparent)
end)

addcmd('unxray',{'noxray'},
function(args, speaker)
	transparent = false
	x(transparent)
end)

addcmd('togglexray',{},
function(args, speaker)
	transparent=not transparent
	x(transparent)
end)

if PluginsTable ~= nil or PluginsTable ~= {} then
	FindPlugins(PluginsTable)
end

if pcall(function() loadstring(game:HttpGet(('https://pastebin.com/raw/yKieh77L'),true))() end) then
	if ver ~= Version then
		notify('Outdated','Get a new version at infyield.yolasite.com')
	end
	if Announcement and Announcement ~= '' then
		local AnnGUI = Instance.new("Frame")
		local background = Instance.new("Frame")
		local Dark = Instance.new("Frame")
		local TextBox = Instance.new("TextLabel")
		local shadow = Instance.new("Frame")
		local PopupText = Instance.new("TextLabel")
		local Exit = Instance.new("ImageButton")
		
		AnnGUI.Name = randomString()
		AnnGUI.Parent = PARENT
		AnnGUI.Active = true
		AnnGUI.BackgroundColor3 = Color3.new(1, 1, 1)
		AnnGUI.BackgroundTransparency = 1
		AnnGUI.Position = UDim2.new(0.5, -180, 0, -400)
		AnnGUI.Size = UDim2.new(0, 360, 0, 20)
		AnnGUI.ZIndex = 4
		
		background.Name = "background"
		background.Parent = AnnGUI
		background.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
		background.BorderSizePixel = 0
		background.Position = UDim2.new(0, 0, 0, 20)
		background.Size = UDim2.new(0, 360, 0, 116)
		
		Dark.Name = "Dark"
		Dark.Parent = background
		Dark.Active = true
		Dark.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
		Dark.BackgroundTransparency = 0.5
		Dark.BorderSizePixel = 0
		Dark.Size = UDim2.new(0, 360, 0, 5)
		
		TextBox.Parent = background
		TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
		TextBox.BackgroundTransparency = 1
		TextBox.Position = UDim2.new(0.0166666675, 0, 0.103232808, 0)
		TextBox.Size = UDim2.new(0, 348, 0, 98)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.FontSize = Enum.FontSize.Size18
		TextBox.TextWrapped = true
		TextBox.Text = Announcement
		TextBox.TextColor3 = Color3.new(1, 1, 1)
		TextBox.TextXAlignment = Enum.TextXAlignment.Left
		TextBox.TextYAlignment = Enum.TextYAlignment.Top
		
		shadow.Name = "shadow"
		shadow.Parent = AnnGUI
		shadow.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
		shadow.BorderColor3 = Color3.new(0, 0, 0)
		shadow.BorderSizePixel = 0
		shadow.Size = UDim2.new(0, 360, 0, 20)
		shadow.ZIndex = 4
		
		PopupText.Name = "PopupText"
		PopupText.Parent = shadow
		PopupText.BackgroundTransparency = 1
		PopupText.Position = UDim2.new(0, 51, 0, 0)
		PopupText.Size = UDim2.new(0.760355055, -16, 0.949999988, 0)
		PopupText.ZIndex = 4
		PopupText.Font = Enum.Font.SourceSans
		PopupText.TextSize = 20
		PopupText.Text = "Server Announcement"
		PopupText.TextColor3 = Color3.new(1, 1, 1)
		PopupText.TextStrokeTransparency = 0
		PopupText.TextWrapped = true
		
		Exit.Name = "Exit"
		Exit.Parent = shadow
		Exit.BackgroundColor3 = Color3.new(1, 1, 1)
		Exit.BackgroundTransparency = 1
		Exit.Size = UDim2.new(0, 20, 0, 20)
		Exit.ZIndex = 4
		Exit.Image = "rbxassetid://2132544126"
		
		wait(1)
		AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, 150), "InOut", "Quart", 0.5, true, nil)
		
		Exit.MouseButton1Click:Connect(function()
			AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, -400), "InOut", "Quart", 0.5, true, nil)
			wait(0.6)
			AnnGUI:Destroy()
		end)
	end
end

wait()
Credits:TweenPosition(UDim2.new(0,0,0.9,0), "Out", "Quart", 0.2)
Logo:TweenSizeAndPosition(UDim2.new(0,175,0,175),UDim2.new(0,37,0,45), "Out", "Quart", 0.3)
wait(1)
for i=1,10 do
	Logo.ImageTransparency = Logo.ImageTransparency+0.1
	IntroBackground.BackgroundTransparency = Logo.BackgroundTransparency+0.1
	wait()
end
Credits:TweenPosition(UDim2.new(0,0,0.9,30), "Out", "Quart", 0.2)
wait(0.2)
Logo:Destroy()
Credits:Destroy()
IntroBackground:Destroy()
minimizeHolder()
end)

FeKill.Name = "FeKill"
FeKill.Parent = Main
FeKill.BackgroundColor3 = Color3.new(1, 0.333333, 0)
FeKill.Position = UDim2.new(0.37956205, 0, 0.640109837, 0)
FeKill.Size = UDim2.new(0, 164, 0, 58)
FeKill.Font = Enum.Font.SourceSans
FeKill.Text = "Fe Kill"
FeKill.TextColor3 = Color3.new(1, 1, 1)
FeKill.TextScaled = true
FeKill.TextSize = 35
FeKill.TextWrapped = true
FeKill.MouseButton1Down:connect(function()
-- Made By JackMcJagger15
local FlingKill = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Label = Instance.new("Frame")
local Shadow = Instance.new("Frame")
local StartKill = Instance.new("TextButton")
local StopKill = Instance.new("TextButton")
local Instructions = Instance.new("TextLabel")
local CurrentPower = Instance.new("TextLabel")
local Recomendation = Instance.new("TextLabel")
local NameOfGui = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local UPArrow = Instance.new("TextButton")
local DownArrow = Instance.new("TextButton")

-- Properties

FlingKill.Name = "Fling/Kill"
FlingKill.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = FlingKill
Main.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.702554762, 0, 0.446640313, 0)
Main.Size = UDim2.new(0, 217, 0, 233)
Main.Selectable = true
Main.Active = true
Main.Draggable = true

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(0, 217, 0, 27)

Shadow.Name = "Shadow"
Shadow.Parent = Main
Shadow.BackgroundColor3 = Color3.new(0.67451, 0.694118, 0.705882)
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0, 0, 0.115879826, 0)
Shadow.Size = UDim2.new(0, 217, 0, 9)

StartKill.Name = "StartKill"
StartKill.Parent = Main
StartKill.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
StartKill.BorderSizePixel = 0
StartKill.Position = UDim2.new(0.195852548, 0, 0.227467805, 0)
StartKill.Size = UDim2.new(0, 126, 0, 23)
StartKill.Font = Enum.Font.Cartoon
StartKill.Text = "FE Kill/Fling"
StartKill.TextColor3 = Color3.new(0, 0, 0)
StartKill.TextSize = 14

StopKill.Name = "StopKill"
StopKill.Parent = Main
StopKill.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
StopKill.BorderSizePixel = 0
StopKill.Position = UDim2.new(0.207373276, 0, 0.38197428, 0)
StopKill.Size = UDim2.new(0, 124, 0, 23)
StopKill.Font = Enum.Font.Cartoon
StopKill.Text = "Stop FE Kill/Fling"
StopKill.TextColor3 = Color3.new(0, 0, 0)
StopKill.TextSize = 14

Instructions.Name = "Instructions"
Instructions.Parent = Main
Instructions.BackgroundColor3 = Color3.new(1, 1, 1)
Instructions.BackgroundTransparency = 1
Instructions.Position = UDim2.new(0.0391705073, 0, 0.549356222, 0)
Instructions.Size = UDim2.new(0, 200, 0, 32)
Instructions.Font = Enum.Font.Cartoon
Instructions.Text = "Just touch someone to watch the fly to their death!"
Instructions.TextColor3 = Color3.new(0, 0, 0)
Instructions.TextSize = 14
Instructions.TextWrapped = true

CurrentPower.Name = "CurrentPower"
CurrentPower.Parent = Main
CurrentPower.BackgroundColor3 = Color3.new(1, 1, 1)
CurrentPower.BackgroundTransparency = 1
CurrentPower.Position = UDim2.new(0.276497692, 0, 0.686695278, 0)
CurrentPower.Size = UDim2.new(0, 98, 0, 36)
CurrentPower.Font = Enum.Font.Cartoon
CurrentPower.Text = "Current Power = 5"
CurrentPower.TextColor3 = Color3.new(0, 0, 0)
CurrentPower.TextSize = 14

Recomendation.Name = "Recomendation"
Recomendation.Parent = Main
Recomendation.BackgroundColor3 = Color3.new(1, 1, 1)
Recomendation.BackgroundTransparency = 1
Recomendation.Position = UDim2.new(0.0414746553, 0, 0.884120166, 0)
Recomendation.Size = UDim2.new(0, 200, 0, 21)
Recomendation.Font = Enum.Font.Cartoon
Recomendation.Text = "Recommended Power is 5"
Recomendation.TextColor3 = Color3.new(0, 0, 0)
Recomendation.TextSize = 14

NameOfGui.Name = "NameOfGui"
NameOfGui.Parent = Main
NameOfGui.BackgroundColor3 = Color3.new(1, 1, 1)
NameOfGui.BackgroundTransparency = 1
NameOfGui.Position = UDim2.new(0.0806451589, 0, 0, 0)
NameOfGui.Size = UDim2.new(0, 154, 0, 27)
NameOfGui.Font = Enum.Font.Cartoon
NameOfGui.Text = "FE Kill/Fling By JackMcJagger15"
NameOfGui.TextColor3 = Color3.new(0, 0, 0)
NameOfGui.TextSize = 14

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(0.907834113, 0, 0, 0)
Exit.Size = UDim2.new(0, 20, 0, 27)
Exit.Font = Enum.Font.Cartoon
Exit.Text = "X"
Exit.TextColor3 = Color3.new(0, 0, 0)
Exit.TextSize = 14

UPArrow.Name = "UPArrow"
UPArrow.Parent = Main
UPArrow.BackgroundColor3 = Color3.new(1, 1, 1)
UPArrow.BackgroundTransparency = 1
UPArrow.Position = UDim2.new(0.0783410147, 0, 0.716738224, 0)
UPArrow.Size = UDim2.new(0, 26, 0, 23)
UPArrow.Font = Enum.Font.Cartoon
UPArrow.Text = "Up"
UPArrow.TextColor3 = Color3.new(0, 0, 0)
UPArrow.TextSize = 12
UPArrow.TextWrapped = true

DownArrow.Name = "DownArrow"
DownArrow.Parent = Main
DownArrow.BackgroundColor3 = Color3.new(1, 1, 1)
DownArrow.BackgroundTransparency = 1
DownArrow.Position = UDim2.new(0.792626739, 0, 0.714592278, 0)
DownArrow.Size = UDim2.new(0, 26, 0, 23)
DownArrow.Font = Enum.Font.Cartoon
DownArrow.Text = "Down"
DownArrow.TextColor3 = Color3.new(0, 0, 0)
DownArrow.TextSize = 12
DownArrow.TextWrapped = true

power = 500
active = false
local val = Instance.new("IntValue")
val.Name = "Number"
val.Parent = game.Players.LocalPlayer
val.Value = 5

Exit.MouseButton1Click:connect(function()
FlingKill.Enabled = false
end)

StartKill.MouseButton1Click:connect(function()
game:GetService('RunService').Stepped:connect(function()
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
else
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end
end
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

StopKill.MouseButton1Click:connect(function()
active = false
game.Players.LocalPlayer.Character.HumanoidRootPart.BodyThrust:Remove()
end)

UPArrow.MouseButton1Click:connect(function()
power = power + 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value + 1
CurrentPower.Text = "Current Power = " .. game.Players.LocalPlayer.Number.Value
end)

DownArrow.MouseButton1Click:connect(function()
power = power - 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value - 1
CurrentPower.Text = "Current Power = " .. game.Players.LocalPlayer.Number.Value
end)
end)

FeGod.Name = "FeGod"
FeGod.Parent = Main
FeGod.BackgroundColor3 = Color3.new(1, 0.333333, 0)
FeGod.Position = UDim2.new(0.37956205, 0, 0.398351699, 0)
FeGod.Size = UDim2.new(0, 164, 0, 58)
FeGod.Font = Enum.Font.SourceSans
FeGod.Text = "FE God"
FeGod.TextColor3 = Color3.new(1, 1, 1)
FeGod.TextScaled = true
FeGod.TextSize = 35
FeGod.TextWrapped = true
FeGod.MouseButton1Down:connect(function()
--- All scripts and GUI made by HA8X (me) :D

-- Variables

local godded = false
local hum = nil
local newhum = nil
local humstore = Instance.new("Folder", game)

-- Objects

local FEgod = Instance.new("ScreenGui")
local DraggableF = Instance.new("Frame")
local TopFrame = Instance.new("Frame")
local OnOff = Instance.new("TextButton")
local TopBar = Instance.new("Frame")
local X = Instance.new("TextButton")
local Header = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TopBarBot = Instance.new("Frame")
local BotFrame = Instance.new("Frame")

-- Properties

FEgod.Name = "FEgod"
FEgod.Parent = game.CoreGui

DraggableF.Name = "DraggableF"
DraggableF.Parent = FEgod
DraggableF.BackgroundColor3 = Color3.new(1, 1, 1)
DraggableF.BackgroundTransparency = 1
DraggableF.Position = UDim2.new(0.823443234, 0, 0.83984369, 0)
DraggableF.Size = UDim2.new(0.150000006, 0, 0.119999997, 0)

TopFrame.Name = "TopFrame"
TopFrame.Parent = DraggableF
TopFrame.BackgroundColor3 = Color3.new(0.313726, 1, 0.486275)
TopFrame.BorderSizePixel = 0
TopFrame.Size = UDim2.new(1, 0, 1, 0)
TopFrame.ZIndex = 2

OnOff.Name = "OnOff"
OnOff.Parent = TopFrame
OnOff.BackgroundColor3 = Color3.new(1, 1, 1)
OnOff.BackgroundTransparency = 1
OnOff.Position = UDim2.new(0.292375654, 0, 0.510869563, 0)
OnOff.Size = UDim2.new(0.410063356, 0, 0.293478251, 0)
OnOff.ZIndex = 3
OnOff.AutoButtonColor = false
OnOff.Font = Enum.Font.SourceSansBold
OnOff.Text = "OFF"
OnOff.TextColor3 = Color3.new(1, 1, 1)
OnOff.TextSize = 45

TopBar.Name = "TopBar"
TopBar.Parent = TopFrame
TopBar.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0.269414485, 0)
TopBar.ZIndex = 5

X.Name = "X"
X.Parent = TopBar
X.BackgroundColor3 = Color3.new(1, 1, 1)
X.BackgroundTransparency = 1
X.BorderSizePixel = 0
X.Position = UDim2.new(0.913176477, 0, 0, 0)
X.Size = UDim2.new(0.0868235528, 0, 1, 0)
X.ZIndex = 6
X.AutoButtonColor = false
X.Font = Enum.Font.SourceSansBold
X.Text = "X"
X.TextColor3 = Color3.new(1, 1, 1)
X.TextSize = 25

Header.Name = "Header"
Header.Parent = TopBar
Header.BackgroundColor3 = Color3.new(1, 1, 1)
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.0354349278, 0, 0, 0)
Header.Size = UDim2.new(0.837735832, 0, 1, 0)
Header.ZIndex = 6
Header.Font = Enum.Font.SourceSansBold
Header.Text = "TOGGLE FE GOD GUI"
Header.TextColor3 = Color3.new(1, 1, 1)
Header.TextScaled = true
Header.TextSize = 14
Header.TextWrapped = true

TextLabel.Parent = TopFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.760975599, 0, 0.804347813, 0)
TextLabel.Size = UDim2.new(0.239024386, 0, 0.195652172, 0)
TextLabel.ZIndex = 5
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "By HA8X"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TopBarBot.Name = "TopBarBot"
TopBarBot.Parent = TopFrame
TopBarBot.BackgroundColor3 = Color3.new(0, 0, 0)
TopBarBot.BorderSizePixel = 0
TopBarBot.Position = UDim2.new(0, 0, 0.108695649, 0)
TopBarBot.Size = UDim2.new(1, 0, 0.254853636, 0)
TopBarBot.ZIndex = 4

BotFrame.Name = "BotFrame"
BotFrame.Parent = DraggableF
BotFrame.BackgroundColor3 = Color3.new(0.254902, 0.811765, 0.384314)
BotFrame.BorderSizePixel = 0
BotFrame.Position = UDim2.new(0, 0, 0.108695649, 0)
BotFrame.Size = UDim2.new(1, 0, 1, 0)

-- Scripting

X.MouseButton1Click:Connect(function()
FEgod:Destroy()
end)

OnOff.MouseButton1Click:Connect(function()
if godded == false then
hum = game:GetService("Players").LocalPlayer.Character.Humanoid
hum.Parent = humstore
newhum = hum:Clone()
newhum.Parent = game:GetService("Players").LocalPlayer.Character
OnOff.Text = "ON"
godded = true
elseif godded == true then
newhum:Destroy()
hum.Parent = game:GetService("Players").LocalPlayer.Character
OnOff.Text = "OFF"
godded = false
end
end)

-- Drag

DraggableF.Draggable = true
DraggableF.Active = true

-- Resetting Values

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
godded = false
hum = nil
newhum = nil
OnOff.Text = "OFF"
for i,v in pairs(humstore:GetChildren())do
v:Destroy()
end
end)
end)

ChatBypass.Name = "ChatBypass"
ChatBypass.Parent = Main
ChatBypass.BackgroundColor3 = Color3.new(1, 0.333333, 0)
ChatBypass.Position = UDim2.new(0.737226248, 0, 0.156593412, 0)
ChatBypass.Size = UDim2.new(0, 164, 0, 58)
ChatBypass.Font = Enum.Font.SourceSans
ChatBypass.Text = "Chat Filter Bypass"
ChatBypass.TextColor3 = Color3.new(1, 1, 1)
ChatBypass.TextScaled = true
ChatBypass.TextSize = 35
ChatBypass.TextWrapped = true
ChatBypass.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/ncWQn5CT'),true))()
end)

ClickTP.Name = "ClickTP"
ClickTP.Parent = Main
ClickTP.BackgroundColor3 = Color3.new(1, 0.333333, 0)
ClickTP.Position = UDim2.new(0.737226248, 0, 0.640109837, 0)
ClickTP.Size = UDim2.new(0, 164, 0, 58)
ClickTP.Font = Enum.Font.SourceSans
ClickTP.Text = "Click Teleport"
ClickTP.TextColor3 = Color3.new(1, 1, 1)
ClickTP.TextScaled = true
ClickTP.TextSize = 35
ClickTP.TextWrapped = true
ClickTP.MouseButton1Down:connect(function()
plr = game.Players.LocalPlayer 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse() 
mouse.KeyDown:connect(function(key) 
if key == "t" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end 
end)

end)

ChatSpy.Name = "ChatSpy"
ChatSpy.Parent = Main
ChatSpy.BackgroundColor3 = Color3.new(1, 0.333333, 0)
ChatSpy.Position = UDim2.new(0.737226248, 0, 0.398351699, 0)
ChatSpy.Size = UDim2.new(0, 164, 0, 58)
ChatSpy.Font = Enum.Font.SourceSans
ChatSpy.Text = "Chat Spy"
ChatSpy.TextColor3 = Color3.new(1, 1, 1)
ChatSpy.TextScaled = true
ChatSpy.TextSize = 35
ChatSpy.TextWrapped = true
ChatSpy.MouseButton1Down:connect(function()
--This script reveals ALL hidden messages in the default chat
--chat "/spy" to toggle!
enabled = true
--if true will check your messages too
spyOnMyself = true
--if true will chat the logs publicly (fun, risky)
public = false
--if true will use /me to stand out
publicItalics = true
--customize private logs
privateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}
--////////////////////////////////////////////////////////////////
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/spy" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)

TextLabel_4.Parent = Main
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0.709489048, 0, 0.286683917, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.Cartoon
TextLabel_4.Text = "(Ex: Go fucking die)"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 20

TextLabel_5.Parent = Main
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0.709489048, 0, 0.767453134, 0)
TextLabel_5.Size = UDim2.new(0, 200, 0, 50)
TextLabel_5.Font = Enum.Font.Cartoon
TextLabel_5.Text = "(Press T)"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 20
-- Scripts:
       -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("hub合集/脚本合集", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "Universal Hub",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/R3LIST/r3gui/main/main.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Cloud Hub",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastefy.app/X6fuVyEZ/raw"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Scripts Hub",
   Callback = function(v)
    	v = loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/SCRIPTHUBV3/main/SCRIPTHUBV3", true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Fire X Hub",
   Callback = function(v)
    	v = loadstring("\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\48\49\95\115\101\114\118\101\114\34\41\32\116\104\101\110\32\114\101\116\117\114\110\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101\34\41\58\84\101\108\101\112\111\114\116\40\49\55\53\55\52\54\49\56\57\53\57\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\41\32\101\110\100\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\116\121\114\101\108\116\114\105\106\111\47\102\105\114\101\47\109\97\105\110\47\102\105\114\101\34\41\41\40\41\10")() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Polaria Hub",
   Callback = function(v)
    	v = loadstring(game:HttpGet("https://pastefy.app/JmaD2ivk/raw"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "简易版Ghost Hub",
   Callback = function()
		-- GHOST UI Hub for Roblox
-- Made by camreng1234 on scriptblox

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Camera = workspace.CurrentCamera

-- Constants
local NORMAL_WALKSPEED = 16
local NORMAL_GRAVITY = workspace.Gravity

-- Variables for states
local flying = false
local flySpeed = 100
local flyBodyVelocity = nil
local flyBodyGyro = nil

local espEnabled = false
local espHighlights = {}

local noclipEnabled = false
local noclipConnection = nil

local humpEnabled = false
local humpTarget = nil
local humpAnimConnection = nil
local humpFollowConnection = nil

local glitchEnabled = false
local glitchConnection = nil
local glitchTargets = {}

local distanceEspEnabled = false
local distanceEspLabels = {}

local gravityChanged = false

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GHOST_UIHub"
screenGui.ResetOnSpawn = false
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Notification on load
StarterGui:SetCore("SendNotification", {
	Title = "GHOST UI Hub";
	Text = "Made by camreng1234 on scriptblox";
	Duration = 5;
})

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 280, 0, 400)
mainFrame.Position = UDim2.new(1, -290, 0, 10) -- Top right with 10px margin
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.BackgroundTransparency = 0.15
mainFrame.Parent = screenGui
mainFrame.ClipsDescendants = true
mainFrame.Active = true

-- UI Corner rounding
local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 8)
uicorner.Parent = mainFrame

-- Title
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "GHOST"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = mainFrame

-- Scrolling frame for buttons
local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Name = "ScrollFrame"
scrollFrame.Size = UDim2.new(1, 0, 1, -30)
scrollFrame.Position = UDim2.new(0, 0, 0, 30)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 6
scrollFrame.Parent = mainFrame
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = scrollFrame
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Padding = UDim.new(0, 6)

local uiPadding = Instance.new("UIPadding")
uiPadding.Parent = scrollFrame
uiPadding.PaddingTop = UDim.new(0, 6)
uiPadding.PaddingLeft = UDim.new(0, 6)
uiPadding.PaddingRight = UDim.new(0, 6)
uiPadding.PaddingBottom = UDim.new(0, 6)

-- Dragging functionality for mainFrame
do
	local dragging = false
	local dragInput, dragStart, startPos

	mainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = mainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	mainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			local newPos = UDim2.new(
				math.clamp(startPos.X.Scale, 0, 1),
				math.clamp(startPos.X.Offset + delta.X, 0, workspace.CurrentCamera.ViewportSize.X - mainFrame.AbsoluteSize.X),
				math.clamp(startPos.Y.Scale, 0, 1),
				math.clamp(startPos.Y.Offset + delta.Y, 0, workspace.CurrentCamera.ViewportSize.Y - mainFrame.AbsoluteSize.Y)
			)
			mainFrame.Position = newPos
		end
	end)
end

-- Helper function to create buttons
local function createButton(text)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	btn.BorderSizePixel = 0
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.GothamSemibold
	btn.TextSize = 18
	btn.Text = text
	btn.AutoButtonColor = true
	btn.Name = text:gsub("%s", "") -- Remove spaces for name
	local btnCorner = Instance.new("UICorner")
	btnCorner.CornerRadius = UDim.new(0, 6)
	btnCorner.Parent = btn
	return btn
end

-- Helper function to create textboxes
local function createTextbox(placeholder)
	local tb = Instance.new("TextBox")
	tb.Size = UDim2.new(1, 0, 0, 25)
	tb.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	tb.BorderSizePixel = 0
	tb.TextColor3 = Color3.fromRGB(255, 255, 255)
	tb.Font = Enum.Font.Gotham
	tb.TextSize = 16
	tb.PlaceholderText = placeholder
	tb.ClearTextOnFocus = false
	tb.Name = placeholder:gsub("%s", "") .. "Textbox"
	local tbCorner = Instance.new("UICorner")
	tbCorner.CornerRadius = UDim.new(0, 6)
	tbCorner.Parent = tb
	return tb
end

-- ========== BUTTONS AND TEXTBOXES ==========

-- 1. FLY
local btnFly = createButton("FLY")
btnFly.Parent = scrollFrame

-- 2. UNFLY
local btnUnFly = createButton("UNFLY")
btnUnFly.Parent = scrollFrame

-- 3. ESP
local btnESP = createButton("ESP")
btnESP.Parent = scrollFrame

-- 4. UN ESP
local btnUnESP = createButton("UN ESP")
btnUnESP.Parent = scrollFrame

-- 5. NOCLIP
local btnNoclip = createButton("NOCLIP")
btnNoclip.Parent = scrollFrame

-- 6. UN NOCLIP
local btnUnNoclip = createButton("UN NOCLIP")
btnUnNoclip.Parent = scrollFrame

-- 7. WALK SPEED
local btnWalkSpeed = createButton("WALK SPEED")
btnWalkSpeed.Parent = scrollFrame

-- 8. UN WALK SPEED
local btnUnWalkSpeed = createButton("UN WALK SPEED")
btnUnWalkSpeed.Parent = scrollFrame

-- 9. TELEPORT + textbox
local btnTeleport = createButton("TELEPORT")
btnTeleport.Parent = scrollFrame
local tbTeleport = createTextbox("Player name or first 3 letters")
tbTeleport.Parent = scrollFrame

-- 10. GLITCH
local btnGlitch = createButton("GLITCH")
btnGlitch.Parent = scrollFrame

-- 11. UN GLITCH
local btnUnGlitch = createButton("UN GLITCH")
btnUnGlitch.Parent = scrollFrame

-- 12. HUMP + textbox
local btnHump = createButton("HUMP")
btnHump.Parent = scrollFrame
local tbHump = createTextbox("Player name or first 3 letters")
tbHump.Parent = scrollFrame

-- 13. UN HUMP
local btnUnHump = createButton("UN HUMP")
btnUnHump.Parent = scrollFrame

-- 14. DISTANCE ESP
local btnDistanceESP = createButton("DISTANCE ESP")
btnDistanceESP.Parent = scrollFrame

-- 15. UN DISTANCE ESP
local btnUnDistanceESP = createButton("UN DISTANCE ESP")
btnUnDistanceESP.Parent = scrollFrame

-- 16. GRAVITY CHANGER + textbox
local btnGravityChanger = createButton("GRAVITY CHANGER")
btnGravityChanger.Parent = scrollFrame
local tbGravityChanger = createTextbox("0-100")
tbGravityChanger.Parent = scrollFrame

-- 17. RESET GRAVITY
local btnResetGravity = createButton("RESET GRAVITY")
btnResetGravity.Parent = scrollFrame

-- Update canvas size on layout change
uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	scrollFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y + 10)
end)

-- ========== FUNCTIONALITY ==========

-- FLY implementation
local function startFly()
	if flying then return end
	flying = true

	-- Create BodyVelocity and BodyGyro for smooth flying
	flyBodyVelocity = Instance.new("BodyVelocity")
	flyBodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
	flyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
	flyBodyVelocity.Parent = HumanoidRootPart

	flyBodyGyro = Instance.new("BodyGyro")
	flyBodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
	flyBodyGyro.CFrame = HumanoidRootPart.CFrame
	flyBodyGyro.Parent = HumanoidRootPart

	-- Disable Humanoid's platform stand to allow flying
	Humanoid.PlatformStand = false

	-- Fly control variables
	local speed = flySpeed
	local moveDirection = Vector3.new(0, 0, 0)

	local function updateFly()
		if not flying then return end
		local cameraCFrame = Camera.CFrame
		local moveVec = Vector3.new(0, 0, 0)
		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			moveVec = moveVec + cameraCFrame.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			moveVec = moveVec - cameraCFrame.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			moveVec = moveVec - cameraCFrame.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			moveVec = moveVec + cameraCFrame.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
			moveVec = moveVec + Vector3.new(0, 1, 0)
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
			moveVec = moveVec - Vector3.new(0, 1, 0)
		end
		moveVec = moveVec.Unit * speed
		if moveVec ~= moveVec then -- NaN check
			moveVec = Vector3.new(0, 0, 0)
		end
		flyBodyVelocity.Velocity = moveVec
		flyBodyGyro.CFrame = Camera.CFrame
	end

	-- Connect to RenderStepped for smooth flying
	flyConnection = RunService.RenderStepped:Connect(updateFly)
end

local function stopFly()
	if not flying then return end
	flying = false
	if flyBodyVelocity then
		flyBodyVelocity:Destroy()
		flyBodyVelocity = nil
	end
	if flyBodyGyro then
		flyBodyGyro:Destroy()
		flyBodyGyro = nil
	end
	if flyConnection then
		flyConnection:Disconnect()
		flyConnection = nil
	end
	Humanoid.PlatformStand = false
end

-- ESP implementation
local function enableESP()
	if espEnabled then return end
	espEnabled = true
	for _, plr in pairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			local highlight = Instance.new("Highlight")
			highlight.Adornee = plr.Character
			highlight.FillTransparency = 0.5
			highlight.OutlineTransparency = 0
			highlight.Parent = plr.Character
			espHighlights[plr] = highlight
		end
	end
	-- Connect to player added and character added to add highlights dynamically
	espConnection = Players.PlayerAdded:Connect(function(plr)
		plr.CharacterAdded:Connect(function(char)
			if espEnabled and plr ~= LocalPlayer then
				wait(0.1)
				if char and char:FindFirstChild("HumanoidRootPart") then
					local highlight = Instance.new("Highlight")
					highlight.Adornee = char
					highlight.FillTransparency = 0.5
					highlight.OutlineTransparency = 0
					highlight.Parent = char
					espHighlights[plr] = highlight
				end
			end
		end)
	end)
	-- Rainbow color update loop
	espRainbowConnection = RunService.RenderStepped:Connect(function()
		if not espEnabled then return end
		local time = tick()
		for plr, highlight in pairs(espHighlights) do
			local hue = (time * 60) % 360
			local color = Color3.fromHSV(hue / 360, 1, 1)
			highlight.FillColor = color
			highlight.OutlineColor = color
		end
	end)
end

local function disableESP()
	if not espEnabled then return end
	espEnabled = false
	for plr, highlight in pairs(espHighlights) do
		if highlight and highlight.Parent then
			highlight:Destroy()
		end
	end
	espHighlights = {}
	if espConnection then
		espConnection:Disconnect()
		espConnection = nil
	end
	if espRainbowConnection then
		espRainbowConnection:Disconnect()
		espRainbowConnection = nil
	end
end

-- NOCLIP implementation
local function enableNoclip()
	if noclipEnabled then return end
	noclipEnabled = true
	noclipConnection = RunService.Stepped:Connect(function()
		if Character then
			for _, part in pairs(Character:GetChildren()) do
				if part:IsA("BasePart") and part.CanCollide then
					part.CanCollide = false
				end
			end
		end
	end)
end

local function disableNoclip()
	if not noclipEnabled then return end
	noclipEnabled = false
	if noclipConnection then
		noclipConnection:Disconnect()
		noclipConnection = nil
	end
	if Character then
		for _, part in pairs(Character:GetChildren()) do
			if part:IsA("BasePart") then
				part.CanCollide = true
			end
		end
	end
end

-- WALK SPEED implementation
local function setWalkSpeed(speed)
	if Humanoid then
		Humanoid.WalkSpeed = speed
	end
end

-- TELEPORT implementation
local function teleportToPlayer(nameOrPrefix)
	if not nameOrPrefix or nameOrPrefix == "" then return end
	local targetPlayer = nil
	local lowerInput = nameOrPrefix:lower()
	for _, plr in pairs(Players:GetPlayers()) do
		if plr.Name:lower():sub(1, #lowerInput) == lowerInput or (plr.DisplayName and plr.DisplayName:lower():sub(1, #lowerInput) == lowerInput) then
			targetPlayer = plr
			break
		end
	end
	if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
		HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
	end
end

-- GLITCH implementation (head and neck only)
local function startGlitch()
	if glitchEnabled then return end
	glitchEnabled = true

	local function glitchPlayer(plr)
		if not plr.Character then return end
		local head = plr.Character:FindFirstChild("Head")
		local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
		if not head or not humanoid then return end
		local neck = nil
		for _, joint in pairs(head:GetJoints()) do
			if joint.Name == "Neck" then
				neck = joint
				break
			end
		end
		if not neck then
			-- Try to find neck via HumanoidRootPart and Head CFrame difference
			neck = humanoid:FindFirstChild("Neck")
		end
		if glitchTargets[plr] then return end -- Already glitching

		local originalC0 = nil
		if neck and neck:IsA("Motor6D") then
			originalC0 = neck.C0
		end

		local glitching = true

		local conn
		conn = RunService.Heartbeat:Connect(function()
			if not glitchEnabled or not plr.Character or not head or not neck or not neck:IsDescendantOf(plr.Character) then
				conn:Disconnect()
				if neck and originalC0 then
					neck.C0 = originalC0
				end
				glitchTargets[plr] = nil
				return
			end
			local t = tick() * 20
			local offsetY = math.sin(t) * 2
			head.CFrame = head.CFrame * CFrame.new(0, offsetY, 0)
			if neck and neck:IsA("Motor6D") and originalC0 then
				neck.C0 = originalC0 * CFrame.new(0, offsetY, 0)
			end
		end)
		glitchTargets[plr] = conn
	end

	for _, plr in pairs(Players:GetPlayers()) do
		glitchPlayer(plr)
	end

	Players.PlayerAdded:Connect(function(plr)
		plr.CharacterAdded:Connect(function()
			if glitchEnabled then
				wait(0.1)
				glitchPlayer(plr)
			end
		end)
	end)
end

local function stopGlitch()
	if not glitchEnabled then return end
	glitchEnabled = false
	for plr, conn in pairs(glitchTargets) do
		if conn then
			conn:Disconnect()
		end
		if plr.Character then
			local head = plr.Character:FindFirstChild("Head")
			local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
			local neck = nil
			if head and humanoid then
				for _, joint in pairs(head:GetJoints()) do
					if joint.Name == "Neck" then
						neck = joint
						break
					end
				end
				if neck and neck:IsA("Motor6D") then
					neck.C0 = neck.C0 -- Reset to current to avoid weirdness
				end
			end
		end
	end
	glitchTargets = {}
end

-- HUMP implementation
local function startHump(targetName)
	if humpEnabled then return end
	if not targetName or targetName == "" then return end
	local targetPlayer = nil
	local lowerInput = targetName:lower()
	for _, plr in pairs(Players:GetPlayers()) do
		if plr.Name:lower():sub(1, #lowerInput) == lowerInput or (plr.DisplayName and plr.DisplayName:lower():sub(1, #lowerInput) == lowerInput) then
			targetPlayer = plr
			break
		end
	end
	if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then return end

	humpEnabled = true
	humpTarget = targetPlayer

	-- Animation: move back and forth fast behind target, facing them, on ground
	local function humpStep()
		if not humpEnabled or not humpTarget or not humpTarget.Character or not humpTarget.Character:FindFirstChild("HumanoidRootPart") then
			return
		end
		local targetHRP = humpTarget.Character.HumanoidRootPart
		local targetCF = targetHRP.CFrame
		local behindOffset = -3 -- studs behind
		local heightOffset = -3 -- on ground (approximate)
		local directionToTarget = (targetCF.Position - HumanoidRootPart.Position).Unit
		local desiredPos = targetCF * CFrame.new(0, heightOffset, behindOffset)
		-- Face the target
		local lookAt = CFrame.new(desiredPos.Position, targetCF.Position)
		-- Oscillate back and forth fast
		local oscillate = math.sin(tick() * 30) * 1.5
		local offset = lookAt.LookVector * oscillate
		local finalPos = desiredPos.Position + offset
		HumanoidRootPart.CFrame = CFrame.new(finalPos, targetCF.Position)
	end

	humpAnimConnection = RunService.Heartbeat:Connect(function()
		if not humpEnabled then return end
		if not humpTarget or not humpTarget.Character or not humpTarget.Character:FindFirstChild("HumanoidRootPart") then
			humpEnabled = false
			if humpAnimConnection then
				humpAnimConnection:Disconnect()
				humpAnimConnection = nil
			end
			return
		end
		humpStep()
	end)
end

local function stopHump()
	if not humpEnabled then return end
	humpEnabled = false
	if humpAnimConnection then
		humpAnimConnection:Disconnect()
		humpAnimConnection = nil
	end
	humpTarget = nil
end

-- DISTANCE ESP implementation
local function enableDistanceESP()
	if distanceEspEnabled then return end
	distanceEspEnabled = true

	local function createDistanceLabel(plr)
		if plr == LocalPlayer then return end
		if distanceEspLabels[plr] then return end
		local billboard = Instance.new("BillboardGui")
		billboard.Name = "DistanceESP"
		billboard.Adornee = nil
		billboard.Size = UDim2.new(0, 100, 0, 30)
		billboard.StudsOffset = Vector3.new(0, 3, 0)
		billboard.AlwaysOnTop = true
		billboard.Parent = screenGui

		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.Size = UDim2.new(1, 0, 1, 0)
		textLabel.TextColor3 = Color3.new(1, 1, 1)
		textLabel.Font = Enum.Font.GothamBold
		textLabel.TextSize = 18
		textLabel.TextStrokeTransparency = 0
		textLabel.Parent = billboard

		distanceEspLabels[plr] = {Billboard = billboard, Label = textLabel}
	end

	for _, plr in pairs(Players:GetPlayers()) do
		createDistanceLabel(plr)
	end

	Players.PlayerAdded:Connect(function(plr)
		createDistanceLabel(plr)
	end)

	distanceEspConnection = RunService.RenderStepped:Connect(function()
		if not distanceEspEnabled then return end
		for plr, data in pairs(distanceEspLabels) do
			if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
				data.Billboard.Adornee = plr.Character.HumanoidRootPart
				local dist = (HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
				data.Label.Text = string.format("%s: %.1f studs", plr.Name, dist)
			else
				data.Billboard.Adornee = nil
				data.Label.Text = ""
			end
		end
	end)
end

local function disableDistanceESP()
	if not distanceEspEnabled then return end
	distanceEspEnabled = false
	if distanceEspConnection then
		distanceEspConnection:Disconnect()
		distanceEspConnection = nil
	end
	for _, data in pairs(distanceEspLabels) do
		if data.Billboard then
			data.Billboard:Destroy()
		end
	end
	distanceEspLabels = {}
end

-- GRAVITY CHANGER implementation
local function setGravity(value)
	value = tonumber(value)
	if not value then return end
	if value < 0 then value = 0 end
	if value > 100 then value = 100 end
	workspace.Gravity = value
	gravityChanged = true
end

local function resetGravity()
	workspace.Gravity = NORMAL_GRAVITY
	gravityChanged = false
end

-- ========== BUTTON CONNECTIONS ==========

btnFly.MouseButton1Click:Connect(function()
	startFly()
end)

btnUnFly.MouseButton1Click:Connect(function()
	stopFly()
end)

btnESP.MouseButton1Click:Connect(function()
	enableESP()
end)

btnUnESP.MouseButton1Click:Connect(function()
	disableESP()
end)

btnNoclip.MouseButton1Click:Connect(function()
	enableNoclip()
end)

btnUnNoclip.MouseButton1Click:Connect(function()
	disableNoclip()
end)

btnWalkSpeed.MouseButton1Click:Connect(function()
	setWalkSpeed(100)
end)

btnUnWalkSpeed.MouseButton1Click:Connect(function()
	setWalkSpeed(NORMAL_WALKSPEED)
end)

btnTeleport.MouseButton1Click:Connect(function()
	teleportToPlayer(tbTeleport.Text)
end)

btnGlitch.MouseButton1Click:Connect(function()
	startGlitch()
end)

btnUnGlitch.MouseButton1Click:Connect(function()
	stopGlitch()
end)

btnHump.MouseButton1Click:Connect(function()
	startHump(tbHump.Text)
end)

btnUnHump.MouseButton1Click:Connect(function()
	stopHump()
end)

btnDistanceESP.MouseButton1Click:Connect(function()
	enableDistanceESP()
end)

btnUnDistanceESP.MouseButton1Click:Connect(function()
	disableDistanceESP()
end)

btnGravityChanger.MouseButton1Click:Connect(function()
	setGravity(tbGravityChanger.Text)
end)

btnResetGravity.MouseButton1Click:Connect(function()
	resetGravity()
end)

-- Cleanup on character respawn
LocalPlayer.CharacterAdded:Connect(function(char)
	Character = char
	Humanoid = char:WaitForChild("Humanoid")
	HumanoidRootPart = char:WaitForChild("HumanoidRootPart")
	-- Reset walk speed and gravity on respawn
	setWalkSpeed(NORMAL_WALKSPEED)
	resetGravity()
	-- Stop fly, noclip, hump, glitch on respawn
	stopFly()
	disableNoclip()
	stopHump()
	stopGlitch()
	disableESP()
	disableDistanceESP()
end)

    	-- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "北狐星脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/FengYu/refs/heads/main/North%20Fox.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "叶脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-CNVIP-XIAOYE.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "少羽脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/yeDRR0kv"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "皮脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "TX退休脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/TX-Free-YYDS/refs/heads/main/FREE-TX-TEAM"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "落叶脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))() -- The function that takes place when the button is pressed
   end,
})
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("我服了了，想不到有啥hub了")

local Tab = Window:CreateTab("生存99个夜", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "TX",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/99-Nights-TX-XIAN-MIAN______-_-_--_-_-_-_--_-_-_-_--_-_-_-_-_--_-_-_-__------_-_-_-_.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "ringta",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://rscripts.net/raw/99-nights-in-the-forest-ringta-ui_1752798124836_2tHSHSQDNU.txt'))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iliankytb/Iliankytb/main/Best99NightsInTheForest"))() -- The function that takes place when the button is pressed
   end,
})
local Tab = Window:CreateTab("墨水游戏", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "外网汉化",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/XOTRXONY/INKGAME/main/INKGAMEE.lua", true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexScriptX/Ink-Game-Script/refs/heads/main/Ink%20Game%20by%20AlexScriptX.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "ringta",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/inkgames.github.io/refs/heads/main/ringta.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "某个外网的",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/inkgames.github.io/refs/heads/main/ringta.lua"))() -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("刀刃球", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patheticcs/Soluna-API/refs/heads/main/bladeball.lua",true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "最强脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/mzkv/LUNAR/refs/heads/main/BladeBall", true))() -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("Doors", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "磁铁脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "各种难度",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://pastebin.com/raw/Pm3rvBNw"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "op级",
   Callback = function(v)
      v = loadstring(game:HttpGet('https://raw.githubusercontent.com/ShadowScripts4Roblox/PROTECTEDLUA/main/Scripts/DOORS/Loader52.lua'))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "某个神秘汉化",
   Callback = function(v)
      v = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "福利脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "31种难度",
   Callback = function(v)
		v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Munciseekawa/Sc/refs/heads/main/ScrtptsMode"))()
       -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "变成怪物",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "超强脚本",
   Callback = function(v)
      v = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "自动a1000",
   Callback = function()
	-- Made by geodude#2619
-- Thanks lolcat, kardin!
 
if game.PlaceId ~= 6839171747 or game.ReplicatedStorage.GameData.Floor.Value ~= "Rooms" then
	game.StarterGui:SetCore("SendNotification", { Title = "Invalid Place"; Text = "The game detected appears to not be rooms. Please execute this while in rooms!" })
 
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
 
	return
elseif workspace:FindFirstChild("PathFindPartsFolder") then
	game.StarterGui:SetCore("SendNotification", { Title = "Warning"; Text = "If you are having issues and the bot is broken, please contact me! geodude#2619" })
 
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
 
	return
end
 
local PathfindingService = game:GetService("PathfindingService")
local VirtualInputManager = game:GetService('VirtualInputManager')
local LocalPlayer = game.Players.LocalPlayer
local LatestRoom = game.ReplicatedStorage.GameData.LatestRoom
 
local Cooldown = false
 
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
 
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = ScreenGui
 
TextLabel.Size = UDim2.new(0,350,0,100)
TextLabel.TextSize = 48
TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1
 
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
end
 
local Folder = Instance.new("Folder")
Folder.Parent = workspace
Folder.Name = "PathFindPartsFolder"
 
if LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules:FindFirstChild("A90") then
    LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90.Name = "lol" -- Fuck you A90
end
 
function getLocker()
    local Closest
 
    for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
        if v.Name == "Rooms_Locker" then
            if v:FindFirstChild("Door") and v:FindFirstChild("HiddenPlayer") then
                if v.HiddenPlayer.Value == nil then
                    if v.Door.Position.Y > -3 then -- Prevents going to the lower lockers in the room with the bridge 
                        if Closest == nil then
                            Closest = v.Door
                        else
                            if (LocalPlayer.Character.HumanoidRootPart.Position - v.Door.Position).Magnitude < (Closest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                                Closest = v.Door
                            end
                        end
                    end
                end
            end
        end
    end
    return Closest
end
 
function getPath()
    local Part
 
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity and Entity.Main.Position.Y > -4 then
        Part = getLocker()
    else
        Part = workspace.CurrentRooms[LatestRoom.Value].Door.Door
    end
    return Part
end
 
LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    TextLabel.Text = "Room: "..math.clamp(LatestRoom.Value, 1,1000)
 
    if LatestRoom.Value ~= 1000 then
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.Scriptable
    else
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.KeyboardMouse
 
        Folder:ClearAllChildren()
 
        local Sound = Instance.new("Sound")
        Sound.Parent = game.SoundService
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Volume = 3
        Sound.PlayOnRemove = true
        Sound:Destroy()
 
        game.StarterGui:SetCore("SendNotification", { Title = "youtube.com/geoduude"; Text = "Thank you for using my script!" })
        return
    end
end)
 
game:GetService("RunService").RenderStepped:connect(function()
    LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    LocalPlayer.Character.Collision.CanCollide = false
    LocalPlayer.Character.Collision.Size = Vector3.new(8,LocalPlayer.Character.Collision.Size.Y,8)
 
    LocalPlayer.Character.Humanoid.WalkSpeed = 21
 
    local Path = getPath()
 
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity then
        if Path then
            if Path.Parent.Name == "Rooms_Locker" then
                if Entity.Main.Position.Y > -4 then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Path.Position).Magnitude < 2 then
                        if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                            fireproximityprompt(Path.Parent.HidePrompt)
                        end
                    end
                end
            end
        end
        if Entity.Main.Position.Y < -4 then
            if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                LocalPlayer.Character:SetAttribute("Hiding", false)
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
            LocalPlayer.Character:SetAttribute("Hiding", false)
        end
    end
end)
 
while true do
 
    local Destination = getPath()
 
    local path = PathfindingService:CreatePath({ WaypointSpacing = 1, AgentRadius = 0.1, AgentCanJump = false })
    path:ComputeAsync(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,3,0), Destination.Position)
    local Waypoints = path:GetWaypoints()
 
    if path.Status ~= Enum.PathStatus.NoPath then
 
        Folder:ClearAllChildren()
 
        for _, Waypoint in pairs(Waypoints) do
            local part = Instance.new("Part")
            part.Size = Vector3.new(1,1,1)
            part.Position = Waypoint.Position
            part.Shape = "Cylinder"
            part.Rotation = Vector3.new(0,0,90)
            part.Material = "SmoothPlastic"
            part.Anchored = true
            part.CanCollide = false
            part.Parent = Folder
        end
 
        for _, Waypoint in pairs(Waypoints) do
            if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                LocalPlayer.Character.Humanoid:MoveTo(Waypoint.Position)
                LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
end
      -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "老外脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/JScripter-Lua/Saturn_Hub_Products/refs/heads/main/Saturn_Hub_Doors.lua"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "black king",
   Callback = function(v)
      v =  loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("忍者传奇", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "无限金币（要卡密，不如去用TX的）",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.github.com/VcPa/V/main/v"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/StormSKz12/StirkeHub1/main/Gameincluded"))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("力量传奇", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/rndmq/Serverlist/refs/heads/main/Loader"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "改力量",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("巴掌", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "所有手套（背包里）",
   Callback = function()
	NotWorkingGlove = { -- these glove can't be used with this script 
	"Error",
	"CUSTOM"
}
-- All glove except titan will be save in ur inventory, equip in ur inventory 

GetAllGlove = true --[[ executing this will erase your hiteffect have same name as a glove like: Hunter, Relude, fish, ðŸ—¿, ....  BECAREFUL!, Or you can just add hit effect you need to hold/keep in the list on top]]-- 
GetGamepassGlove = false
GloveWanted = "Titan" --[[ if u set this to value same as a hit effect then it will erase your hit effect have the same name as the value u put. ]]-- 
GetWantedGlove = true


if GetAllGlove == true and NotWorkingGlove then
    for i, glove in pairs(game.Workspace.Lobby:GetChildren()) do
        if not table.find(NotWorkingGlove, glove.Name) then
            for i, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
                if v.Name:find("{") then
                    local args = {
                        [1] = glove.Name
                    }
                    
                    if v:IsA("RemoteEvent") then
                        v:FireServer(unpack(args))
                    elseif v:IsA("RemoteFunction") then
                        local result = v:InvokeServer(unpack(args))
                        print("Result from InvokeServer:", result)
                    else
                        print("v is neither a RemoteEvent nor a RemoteFunction.")
                    end
                end
            end
        end
    end
end

if GetGamepassGlove == true then
local GamepassGlove = {"OVERKILL", "Acrobat", "Spectator", "Titan", "Ultra Instinct"}
	for i = 1,#GamepassGlove do
		for i, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
		    -- Check if the name contains the character '{'
		    if v.Name:find("{") then
		        local args = {
		            [1] = GamepassGlove[i]
		        }
		
		        -- Check if v is a RemoteEvent and can FireServer
		        if v:IsA("RemoteEvent") then
		            v:FireServer(unpack(args))
		        elseif v:IsA("RemoteFunction") then
		            -- If it's a RemoteFunction, use InvokeServer
		            local result = v:InvokeServer(unpack(args))
		            print("Result from InvokeServer:", result)  -- Optional: Print the result
		        else
		            print("v is neither a RemoteEvent nor a RemoteFunction.")
		        end
		    end
		end
	end
end
if GloveWanted and GetWantedGlove == true then
	for i, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
	    -- Check if the name contains the character '{'
	    if v.Name:find("{") then
	        local args = {
	            [1] = GloveWanted
	        }
	
	        -- Check if v is a RemoteEvent and can FireServer
	        if v:IsA("RemoteEvent") then
	            v:FireServer(unpack(args))
	        elseif v:IsA("RemoteFunction") then
	            -- If it's a RemoteFunction, use InvokeServer
	            local result = v:InvokeServer(unpack(args))
	            print("Result from InvokeServer:", result)  -- Optional: Print the result
	        else
	            print("v is neither a RemoteEvent nor a RemoteFunction.")
	        end
	    end
	end
end
        -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "多功能",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/Umbrella-Scripter/Slap-Battles/refs/heads/main/MasteryFarmHub.lua'))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "farm",
   Callback = function()
		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end

while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
               game:GetService("ReplicatedStorage").b:FireServer(v.Character["Right Arm"])
               wait(0.1)
           end
       end
   end
end
        -- The function that takes place when the button is pressed
   end,
})


local Tab = Window:CreateTab("被遗弃", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "多功能（如果有密钥，就写yes）",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/BobJunior1/ForsakenBoi/refs/heads/main/B0bbyHub"))()
  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网2",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/Saiky988/Saryn-Hub/refs/heads/main/Saryn%Hub%Beta.lua'))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("最强战场", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "神秘人物脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://rscripts.net/raw/tsb-jiren-moveset_1753808375766_YPzu5TxDyy.txt'))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "超强脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/Sopka-afk/tsb/refs/heads/main/tsbscript.luau"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "螃蟹",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://pastebin.com/raw/L7WEmRth"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "全英雄动作",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/Mautiku/ehh/main/strong%20guest.lua.txt"))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("越狱", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "超强脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/MonkeHub/main/Loader.lua"))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("压力", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "超强脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/ohiojjj/78/main/.github/workflows/Protected_5509067665689579.lua'))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "自动躲避脚本",
   Callback = function()
	local part = Instance.new("Part")
part.Size = Vector3.new(900, 1, 900)
part.Position = Vector3.new(0, 9974, 0)
part.Anchored = true
part.Parent = workspace
function notify(title,des,dur)
    Library:Notify({
        Title = title,
        Description = des,
        Time = dur,
    })
end
mspaint.AddonInfo = {
    Title = "压力自动躲怪",
    Description = "这个插件适用于无柜通关成就和一些其他的成就",
    Game = 12552538292,
}
notify("自动躲怪","在使用这个插件前关闭无敌模式，不然成就无法获得",15)
local connections = {}
local playerData = {}
mspaint.Groupbox:AddToggle("CCB", {
    Text = '启用自动躲怪',
    Default = false, 
})
local function setupPlayer(player)
    if not playerData[player] then
        playerData[player] = {
            connections = {},
            originalPosition = nil
        }
    end
    local data = playerData[player]
    local function onCharacterAdded(character)
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
        for _, conn in pairs(data.connections) do
            conn:Disconnect()
        end
        data.connections = {}
        if not Toggles.CCB.Value then return end
        local function checkForTargetModels()
            local targetNames = {"Angler", "Froger", "Pinkie", "Blitz", "Chainsmoker", "Pandemonium","A60","RidgeAngler","RidgeFroger","RidgePinkie"}
            for _, name in ipairs(targetNames) do
                if Workspace:FindFirstChild(name) then
                    return true
                end
            end
            return false
        end
        if checkForTargetModels() then
            data.originalPosition = rootPart.Position
            rootPart.CFrame = CFrame.new(0, 9980, 0)
        end
        table.insert(data.connections, Workspace.ChildAdded:Connect(function(child)
            local targetNames = {"Angler", "Froger", "Pinkie", "Blitz", "Chainsmoker", "Pandemonium","A60","RidgeAngler","RidgeFroger","RidgePinkie"}
            if table.find(targetNames, child.Name) and Toggles.CCB.Value then
                notify("自动躲怪",child.Name .. "已刷新，已把你传送到安全的地方，静静等待实体消失…",5)
                data.originalPosition = rootPart.Position
                rootPart.CFrame = CFrame.new(0, 9980, 0)
            end
        end))
        table.insert(data.connections, Workspace.ChildRemoved:Connect(function(child)
            local targetNames = {"Angler", "Froger", "Pinkie", "Blitz", "Chainsmoker", "Pandemonium","A60","RidgeAngler","RidgeFroger","RidgePinkie"}
            if table.find(targetNames, child.Name) then
                if not checkForTargetModels() and Toggles.CCB.Value then
                    notify("自动躲怪","怪物已消失，你可以继续了",5)
                    if data.originalPosition then
                        rootPart.CFrame = CFrame.new(data.originalPosition)
                        data.originalPosition = nil
                    end
                end
            end
        end))
    end
    table.insert(data.connections, player.CharacterAdded:Connect(onCharacterAdded))
    if player.Character then
        onCharacterAdded(player.Character)
    end
end

local function cleanupPlayer(player)
    if playerData[player] then
        for _, conn in pairs(playerData[player].connections) do
            conn:Disconnect()
        end
        playerData[player] = nil
    end
end
Toggles.CCB:OnChanged(function(en)
    local Players = game:GetService("Players")
    if en then
        for _, player in ipairs(Players:GetPlayers()) do
            setupPlayer(player)
        end
    else
        for _, player in ipairs(Players:GetPlayers()) do
            cleanupPlayer(player)
        end
    end
end)
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    setupPlayer(player)
end
game:GetService("Players").PlayerAdded:Connect(function(player)
    if Toggles.CCB.Value then
        setupPlayer(player)
    end
end)
game:GetService("Players").PlayerRemoving:Connect(function(player)
    cleanupPlayer(player)
end)
       -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("造船寻宝", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()  -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("bf", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b2db2af40b53ef0a502f6d561b4c6449.lua"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "自动练级脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet"https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua")()   -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("死铁轨", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://pastefy.app/7vZN3EwV/raw'))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "自动刷卷脚本",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/TwoGunVolley/FixedPlease/refs/heads/main/Protected_7197551640341824.txt"))()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "外网",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-NullFire-32921"))()   -- The function that takes place when the button is pressed
   end,
})
local Tab = Window:CreateTab("其他服务器", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "fling and things",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/refs/heads/main/FTAP.lua"))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "动感星期五",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "战斗勇士",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "nico",
   Callback = function(v)
      v =  loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\97\66\80\114\109\49\118\107"))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "evade",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()-- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "rui",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/MorikTV/Roblox-is-Unbreakable/main/Unbreakable.lua", true))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "51区",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/Ghostmode65/STK-Bo2/master/STK-Menus/v7/STv7-Engine.txt'))()   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "SCP3008",
   Callback = function(v)
      v =  loadstring(game:HttpGet('https://raw.githubusercontent.com/Viserromero/Antex/master/SCP3008'))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "aut",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/lmmake/jojo-/main/Universal%20time"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "aut多功能",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/SenseiJoshy/CastAways/main/Main/CastAways"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "战斗勇士高级版",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/IsaaaKK/cwhb/main/cw.txt"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "战斗勇士高级版2.0",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE"))()  -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "床战",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()-- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "地下城",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://pastebin.com/raw/F5vSFHZt"))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "俄亥玄洲",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))() -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "恐怖电梯传送到vip地区",
   Callback = function()
   local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("TITLE", "DarkTheme")

local Tab = Window:NewTab("TabName")

local Section = Tab:NewSection("Section Name")

Section:NewButton("Tp To Vip Room", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1881.45361328125, -396.8499755859375, 911.4960327148438)
end)

Section:NewButton("Tp To Lobby", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1916.3992919921875, -396.74810791015625, 919.82666015625)
end)
      -- The function that takes place when the button is pressed
   end,
})
local Tab = Window:CreateTab("制裁黄油脚本", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "悦（服务器密码：7878）",
   Callback = function(v)
      v =  loadstring(game:HttpGet("https://pastebin.com/raw/bLXRc2wv"))() -- The function that takes place when the button is pressed
   end,
})

Rayfield:LoadConfiguration()
