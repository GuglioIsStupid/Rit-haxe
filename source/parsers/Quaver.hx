package parsers;

import flixel.FlxG;
import flixel.sound.FlxSound;
import yaml.Yaml;

// flxsound
class QuaverParser
{
	public static function load(chart:String = "assets/defaultSongs/purpleeater/91021.qua", folderPath:String = "assets/defaultSongs/purpleeater/")
	{
		/* var chartData = Yaml.read(chart); */
		var chartData = Yaml.read(chart);
		// print chartData type

		/* var meta = {
			format: "Quaver",
			title: chartData.Title,
			artist: chartData.Artist,
			source: chartData.Source,
			tags: chartData.Tags,
			name: chartData.DifficultyName,
			creator: chartData.Creator,
			audioPath: chartData.AudioFile,
			backgroundFile: chartData.BackgroundFile,
			previewTime: (chartData.PreviewTime != null) ? chartData.PreviewTime : 0,
			noteCount: 0,
			length: 0,
			bpm: 0,
			inputMode: chartData.Mode.replace("Keys", "")
		};*/

		// load folderPath/meta.audioPath
		/* states.game.Gameplay.music = new FlxSound();
			states.game.Gameplay.music.loadEmbedded(folderPath + chartData.get("AudioFile"));
			// play music
			states.game.Gameplay.music.play(); */
		// import flixel.FlxG;

		trace(folderPath + chartData.get("AudioFile"));
		var sound:FlxSound = new FlxSound();
		sound.loadEmbedded(folderPath + chartData.get("AudioFile"));
		sound.play();
		/* FlxG.sound.play(folderPath + chartData.get("AudioFile")); */
	}
}
