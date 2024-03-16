package backend;

import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;
import flixel.input.gamepad.FlxGamepadInputID;

import states.TitleState;

// Add a variable here and it will get automatically saved
@:structInit class SaveVariables {
	public var downScroll:Bool = false;
	public var middleScroll:Bool = false;
	public var opponentStrums:Bool = true;
	public var showFPS:Bool = true;
	public var flashing:Bool = true;
	public var autoPause:Bool = true;
	public var antialiasing:Bool = true;
	public var noteSkin:String = 'Default';
	public var splashSkin:String = 'Psych';
	public var splashAlpha:Float = 0.6;
	public var lowQuality:Bool = false;
	public var shaders:Bool = true;
	public var cacheOnGPU:Bool = #if !switch false #else true #end; //From Stilic
	public var framerate:Int = 60;
	public var camZooms:Bool = true;
	public var hideHud:Bool = false;
	public var noteOffset:Int = 0;
	public var arrowRGBExtra:Array<Array<FlxColor>> = [
		[0xFFC24B99, 0xFFFFFFFF, 0xFF3C1F56],
		[0xFF00FFFF, 0xFFFFFFFF, 0xFF1542B7],
		[0xFF12FA05, 0xFFFFFFFF, 0xFF0A4447],
		[0xFFF9393F, 0xFFFFFFFF, 0xFF651038],
		[0xFF999999, 0xFFFFFFFF, 0xFF201E31],
		[0xFFFFFF00, 0xFFFFFFFF, 0xFF993300],
		[0xFF8b4aff, 0xFFFFFFFF, 0xFF3b177d],
		[0xFFFF0000, 0xFFFFFFFF, 0xFF660000],
		[0xFF0033ff, 0xFFFFFFFF, 0xFF000066]];
	public var arrowRGBPixelExtra:Array<Array<FlxColor>> = [
		[0xFFE276FF, 0xFFFFF9FF, 0xFF60008D],
		[0xFF3DCAFF, 0xFFF4FFFF, 0xFF003060],
		[0xFF71E300, 0xFFF6FFE6, 0xFF003100],
		[0xFFFF884E, 0xFFFFFAF5, 0xFF6C0000],
		[0xFFb6b6b6, 0xFFFFFFFF, 0xFF444444],
		[0xFFffd94a, 0xFFfffff9, 0xFF663500],
		[0xFFB055BC, 0xFFf4f4ff, 0xFF4D0060],
		[0xFFdf3e23, 0xFFffe6e9, 0xFF440000],
		[0xFF2F69E5, 0xFFf5f5ff, 0xFF000F5D]];

	public var ghostTapping:Bool = true;
	public var timeBarType:String = 'Time Left';
	public var scoreZoom:Bool = true;
	public var noReset:Bool = false;
	public var healthBarAlpha:Float = 1;
	public var hitsoundVolume:Float = 0;
	public var pauseMusic:String = 'Tea Time';
	public var checkForUpdates:Bool = true;
	public var comboStacking:Bool = true;
	public var gameplaySettings:Map<String, Dynamic> = [
		'scrollspeed' => 1.0,
		'scrolltype' => 'multiplicative', 
		// anyone reading this, amod is multiplicative speed mod, cmod is constant speed mod, and xmod is bpm based speed mod.
		// an amod example would be chartSpeed * multiplier
		// cmod would just be constantSpeed = chartSpeed
		// and xmod basically works by basing the speed on the bpm.
		// iirc (beatsPerSecond * (conductorToNoteDifference / 1000)) * noteSize (110 or something like that depending on it, prolly just use note.height)
		// bps is calculated by bpm / 60
		// oh yeah and you'd have to actually convert the difference to seconds which I already do, because this is based on beats and stuff. but it should work
		// just fine. but I wont implement it because I don't know how you handle sustains and other stuff like that.
		// oh yeah when you calculate the bps divide it by the songSpeed or rate because it wont scroll correctly when speeds exist.
		// -kade
		'songspeed' => 1.0,
		'healthgain' => 1.0,
		'healthloss' => 1.0,
		'instakill' => false,
		'practice' => false,
		'botplay' => false,
		'opponentplay' => false
	];

	public var comboOffset:Array<Int> = [0, 0, 0, 0];
	public var ratingOffset:Int = 0;
	public var sickWindow:Int = 45;
	public var goodWindow:Int = 90;
	public var badWindow:Int = 135;
	public var safeFrames:Float = 10;
	public var guitarHeroSustains:Bool = true;
	public var discordRPC:Bool = true;
}

class ClientPrefs {
	public static var data:SaveVariables = {};
	public static var defaultData:SaveVariables = {};

