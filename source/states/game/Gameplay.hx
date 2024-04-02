package states.game;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import objects.game.StrumObject;
import parsers.Quaver.QuaverParser;

// music
class Gameplay extends FlxState
{
	public static var strumX:Float = 950;
	public static var time:Float = 0;

	public var strumLineObjects:FlxTypedGroup<StrumObject>;

	override public function create()
	{
		super.create();

		strumLineObjects = new FlxTypedGroup<StrumObject>();

		// 4 strum lines
		for (i in 0...4)
		{
			var strumLine:StrumObject = new StrumObject(strumX + (i * (200 * 1.25)), 1300, i);
			strumLineObjects.add(strumLine);
		}

		add(strumLineObjects);

		QuaverParser.load();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		for (strumLine in strumLineObjects.members)
		{
			if (strumLine.data == 0 && FlxG.keys.pressed.D)
				strumLine.playAnim("pressed");
			else if (strumLine.data == 1 && FlxG.keys.pressed.F)
				strumLine.playAnim("pressed");
			else if (strumLine.data == 2 && FlxG.keys.pressed.J)
				strumLine.playAnim("pressed");
			else if (strumLine.data == 3 && FlxG.keys.pressed.K)
				strumLine.playAnim("pressed");
			else
				strumLine.playAnim("unpressed");
			strumLine.update(elapsed);
		}
	}
}
