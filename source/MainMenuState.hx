package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.util.FlxTimer;
import flixel.addons.transition.FlxTransitionableState;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import lime.app.Application;
import Achievements;
import editors.MasterEditorMenu;
import flixel.input.keyboard.FlxKey;

using StringTools;

class MainMenuState extends MusicBeatState
{
	public static var psychEngineVersion:String = '1.0'; //This is also used for Discord RPC
	public static var curSelected:Int = 0;

	var menuItems:FlxTypedGroup<FlxSprite>;
	private var camGame:FlxCamera;
	private var camAchievement:FlxCamera;
	
	var optionShit:Array<String> = [
		'story_mode',
		'freeplay',
		'credits',
		'options'
		/*
		#if MODS_ALLOWED 'mods', #end
		#if ACHIEVEMENTS_ALLOWED 'awards', #end
		#if !switch 'donate', #end
		*/
	];

	var tipTextMargin:Float = 10;
	var tipTextScrolling:Bool = false;

	var tipBackground:FlxSprite;
	var tipText:FlxText;

	var debugKeys:Array<FlxKey>;

	var theFunnyMenuKeys:Array<String> = ['CP'];
	var theFunnyPassword:String = 'CP';
	var allowedKeys:String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	var theFunnyMenuKeysBuffer:String = '';
	var isShowingFunny:Bool = false;
	var bg:FlxSprite;

