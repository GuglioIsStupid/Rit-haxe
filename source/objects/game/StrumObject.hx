package objects.game;

import flixel.FlxSprite;

// FlxGraphic
class StrumObject extends FlxSprite
{
	public var data:Int;
	public var unpressedPath:String;
	public var pressedPath:String;

	public function new(x:Float, y:Float, data:Int)
	{
		super(x, y);

		this.data = data;

		unpressedPath = "assets/defaultSkins/skinThrowbacks/notes/4K/receptor" + Std.string(data + 1) + "-unpressed.png";
		pressedPath = "assets/defaultSkins/skinThrowbacks/notes/4K/receptor" + Std.string(data + 1) + "-pressed.png";

		loadGraphic(unpressedPath);
		setGraphicSize(200 * 1.25, 200 * 1.25);
		updateHitbox();

		// antialiasing
		antialiasing = true;
	}

	public function playAnim(anim)
	{
		if (anim == "pressed")
		{
			loadGraphic(pressedPath);
		}
		else
		{
			loadGraphic(unpressedPath);
		}
	}
}
