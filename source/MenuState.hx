package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.FlxG;

class MenuState extends FlxState
{
    var _btnPlay:FlxButton;

    override public function create():Void
	{
        _btnPlay = new FlxButton(0, 0, "Play", clickPlay);
        add(_btnPlay);
        _btnPlay.screenCenter();
		super.create();
	}

    function clickPlay():Void
    {
        FlxG.switchState(new PlayState());
    }
}