	override function create()
	{
		#if MODS_ALLOWED
		Paths.pushGlobalMods();
		#end
		WeekData.loadTheFirstEnabledMod();

		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end
		debugKeys = ClientPrefs.copyKey(ClientPrefs.keyBinds.get('debug_1'));

		camGame = new FlxCamera();
		camAchievement = new FlxCamera();
		camAchievement.bgColor.alpha = 0;

		FlxG.cameras.reset(camGame);
		FlxG.cameras.add(camAchievement, false);
		FlxG.cameras.setDefaultDrawTarget(camGame, true);

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

		persistentUpdate = persistentDraw = true;

		if (FlxG.save.data.displayFunnyMainMenu == null) FlxG.save.data.displayFunnyMainMenu = false;

		var backgroundImage:String = 'zeby';
		if (FlxG.save.data.displayFunnyMainMenu)
		{
			backgroundImage = 'dziecko';
		}
		var yScroll:Float = Math.max(0.25 - (0.05 * (optionShit.length - 4)), 0.1);
		bg = new FlxSprite().loadGraphic(Paths.image('ipla/' + backgroundImage));
		bg.scrollFactor.set(0, yScroll);
		bg.setGraphicSize(Std.int(bg.width * 1.175));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = ClientPrefs.globalAntialiasing;
		add(bg);

		menuItems = new FlxTypedGroup<FlxSprite>();
		add(menuItems);

		var scale:Float = 1;
		/*if(optionShit.length > 6) {
			scale = 6 / optionShit.length;
		}*/

		var menuItemX:Array<Float> = [
			20, // story_mode
			275, // freeplay
			625, // credits
			950, // options
			450, // awards
			90
		]; // tutaj edytować pozycję "x" guzików

		var idleAnimNameOnXml:Array<String> = [
			'story0',
			'freeplay0',
			'credits0',
			'options0'
		]; // tutaj wrzucać po kolei nazwy animacji w xmlach

		var selectedAnimNameOnXml:Array<String> = [
			'story select',
			'freeplay select',
			'credits select',
			'options select'
		]; // tutaj wrzucać po kolei nazwy animacji selected w xmlach

		for (i in 0...optionShit.length)
		{
			var menuItem:FlxSprite = new FlxSprite(menuItemX[i], 250);
			menuItem.frames = Paths.getSparrowAtlas('ipla/ipla_' + optionShit[i]);
			menuItem.animation.addByPrefix('idle', idleAnimNameOnXml[i], 24);
			menuItem.animation.addByPrefix('selected', selectedAnimNameOnXml[i], 24);
			menuItem.setGraphicSize(Std.int(menuItem.width * 0.5));
			menuItem.animation.play('idle');
			menuItem.ID = i;
			menuItems.add(menuItem);
			var scr:Float = (optionShit.length - 4) * 0.135;
			if(optionShit.length < 6) scr = 0;
			menuItem.scrollFactor.set(0, scr);
			menuItem.antialiasing = ClientPrefs.globalAntialiasing;
			menuItem.updateHitbox();
		}


		var versionShit:FlxText = new FlxText(12, FlxG.height - 44, 0, "Kiepski Engine v" + psychEngineVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		var versionShit:FlxText = new FlxText(12, FlxG.height - 24, 0, "Friday Night Funkin' v" + Application.current.meta.get('version'), 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);

		// NG.core.calls.event.logEvent('swag').send();

		tipBackground = new FlxSprite();
		tipBackground.scrollFactor.set();
		tipBackground.alpha = 0.7;
		add(tipBackground);

		tipText = new FlxText(0, 0, 0,
			"Ferdek wakes Halina up because he wants pickled cucumber. Sleepy, Halina tells Ferdek to check in the refrigerator. Ferdek only finds canned food, and he wants to have pickled ones himself. In the corridor, Ferdek meets Mr. Boczek, who wants a cucumber after Ferdek's stories. They both go to the basement because Boczek finds that he has another jar with this delicacy there. There they state that it has been stolen. They come to the conclusion that Marian Paździoch is behind this act. They decide to go to him and solve the case. Paździoch denies these reports and also got a desire for a cucumber himself. They decide to get Halinka's recipe. They send Marian for this purpose. However, he ends up with a black eye. Then they find out in the kitchen that they don't want the recipe if they don't have the raw material - cucumbers. They decide that the cucumbers will steal Mr. Boczek from the plots, and they will watch everything from the window. Mr. Boczek during the action, after loading one bag,  is caught by a group of pensioners with dogs. However, he manages to escape. However, after completing one challenge, another appears - how to put them on. Mr. Boczek prefers a barrel. Paździoch prefers stoneware, and Ferdek wants to put them in a jar. They decide to announce an international debate. Three people took part in the debate: a highlander, a fisherman and Mrs. Masłowska. In turn, they offered: a barrel, a stoneware and a jar. Cucumber lovers agree to compromise. They will pickle in a barrel for a month. Through the next one in stoneware, and finally in a jar. Then neighbors eat cucumbers and get diarrhea because of them. In the queue to the toilet, they blame another for his silage style and switch to the toilet");
		tipText.scrollFactor.set();
		tipText.setFormat("VCR OSD Mono", 24, FlxColor.WHITE, LEFT);
		tipText.updateHitbox();
		add(tipText);

		tipBackground.makeGraphic(FlxG.width, Std.int((tipTextMargin * 2) + tipText.height), FlxColor.BLACK);

		changeItem();

		#if ACHIEVEMENTS_ALLOWED
		Achievements.loadAchievements();
		var leDate = Date.now();
		if (leDate.getDay() == 5 && leDate.getHours() >= 18) {
			var achieveID:Int = Achievements.getAchievementIndex('friday_night_play');
			if(!Achievements.isAchievementUnlocked(Achievements.achievementsStuff[achieveID][2])) { //It's a friday night. WEEEEEEEEEEEEEEEEEE
				Achievements.achievementsMap.set(Achievements.achievementsStuff[achieveID][2], true);
				giveAchievement();
				ClientPrefs.saveSettings();
			}
		}
		#end

		super.create();

		tipTextStartScrolling();
	}

	#if ACHIEVEMENTS_ALLOWED
	// Unlocks "Freaky on a Friday Night" achievement
	function giveAchievement() {
		add(new AchievementObject('friday_night_play', camAchievement));
		FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
		trace('Giving achievement "friday_night_play"');
	}
	#end

	var selectedSomethin:Bool = false;

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.8)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
			if(FreeplayState.vocals != null) FreeplayState.vocals.volume += 0.5 * elapsed;
		}

		var lerpVal:Float = CoolUtil.boundTo(elapsed * 7.5, 0, 1);

		if (!selectedSomethin)
		{
			if (controls.UI_LEFT_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				changeItem(-1);
			}

			if (controls.UI_RIGHT_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				changeItem(1);
			}

			if (controls.BACK)
			{
				selectedSomethin = true;
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new TitleState());
				FlxG.save.data.displayFunnyMainMenu = false;
			}

			if (controls.ACCEPT)
			{
				FlxG.save.data.displayFunnyMainMenu = false;
				if (optionShit[curSelected] == 'donate')
				{
					CoolUtil.browserLoad('https://ninja-muffin24.itch.io/funkin');
				}
				else
				{
					selectedSomethin = true;
					FlxG.sound.play(Paths.sound('confirmMenu'));

					if(ClientPrefs.flashing) FlxFlicker.flicker(bg, 1.1, 0.15, false);

					menuItems.forEach(function(spr:FlxSprite)
					{
						if (curSelected != spr.ID)
						{
							FlxTween.tween(spr, {alpha: 0}, 0.4, {
								ease: FlxEase.quadOut,
								onComplete: function(twn:FlxTween)
								{
									spr.kill();
								}
							});
						}
						else
						{
							FlxFlicker.flicker(spr, 1, 0.06, false, false, function(flick:FlxFlicker)
							{
								var daChoice:String = optionShit[curSelected];

								switch (daChoice)
								{
									case 'story_mode':
										MusicBeatState.switchState(new StoryMenuState());
									case 'freeplay':
										MusicBeatState.switchState(new FreeplayState());
									#if MODS_ALLOWED
									case 'mods':
										MusicBeatState.switchState(new ModsMenuState());
									#end
									case 'awards':
										MusicBeatState.switchState(new AchievementsMenuState());
									case 'credits':
										MusicBeatState.switchState(new CreditsState());
									case 'options':
										LoadingState.loadAndSwitchState(new options.OptionsState());
								}
							});
						}
					});
				}
			}
			#if desktop
			else if (FlxG.keys.anyJustPressed(debugKeys))
			{
				selectedSomethin = true;
				MusicBeatState.switchState(new MasterEditorMenu());
				FlxG.save.data.displayFunnyMainMenu = false;
			}
			#end
			else if (FlxG.keys.firstJustPressed() != FlxKey.NONE)
			{
				var keyPressed:FlxKey = FlxG.keys.firstJustPressed();
				var keyName:String = Std.string(keyPressed);
				if(allowedKeys.contains(keyName))
				{
					theFunnyMenuKeysBuffer += keyName;
					if(theFunnyMenuKeysBuffer.length >= 32) theFunnyMenuKeysBuffer = theFunnyMenuKeysBuffer.substring(1);
					trace('Test! Allowed Key pressed!!! Buffer: ' + theFunnyMenuKeysBuffer);

					var word:String = theFunnyPassword.toUpperCase();

					if (theFunnyMenuKeysBuffer.contains(word))
					{
						trace('YOOO! ' + word);
						FlxG.save.flush();
						FlxG.sound.play(Paths.sound('ToggleJingle'));

						var black:FlxSprite = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height, 0xFF000000);
						black.alpha = 0;
						add(black);

						FlxTween.tween(
							black,
							{
								alpha: 1
							},
							1,
							{
								onComplete: function(twn:FlxTween)
								{
									FlxTransitionableState.skipNextTransIn = true;
									FlxTransitionableState.skipNextTransOut = true;
									MusicBeatState.switchState(new TitleState());
									FlxG.save.data.displayFunnyMainMenu = true;
									theFunnyMenuKeysBuffer = '';
								}
							}
						);
					}
				}
			}
		}

		super.update(elapsed);

		if (tipTextScrolling)
		{
			tipText.x -= elapsed * 130;
			if (tipText.x < -tipText.width)
			{
				tipTextScrolling = false;
				tipTextStartScrolling();
			}
		}
	}

	function tipTextStartScrolling()
	{
		tipText.x = tipTextMargin;
		tipText.y = -tipText.height;

		new FlxTimer().start(1.0, function(timer:FlxTimer)
		{
			FlxTween.tween(tipText, {y: tipTextMargin}, 0.3);
			new FlxTimer().start(2.25, function(timer:FlxTimer)
			{
				tipTextScrolling = true;
			});
		});
	}

	function changeItem(huh:Int = 0)
	{
		curSelected += huh;

		if (curSelected >= menuItems.length)
			curSelected = 0;
		if (curSelected < 0)
			curSelected = menuItems.length - 1;

		menuItems.forEach(function(spr:FlxSprite)
		{
			spr.animation.play('idle');
			spr.updateHitbox();

			if (spr.ID == curSelected)
			{
				spr.animation.play('selected');
				var add:Float = 0;
				if(menuItems.length > 4) {
					add = menuItems.length * 8;
				}
				spr.centerOffsets();
			}
		});
	}
}
