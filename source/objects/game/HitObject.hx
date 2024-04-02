package objects.game;

import flixel.FlxSprite;
import states.game.Gameplay;

class HitObject extends FlxSprite
{
	public var time:Float = 0;
	public var endTime:Float = 0;
	public var data:Int = 0;

	public var canBeHit:Bool = false;
	public var tooLate:Bool = false;
	public var wasGoodHit:Bool = false;

	public var children:Array<FlxSprite> = null;

	public var moveWithScroll:Bool = false;

	public static var noteObjectWidth:Float = 200;

	public function new(time, data, endTime)
	{
		super(0, 0);

		x += Gameplay.strumX;
		y = -2000;

		this.time = time;
		this.endTime = endTime;
		this.data = data;

		children = new Array<FlxSprite>();

		loadGraphic("assets/skinThrowbacks/notes/4K/note" + Std.string(data++) + ".png");

		noteObjectWidth = width;

		x += width * data;
	}

	public override function update(elapsed:Float)
	{
		super.update(elapsed);

		canBeHit = time > Gameplay.time - 250 && time < Gameplay.time + 250;
		tooLate = time < Gameplay.time - 250 && !wasGoodHit;
	}

	public override function draw()
	{
		// if on screen (1080p), draw
		if (y > -200 && y < 1280)
		{
			super.draw();
		}
	}
}
