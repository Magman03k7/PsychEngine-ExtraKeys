package backend;

import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.gamepad.mappings.FlxGamepadMapping;
import flixel.input.keyboard.FlxKey;

class Controls
{
	//Keeping same use cases on stuff for it to be easier to understand/use
	//I'd have removed it but this makes it a lot less annoying to use in my opinion

	//You do NOT have to create these variables/getters for adding new keys,
	//but you will instead have to use:
	//   controls.justPressed("ui_up")   instead of   controls.UI_UP

	//Dumb but easily usable code, or Smart but complicated? Your choice.
	//Also idk how to use macros they're weird as fuck lol

	// Pressed buttons (directions)
	public var UI_UP_P(get, never):Bool;
	public var UI_DOWN_P(get, never):Bool;
	public var UI_LEFT_P(get, never):Bool;
	public var UI_RIGHT_P(get, never):Bool;

	public var NOTE_1_P(get, never):Bool;

	public var NOTE_2A_P(get, never):Bool;
	public var NOTE_2B_P(get, never):Bool;

	public var NOTE_3A_P(get, never):Bool;
	public var NOTE_3B_P(get, never):Bool;
	public var NOTE_3C_P(get, never):Bool;

	public var NOTE_UP_P(get, never):Bool;
	public var NOTE_DOWN_P(get, never):Bool;
	public var NOTE_LEFT_P(get, never):Bool;
	public var NOTE_RIGHT_P(get, never):Bool;

	public var NOTE_5A_P(get, never):Bool;
	public var NOTE_5B_P(get, never):Bool;
	public var NOTE_5C_P(get, never):Bool;
	public var NOTE_5D_P(get, never):Bool;
	public var NOTE_5E_P(get, never):Bool;

	public var NOTE_6A_P(get, never):Bool;
	public var NOTE_6B_P(get, never):Bool;
	public var NOTE_6C_P(get, never):Bool;
	public var NOTE_6D_P(get, never):Bool;
	public var NOTE_6E_P(get, never):Bool;
	public var NOTE_6F_P(get, never):Bool;

	public var NOTE_7A_P(get, never):Bool;
	public var NOTE_7B_P(get, never):Bool;
	public var NOTE_7C_P(get, never):Bool;
	public var NOTE_7D_P(get, never):Bool;
	public var NOTE_7E_P(get, never):Bool;
	public var NOTE_7F_P(get, never):Bool;
	public var NOTE_7G_P(get, never):Bool;

	public var NOTE_8A_P(get, never):Bool;
	public var NOTE_8B_P(get, never):Bool;
	public var NOTE_8C_P(get, never):Bool;
	public var NOTE_8D_P(get, never):Bool;
	public var NOTE_8E_P(get, never):Bool;
	public var NOTE_8F_P(get, never):Bool;
	public var NOTE_8G_P(get, never):Bool;
	public var NOTE_8H_P(get, never):Bool;

	public var NOTE_9A_P(get, never):Bool;
	public var NOTE_9B_P(get, never):Bool;
	public var NOTE_9C_P(get, never):Bool;
	public var NOTE_9D_P(get, never):Bool;
	public var NOTE_9E_P(get, never):Bool;
	public var NOTE_9F_P(get, never):Bool;
	public var NOTE_9G_P(get, never):Bool;
	public var NOTE_9H_P(get, never):Bool;
	public var NOTE_9I_P(get, never):Bool;

	private function get_UI_UP_P() return justPressed('ui_up');
	private function get_UI_DOWN_P() return justPressed('ui_down');
	private function get_UI_LEFT_P() return justPressed('ui_left');
	private function get_UI_RIGHT_P() return justPressed('ui_right');

	private function get_NOTE_1_P() return justPressed('note_1');

	private function get_NOTE_2A_P() return justPressed('note_2a');
	private function get_NOTE_2B_P() return justPressed('note_2b');

	private function get_NOTE_3A_P() return justPressed('note_3a');
	private function get_NOTE_3B_P() return justPressed('note_3b');
	private function get_NOTE_3C_P() return justPressed('note_3c');

