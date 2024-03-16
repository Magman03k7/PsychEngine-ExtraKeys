package objects;

import backend.animation.PsychAnimationController;

import shaders.RGBPalette;
import shaders.RGBPalette.RGBShaderReference;

class StrumNote extends FlxSprite
{
	public var rgbShader:RGBShaderReference;
	public var resetAnim:Float = 0;
	private var noteData:Int = 0;
	public var direction:Float = 90;//plan on doing scroll directions soon -bb
	public var downScroll:Bool = false;//plan on doing scroll directions soon -bb
	public var sustainReduce:Bool = true;
	private var player:Int;
	
	public var texture(default, set):String = null;
	private function set_texture(value:String):String {
		if(texture != value) {
			texture = value;
			reloadNote();
		}
		return value;
	}

	public var useRGBShader:Bool = true;
	public function new(x:Float, y:Float, leData:Int, player:Int) {
		animation = new PsychAnimationController(this);

		rgbShader = new RGBShaderReference(this, Note.initializeGlobalRGBShader(leData));
		rgbShader.enabled = false;
		if(PlayState.SONG != null && PlayState.SONG.disableNoteRGB) useRGBShader = false;
		
		var arr:Array<FlxColor> = ClientPrefs.data.arrowRGBExtra[Note.gfxIndex[Main.mania][leData]];
		if(PlayState.isPixelStage) arr = ClientPrefs.data.arrowRGBPixelExtra[Note.gfxIndex[Main.mania][leData]];
		
		if(leData <= Main.mania)
		{
			@:bypassAccessor
			{
				rgbShader.r = arr[0];
				rgbShader.g = arr[1];
				rgbShader.b = arr[2];
			}
		}

		noteData = leData;
		this.player = player;
		this.noteData = leData;
		super(x, y);

		var skin:String = null;
		if(PlayState.SONG != null && PlayState.SONG.arrowSkin != null && PlayState.SONG.arrowSkin.length > 1) skin = PlayState.SONG.arrowSkin;
		else skin = Note.defaultNoteSkin;

		var customSkin:String = skin + Note.getNoteSkinPostfix();
		if(Paths.fileExists('images/$customSkin.png', IMAGE)) skin = customSkin;

		texture = skin; //Load texture and anims
		scrollFactor.set();
	}

	public function reloadNote()
	{
		var lastAnim:String = null;
		if(animation.curAnim != null) lastAnim = animation.curAnim.name;

		if(PlayState.isPixelStage)
		{
			loadGraphic(Paths.image('pixelUI/' + texture));
			width = width / 9;
			height = height / 5;
			loadGraphic(Paths.image('pixelUI/' + texture), true, Math.floor(width), Math.floor(height));

			antialiasing = false;
			setGraphicSize(Std.int(width * PlayState.daPixelZoom * Note.scalesPixel[Main.mania]));

			animation.add('purple', [9]);
			animation.add('blue', [10]);
			animation.add('green', [11]);
			animation.add('red', [12]);
			animation.add('white', [13]);
			animation.add('yellow', [14]);
			animation.add('violet', [15]);
			animation.add('black', [16]);
			animation.add('dark', [17]);

			var dataNum = Note.gfxIndex[Main.mania][noteData];
			animation.add('static', [dataNum]);
			animation.add('pressed', [9 + dataNum, 18 + dataNum], 12, false);
			animation.add('confirm', [27 + dataNum, 36 + dataNum], 24, false);
		}
		else
		{
			frames = Paths.getSparrowAtlas(texture);
			animation.addByPrefix('purple', 'arrowLEFT');
			animation.addByPrefix('blue', 'arrowDOWN');
			animation.addByPrefix('green', 'arrowUP');
			animation.addByPrefix('red', 'arrowRIGHT');
			animation.addByPrefix('white', 'arrowSPACE');
			animation.addByPrefix('yellow', 'arrowLEFT');
			animation.addByPrefix('violet', 'arrowDOWN');
			animation.addByPrefix('black', 'arrowUP');
			animation.addByPrefix('dark', 'arrowRIGHT');

			antialiasing = ClientPrefs.data.antialiasing;
			setGraphicSize(Std.int(width * Note.scales[Main.mania]));

			var dirName = Note.gfxDir[Note.gfxHud[Main.mania][noteData]];
			var pressName = Note.colArray[Note.gfxIndex[Main.mania][noteData]];
			var pressNameAlt = Note.pressArrayAlt[Note.gfxIndex[Main.mania][noteData]];
			animation.addByPrefix('static', 'arrow' + dirName);
			animation.addByPrefix('pressed', pressNameAlt + ' press', 24, false);
			animation.addByPrefix('confirm', pressNameAlt + ' confirm', 24, false);
			animation.addByPrefix('pressed', pressName + ' press', 24, false);
			animation.addByPrefix('confirm', pressName + ' confirm', 24, false);
		}
		updateHitbox();

		if(lastAnim != null)
		{
			playAnim(lastAnim, true);
		}
	}

	public function postAddedToGroup() {
		playAnim('static');
		x += Note.swidths[Main.mania] * noteData;
		x += 50;
		x += ((FlxG.width / 2) * player);
		x -= Note.posRest[Main.mania];
		ID = noteData;
	}

	override function update(elapsed:Float) {
		if(resetAnim > 0) {
			resetAnim -= elapsed;
			if(resetAnim <= 0) {
				playAnim('static');
				resetAnim = 0;
			}
		}
		super.update(elapsed);
	}

	public function playAnim(anim:String, ?force:Bool = false) {
		animation.play(anim, force);
		if(animation.curAnim != null)
		{
			centerOffsets();
			centerOrigin();
		}
		if(useRGBShader) rgbShader.enabled = (animation.curAnim != null && animation.curAnim.name != 'static');
	}
}
