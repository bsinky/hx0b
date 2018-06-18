
#if macro
import haxe.macro.Context;
#end

class Hx0b
{
	macro public static function b(binaryString:String)
	{
		var literalValue = 0;

		for (n in 0...binaryString.length) {
			var i = binaryString.length - 1 - n;
			var c = binaryString.charAt(n);

			if (c != '0' && c != '1') {
				Context.error('Invalid character "${c}" in binary string "${binaryString}"',
					Context.currentPos());
			}

			if (c == '0') {
				continue;
			}

			literalValue += Std.int(Math.pow(2, i));
		}

		return macro $v{literalValue};
	}
}