	private function get_NOTE_UP_P() return justPressed('note_up');
	private function get_NOTE_DOWN_P() return justPressed('note_down');
	private function get_NOTE_LEFT_P() return justPressed('note_left');
	private function get_NOTE_RIGHT_P() return justPressed('note_right');

	private function get_NOTE_5A_P() return justPressed('note_5a');
	private function get_NOTE_5B_P() return justPressed('note_5b');
	private function get_NOTE_5C_P() return justPressed('note_5c');
	private function get_NOTE_5D_P() return justPressed('note_5d');
	private function get_NOTE_5E_P() return justPressed('note_5e');

	private function get_NOTE_6A_P() return justPressed('note_6a');
	private function get_NOTE_6B_P() return justPressed('note_6b');
	private function get_NOTE_6C_P() return justPressed('note_6c');
	private function get_NOTE_6D_P() return justPressed('note_6d');
	private function get_NOTE_6E_P() return justPressed('note_6e');
	private function get_NOTE_6F_P() return justPressed('note_6f');

	private function get_NOTE_7A_P() return justPressed('note_7a');
	private function get_NOTE_7B_P() return justPressed('note_7b');
	private function get_NOTE_7C_P() return justPressed('note_7c');
	private function get_NOTE_7D_P() return justPressed('note_7d');
	private function get_NOTE_7E_P() return justPressed('note_7e');
	private function get_NOTE_7F_P() return justPressed('note_7f');
	private function get_NOTE_7G_P() return justPressed('note_7g');

	private function get_NOTE_8A_P() return justPressed('note_8a');
	private function get_NOTE_8B_P() return justPressed('note_8b');
	private function get_NOTE_8C_P() return justPressed('note_8c');
	private function get_NOTE_8D_P() return justPressed('note_8d');
	private function get_NOTE_8E_P() return justPressed('note_8e');
	private function get_NOTE_8F_P() return justPressed('note_8f');
	private function get_NOTE_8G_P() return justPressed('note_8g');
	private function get_NOTE_8H_P() return justPressed('note_8h');

	private function get_NOTE_9A_P() return justPressed('note_9a');
	private function get_NOTE_9B_P() return justPressed('note_9b');
	private function get_NOTE_9C_P() return justPressed('note_9c');
	private function get_NOTE_9D_P() return justPressed('note_9d');
	private function get_NOTE_9E_P() return justPressed('note_9e');
	private function get_NOTE_9F_P() return justPressed('note_9f');
	private function get_NOTE_9G_P() return justPressed('note_9g');
	private function get_NOTE_9H_P() return justPressed('note_9h');
	private function get_NOTE_9I_P() return justPressed('note_9i');

	// Held buttons (directions)
	public var UI_UP(get, never):Bool;
	public var UI_DOWN(get, never):Bool;
	public var UI_LEFT(get, never):Bool;
	public var UI_RIGHT(get, never):Bool;

	public var NOTE_1(get, never):Bool;

	public var NOTE_2A(get, never):Bool;
	public var NOTE_2B(get, never):Bool;

	public var NOTE_3A(get, never):Bool;
	public var NOTE_3B(get, never):Bool;
	public var NOTE_3C(get, never):Bool;

	public var NOTE_UP(get, never):Bool;
	public var NOTE_DOWN(get, never):Bool;
	public var NOTE_LEFT(get, never):Bool;
	public var NOTE_RIGHT(get, never):Bool;

	public var NOTE_5A(get, never):Bool;
	public var NOTE_5B(get, never):Bool;
	public var NOTE_5C(get, never):Bool;
	public var NOTE_5D(get, never):Bool;
	public var NOTE_5E(get, never):Bool;

	public var NOTE_6A(get, never):Bool;
	public var NOTE_6B(get, never):Bool;
	public var NOTE_6C(get, never):Bool;
	public var NOTE_6D(get, never):Bool;
	public var NOTE_6E(get, never):Bool;
	public var NOTE_6F(get, never):Bool;

	public var NOTE_7A(get, never):Bool;
	public var NOTE_7B(get, never):Bool;
	public var NOTE_7C(get, never):Bool;
	public var NOTE_7D(get, never):Bool;
	public var NOTE_7E(get, never):Bool;
	public var NOTE_7F(get, never):Bool;
	public var NOTE_7G(get, never):Bool;