	//Every key has two binds, add your key bind down here and then add your control on options/ControlsSubState.hx and Controls.hx
	public static var keyBinds:Map<String, Array<FlxKey>> = [
		//Key Bind, Name for ControlsSubState
		'note_1'		=> [SPACE],
		
		'note_2a'		=> [A, LEFT],
		'note_2b'		=> [D, RIGHT],
		
		'note_3a'		=> [A, LEFT],
		'note_3b'		=> [SPACE],
		'note_3c'		=> [D, RIGHT],
		
		'note_up'		=> [W, UP],
		'note_left'		=> [A, LEFT],
		'note_down'		=> [S, DOWN],
		'note_right'	=> [D, RIGHT],
		
		'note_5a'		=> [A, LEFT],
		'note_5b'		=> [S, DOWN],
		'note_5c'		=> [SPACE],
		'note_5d'		=> [W, UP],
		'note_5e'		=> [D, RIGHT],
		
		'note_6a'		=> [S],
		'note_6b'		=> [D],
		'note_6c'		=> [F],
		'note_6d'		=> [J],
		'note_6e'		=> [K],
		'note_6f'		=> [L],
		
		'note_7a'		=> [S],
		'note_7b'		=> [D],
		'note_7c'		=> [F],
		'note_7d'		=> [SPACE],
		'note_7e'		=> [J],
		'note_7f'		=> [K],
		'note_7g'		=> [L],
		
		'note_8a'		=> [A],
		'note_8b'		=> [S],
		'note_8c'		=> [D],
		'note_8d'		=> [F],
		'note_8e'		=> [H],
		'note_8f'		=> [J],
		'note_8g'		=> [K],
		'note_8h'		=> [L],
		
		'note_9a'		=> [A],
		'note_9b'		=> [S],
		'note_9c'		=> [D],
		'note_9d'		=> [F],
		'note_9e'		=> [SPACE],
		'note_9f'		=> [H],
		'note_9g'		=> [J],
		'note_9h'		=> [K],
		'note_9i'		=> [L],
		
		'ui_up'			=> [W, UP],
		'ui_left'		=> [A, LEFT],
		'ui_down'		=> [S, DOWN],
		'ui_right'		=> [D, RIGHT],
		
		'accept'		=> [SPACE, ENTER],
		'back'			=> [BACKSPACE, ESCAPE],
		'pause'			=> [ENTER, ESCAPE],
		'reset'			=> [R],
		
		'volume_mute'	=> [ZERO],
		'volume_up'		=> [NUMPADPLUS, PLUS],
		'volume_down'	=> [NUMPADMINUS, MINUS],
		
		'debug_1'		=> [SEVEN],
		'debug_2'		=> [EIGHT]
	];
	public static var gamepadBinds:Map<String, Array<FlxGamepadInputID>> = [ // idk how do gamepad players bind those...
		'note_1'		=> [RIGHT_SHOULDER],
		
		'note_2a'		=> [DPAD_LEFT, X],
		'note_2b'		=> [DPAD_RIGHT, B],
		
		'note_3a'		=> [DPAD_LEFT, X],
		'note_3b'		=> [RIGHT_SHOULDER],
		'note_3c'		=> [DPAD_RIGHT, B],
		
		'note_up'		=> [DPAD_UP, Y],
		'note_left'		=> [DPAD_LEFT, X],
		'note_down'		=> [DPAD_DOWN, A],
		'note_right'	=> [DPAD_RIGHT, B],
		
		'note_5a'		=> [DPAD_LEFT, X],
		'note_5b'		=> [DPAD_DOWN, A],
		'note_5c'		=> [RIGHT_SHOULDER],
		'note_5d'		=> [DPAD_UP, Y],
		'note_5e'		=> [DPAD_RIGHT, B],
		
		'note_6a'		=> [DPAD_LEFT],
		'note_6b'		=> [DPAD_DOWN],
		'note_6c'		=> [DPAD_RIGHT],
		'note_6d'		=> [X],
		'note_6e'		=> [A],
		'note_6f'		=> [B],
		
		'note_7a'		=> [DPAD_LEFT],
		'note_7b'		=> [DPAD_DOWN],
		'note_7c'		=> [DPAD_RIGHT],
		'note_7d'		=> [RIGHT_SHOULDER],
		'note_7e'		=> [X],
		'note_7f'		=> [A],
		'note_7g'		=> [B],
		
		'note_8a'		=> [DPAD_LEFT],
		'note_8b'		=> [DPAD_DOWN],
		'note_8c'		=> [DPAD_UP],
		'note_8d'		=> [DPAD_RIGHT],
		'note_8e'		=> [X],
		'note_8f'		=> [A],
		'note_8g'		=> [Y],
		'note_8h'		=> [B],
		
		'note_9a'		=> [DPAD_LEFT],
		'note_9b'		=> [DPAD_DOWN],
		'note_9c'		=> [DPAD_UP],
		'note_9d'		=> [DPAD_RIGHT],
		'note_9e'		=> [RIGHT_SHOULDER],
		'note_9f'		=> [X],
		'note_9g'		=> [A],
		'note_9h'		=> [Y],
		'note_9i'		=> [B],
		
		'ui_up'			=> [DPAD_UP, LEFT_STICK_DIGITAL_UP],
		'ui_left'		=> [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
		'ui_down'		=> [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
		'ui_right'		=> [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
		
		'accept'		=> [A, START],
		'back'			=> [B],
		'pause'			=> [START],
		'reset'			=> [BACK]
	];
	public static var defaultKeys:Map<String, Array<FlxKey>> = null;
	public static var defaultButtons:Map<String, Array<FlxGamepadInputID>> = null;

	public static function resetKeys(controller:Null<Bool> = null) //Null = both, False = Keyboard, True = Controller
	{
		if(controller != true)
			for (key in keyBinds.keys())
				if(defaultKeys.exists(key))
					keyBinds.set(key, defaultKeys.get(key).copy());

		if(controller != false)
			for (button in gamepadBinds.keys())
				if(defaultButtons.exists(button))
					gamepadBinds.set(button, defaultButtons.get(button).copy());
	}

	public static function clearInvalidKeys(key:String)
	{
		var keyBind:Array<FlxKey> = keyBinds.get(key);
		var gamepadBind:Array<FlxGamepadInputID> = gamepadBinds.get(key);
		while(keyBind != null && keyBind.contains(NONE)) keyBind.remove(NONE);
		while(gamepadBind != null && gamepadBind.contains(NONE)) gamepadBind.remove(NONE);
	}

	public static function loadDefaultKeys()
	{
		defaultKeys = keyBinds.copy();
		defaultButtons = gamepadBinds.copy();
	}

	public static function saveSettings() {
		for (key in Reflect.fields(data))
			Reflect.setField(FlxG.save.data, key, Reflect.field(data, key));

		#if ACHIEVEMENTS_ALLOWED Achievements.save(); #end
		FlxG.save.flush();

		//Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		var save:FlxSave = new FlxSave();
		save.bind('controls_v3', CoolUtil.getSavePath());
		save.data.keyboard = keyBinds;
		save.data.gamepad = gamepadBinds;
		save.flush();
		FlxG.log.add("Settings saved!");
	}

	public static function loadPrefs() {
		#if ACHIEVEMENTS_ALLOWED Achievements.load(); #end

		for (key in Reflect.fields(data))
			if (key != 'gameplaySettings' && Reflect.hasField(FlxG.save.data, key))
				Reflect.setField(data, key, Reflect.field(FlxG.save.data, key));
		
		if(Main.fpsVar != null)
			Main.fpsVar.visible = data.showFPS;

		#if (!html5 && !switch)
		FlxG.autoPause = ClientPrefs.data.autoPause;

		if(FlxG.save.data.framerate == null) {
			final refreshRate:Int = FlxG.stage.application.window.displayMode.refreshRate;
			data.framerate = Std.int(FlxMath.bound(refreshRate, 60, 240));
		}
		#end

		if(data.framerate > FlxG.drawFramerate)
		{
			FlxG.updateFramerate = data.framerate;
			FlxG.drawFramerate = data.framerate;
		}
		else
		{
			FlxG.drawFramerate = data.framerate;
			FlxG.updateFramerate = data.framerate;
		}

		if(FlxG.save.data.gameplaySettings != null)
		{
			var savedMap:Map<String, Dynamic> = FlxG.save.data.gameplaySettings;
			for (name => value in savedMap)
				data.gameplaySettings.set(name, value);
		}
		
		// flixel automatically saves your volume!
		if(FlxG.save.data.volume != null)
			FlxG.sound.volume = FlxG.save.data.volume;
		if (FlxG.save.data.mute != null)
			FlxG.sound.muted = FlxG.save.data.mute;

		#if DISCORD_ALLOWED
		DiscordClient.check();
		#end

		// controls on a separate save file
		var save:FlxSave = new FlxSave();
		save.bind('controls_v3', CoolUtil.getSavePath());
		if(save != null)
		{
			if(save.data.keyboard != null)
			{
				var loadedControls:Map<String, Array<FlxKey>> = save.data.keyboard;
				for (control => keys in loadedControls)
					if(keyBinds.exists(control)) keyBinds.set(control, keys);
			}
			if(save.data.gamepad != null)
			{
				var loadedControls:Map<String, Array<FlxGamepadInputID>> = save.data.gamepad;
				for (control => keys in loadedControls)
					if(gamepadBinds.exists(control)) gamepadBinds.set(control, keys);
			}
			reloadVolumeKeys();
		}
	}

	inline public static function getGameplaySetting(name:String, defaultValue:Dynamic = null, ?customDefaultValue:Bool = false):Dynamic
	{
		if(!customDefaultValue) defaultValue = defaultData.gameplaySettings.get(name);
		return /*PlayState.isStoryMode ? defaultValue : */ (data.gameplaySettings.exists(name) ? data.gameplaySettings.get(name) : defaultValue);
	}

	public static function reloadVolumeKeys()
	{
		TitleState.muteKeys = keyBinds.get('volume_mute').copy();
		TitleState.volumeDownKeys = keyBinds.get('volume_down').copy();
		TitleState.volumeUpKeys = keyBinds.get('volume_up').copy();
		toggleVolumeKeys(true);
	}
	public static function toggleVolumeKeys(?turnOn:Bool = true)
	{
		FlxG.sound.muteKeys = turnOn ? TitleState.muteKeys : [];
		FlxG.sound.volumeDownKeys = turnOn ? TitleState.volumeDownKeys : [];
		FlxG.sound.volumeUpKeys = turnOn ? TitleState.volumeUpKeys : [];
	}
}
