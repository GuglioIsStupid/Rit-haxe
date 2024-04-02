package;

import flixel.FlxGame;
import openfl.Lib;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	var GameWidth:Int = 1920;
	var GameHeight:Int = 1080;
	var FrameRate:Int = 500;

	public static var FpsCounter:FPS;

	public static var Gameplay:states.game.Gameplay;

	public function new()
	{
		var ratioX:Float = Lib.current.stage.stageWidth / GameWidth;
		var ratioY:Float = Lib.current.stage.stageHeight / GameHeight;
		var scale:Float = Math.min(ratioX, ratioY);

		GameWidth = Math.ceil(GameWidth / scale);
		GameHeight = Math.ceil(GameHeight / scale);

		super();
		trace("GameWidth: " + GameWidth + " GameHeight: " + GameHeight + " FrameRate: " + FrameRate);
		addChild(new FlxGame(GameWidth, GameHeight, states.game.Gameplay, FrameRate, FrameRate, true));

		FpsCounter = new FPS(2, 2, 0xFFFFFF);
		addChild(FpsCounter);
	}
}