	public var NOTE_8A(get, never):Bool;
	public var NOTE_8B(get, never):Bool;
	public var NOTE_8C(get, never):Bool;
	public var NOTE_8D(get, never):Bool;
	public var NOTE_8E(get, never):Bool;
	public var NOTE_8F(get, never):Bool;
	public var NOTE_8G(get, never):Bool;
	public var NOTE_8H(get, never):Bool;

	public var NOTE_9A(get, never):Bool;
	public var NOTE_9B(get, never):Bool;
	public var NOTE_9C(get, never):Bool;
	public var NOTE_9D(get, never):Bool;
	public var NOTE_9E(get, never):Bool;
	public var NOTE_9F(get, never):Bool;
	public var NOTE_9G(get, never):Bool;
	public var NOTE_9H(get, never):Bool;
	public var NOTE_9I(get, never):Bool;

	private function get_UI_UP() return pressed('ui_up');
	private function get_UI_DOWN() return pressed('ui_down');
	private function get_UI_LEFT() return pressed('ui_left');
	private function get_UI_RIGHT() return pressed('ui_right');

	private function get_NOTE_1() return pressed('note_1');

	private function get_NOTE_2A() return pressed('note_2a');
	private function get_NOTE_2B() return pressed('note_2b');

	private function get_NOTE_3A() return pressed('note_3a');
	private function get_NOTE_3B() return pressed('note_3b');
	private function get_NOTE_3C() return pressed('note_3c');

	private function get_NOTE_UP() return pressed('note_up');
	private function get_NOTE_DOWN() return pressed('note_down');
	private function get_NOTE_LEFT() return pressed('note_left');
	private function get_NOTE_RIGHT() return pressed('note_right');

	private function get_NOTE_5A() return pressed('note_5a');
	private function get_NOTE_5B() return pressed('note_5b');
	private function get_NOTE_5C() return pressed('note_5c');
	private function get_NOTE_5D() return pressed('note_5d');
	private function get_NOTE_5E() return pressed('note_5e');

	private function get_NOTE_6A() return pressed('note_6a');
	private function get_NOTE_6B() return pressed('note_6b');
	private function get_NOTE_6C() return pressed('note_6c');
	private function get_NOTE_6D() return pressed('note_6d');
	private function get_NOTE_6E() return pressed('note_6e');
	private function get_NOTE_6F() return pressed('note_6f');

	private function get_NOTE_7A() return pressed('note_7a');
	private function get_NOTE_7B() return pressed('note_7b');
	private function get_NOTE_7C() return pressed('note_7c');
	private function get_NOTE_7D() return pressed('note_7d');
	private function get_NOTE_7E() return pressed('note_7e');
	private function get_NOTE_7F() return pressed('note_7f');
	private function get_NOTE_7G() return pressed('note_7g');

	private function get_NOTE_8A() return pressed('note_8a');
	private function get_NOTE_8B() return pressed('note_8b');
	private function get_NOTE_8C() return pressed('note_8c');
	private function get_NOTE_8D() return pressed('note_8d');
	private function get_NOTE_8E() return pressed('note_8e');
	private function get_NOTE_8F() return pressed('note_8f');
	private function get_NOTE_8G() return pressed('note_8g');
	private function get_NOTE_8H() return pressed('note_8h');

	private function get_NOTE_9A() return pressed('note_9a');
	private function get_NOTE_9B() return pressed('note_9b');
	private function get_NOTE_9C() return pressed('note_9c');
	private function get_NOTE_9D() return pressed('note_9d');
	private function get_NOTE_9E() return pressed('note_9e');
	private function get_NOTE_9F() return pressed('note_9f');
	private function get_NOTE_9G() return pressed('note_9g');
	private function get_NOTE_9H() return pressed('note_9h');
	private function get_NOTE_9I() return pressed('note_9i');

	// Released buttons (directions)
	public var UI_UP_R(get, never):Bool;
	public var UI_DOWN_R(get, never):Bool;
	public var UI_LEFT_R(get, never):Bool;
	public var UI_RIGHT_R(get, never):Bool;

	public var NOTE_1_R(get, never):Bool;

	public var NOTE_2A_R(get, never):Bool;
	public var NOTE_2B_R(get, never):Bool;

	public var NOTE_3A_R(get, never):Bool;
	public var NOTE_3B_R(get, never):Bool;
	public var NOTE_3C_R(get, never):Bool;

	public var NOTE_UP_R(get, never):Bool;
	public var NOTE_DOWN_R(get, never):Bool;
	public var NOTE_LEFT_R(get, never):Bool;
	public var NOTE_RIGHT_R(get, never):Bool;

	public var NOTE_5A_R(get, never):Bool;
	public var NOTE_5B_R(get, never):Bool;
	public var NOTE_5C_R(get, never):Bool;
	public var NOTE_5D_R(get, never):Bool;
	public var NOTE_5E_R(get, never):Bool;

	public var NOTE_6A_R(get, never):Bool;
	public var NOTE_6B_R(get, never):Bool;
	public var NOTE_6C_R(get, never):Bool;
	public var NOTE_6D_R(get, never):Bool;
	public var NOTE_6E_R(get, never):Bool;
	public var NOTE_6F_R(get, never):Bool;

	public var NOTE_7A_R(get, never):Bool;
	public var NOTE_7B_R(get, never):Bool;
	public var NOTE_7C_R(get, never):Bool;
	public var NOTE_7D_R(get, never):Bool;
	public var NOTE_7E_R(get, never):Bool;
	public var NOTE_7F_R(get, never):Bool;
	public var NOTE_7G_R(get, never):Bool;

	public var NOTE_8A_R(get, never):Bool;
	public var NOTE_8B_R(get, never):Bool;
	public var NOTE_8C_R(get, never):Bool;
	public var NOTE_8D_R(get, never):Bool;
	public var NOTE_8E_R(get, never):Bool;
	public var NOTE_8F_R(get, never):Bool;
	public var NOTE_8G_R(get, never):Bool;
	public var NOTE_8H_R(get, never):Bool;

	public var NOTE_9A_R(get, never):Bool;
	public var NOTE_9B_R(get, never):Bool;
	public var NOTE_9C_R(get, never):Bool;
	public var NOTE_9D_R(get, never):Bool;
	public var NOTE_9E_R(get, never):Bool;
	public var NOTE_9F_R(get, never):Bool;
	public var NOTE_9G_R(get, never):Bool;
	public var NOTE_9H_R(get, never):Bool;
	public var NOTE_9I_R(get, never):Bool;

	private function get_UI_UP_R() return justReleased('ui_up');
	private function get_UI_DOWN_R() return justReleased('ui_down');
	private function get_UI_LEFT_R() return justReleased('ui_left');
	private function get_UI_RIGHT_R() return justReleased('ui_right');

	private function get_NOTE_1_R() return justReleased('note_1');

	private function get_NOTE_2A_R() return justReleased('note_2a');
	private function get_NOTE_2B_R() return justReleased('note_2b');

	private function get_NOTE_3A_R() return justReleased('note_3a');
	private function get_NOTE_3B_R() return justReleased('note_3b');
	private function get_NOTE_3C_R() return justReleased('note_3c');

	private function get_NOTE_UP_R() return justReleased('note_up');
	private function get_NOTE_DOWN_R() return justReleased('note_down');
	private function get_NOTE_LEFT_R() return justReleased('note_left');
	private function get_NOTE_RIGHT_R() return justReleased('note_right');

	private function get_NOTE_5A_R() return justReleased('note_5a');
	private function get_NOTE_5B_R() return justReleased('note_5b');
	private function get_NOTE_5C_R() return justReleased('note_5c');
	private function get_NOTE_5D_R() return justReleased('note_5d');
	private function get_NOTE_5E_R() return justReleased('note_5e');

	private function get_NOTE_6A_R() return justReleased('note_6a');
	private function get_NOTE_6B_R() return justReleased('note_6b');
	private function get_NOTE_6C_R() return justReleased('note_6c');
	private function get_NOTE_6D_R() return justReleased('note_6d');
	private function get_NOTE_6E_R() return justReleased('note_6e');
	private function get_NOTE_6F_R() return justReleased('note_6f');

	private function get_NOTE_7A_R() return justReleased('note_7a');
	private function get_NOTE_7B_R() return justReleased('note_7b');
	private function get_NOTE_7C_R() return justReleased('note_7c');
	private function get_NOTE_7D_R() return justReleased('note_7d');
	private function get_NOTE_7E_R() return justReleased('note_7e');
	private function get_NOTE_7F_R() return justReleased('note_7f');
	private function get_NOTE_7G_R() return justReleased('note_7g');

	private function get_NOTE_8A_R() return justReleased('note_8a');
	private function get_NOTE_8B_R() return justReleased('note_8b');
	private function get_NOTE_8C_R() return justReleased('note_8c');
	private function get_NOTE_8D_R() return justReleased('note_8d');
	private function get_NOTE_8E_R() return justReleased('note_8e');
	private function get_NOTE_8F_R() return justReleased('note_8f');
	private function get_NOTE_8G_R() return justReleased('note_8g');
	private function get_NOTE_8H_R() return justReleased('note_8h');

	private function get_NOTE_9A_R() return justReleased('note_9a');
	private function get_NOTE_9B_R() return justReleased('note_9b');
	private function get_NOTE_9C_R() return justReleased('note_9c');
	private function get_NOTE_9D_R() return justReleased('note_9d');
	private function get_NOTE_9E_R() return justReleased('note_9e');
	private function get_NOTE_9F_R() return justReleased('note_9f');
	private function get_NOTE_9G_R() return justReleased('note_9g');
	private function get_NOTE_9H_R() return justReleased('note_9h');
	private function get_NOTE_9I_R() return justReleased('note_9i');


	// Pressed buttons (others)
	public var ACCEPT(get, never):Bool;
	public var BACK(get, never):Bool;
	public var PAUSE(get, never):Bool;
	public var RESET(get, never):Bool;
	private function get_ACCEPT() return justPressed('accept');
	private function get_BACK() return justPressed('back');
	private function get_PAUSE() return justPressed('pause');
	private function get_RESET() return justPressed('reset');

	//Gamepad & Keyboard stuff
	public var keyboardBinds:Map<String, Array<FlxKey>>;
	public var gamepadBinds:Map<String, Array<FlxGamepadInputID>>;
	public function justPressed(key:String)
	{
		var result:Bool = (FlxG.keys.anyJustPressed(keyboardBinds[key]) == true);
		if(result) controllerMode = false;

		return result || _myGamepadJustPressed(gamepadBinds[key]) == true;
	}

	public function pressed(key:String)
	{
		var result:Bool = (FlxG.keys.anyPressed(keyboardBinds[key]) == true);
		if(result) controllerMode = false;

		return result || _myGamepadPressed(gamepadBinds[key]) == true;
	}

	public function justReleased(key:String)
	{
		var result:Bool = (FlxG.keys.anyJustReleased(keyboardBinds[key]) == true);
		if(result) controllerMode = false;

		return result || _myGamepadJustReleased(gamepadBinds[key]) == true;
	}

	public var controllerMode:Bool = false;
	private function _myGamepadJustPressed(keys:Array<FlxGamepadInputID>):Bool
	{
		if(keys != null)
		{
			for (key in keys)
			{
				if (FlxG.gamepads.anyJustPressed(key) == true)
				{
					controllerMode = true;
					return true;
				}
			}
		}
		return false;
	}
	private function _myGamepadPressed(keys:Array<FlxGamepadInputID>):Bool
	{
		if(keys != null)
		{
			for (key in keys)
			{
				if (FlxG.gamepads.anyPressed(key) == true)
				{
					controllerMode = true;
					return true;
				}
			}
		}
		return false;
	}
	private function _myGamepadJustReleased(keys:Array<FlxGamepadInputID>):Bool
	{
		if(keys != null)
		{
			for (key in keys)
			{
				if (FlxG.gamepads.anyJustReleased(key) == true)
				{
					controllerMode = true;
					return true;
				}
			}
		}
		return false;
	}

	// IGNORE THESE
	public static var instance:Controls;
	public function new()
	{
		keyboardBinds = ClientPrefs.keyBinds;
		gamepadBinds = ClientPrefs.gamepadBinds;
	}
}