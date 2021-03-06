package net.miginfocom.layout {
public final class Strings {
  public static function trim(str:String):String {
    return trim2(str, 0, str.length);
  }

  public static function trim2(s:String, startIndex:int, endIndex:int):String {
    if (startIndex == endIndex) {
      return "";
    }

    while (startIndex < endIndex && s.charCodeAt(startIndex) <= 32) {
      startIndex++;
    }
    while (startIndex < endIndex && s.charCodeAt(endIndex - 1) <= 32) {
      endIndex--;
    }
    return (startIndex > 0 || endIndex < s.length) ? s.substring(startIndex, endIndex) : s;
  }

  public static function startsWith(string:String, prefix:String, offset:int = 0):Boolean {
    var prefixCount:int = prefix.length;
    if (offset < 0 || offset > (string.length - prefixCount)) {
      return false;
    }

    var thisOffset:int = offset;
    var prefixOffset:int = 0;
    while (--prefixCount >= 0) {
      if (string.charCodeAt(thisOffset++) != prefix.charCodeAt(prefixOffset++)) {
        return false;
      }
    }
    return true;
  }

  public static function endsWith(s:String, suffix:String):Boolean {
    return startsWith(s, suffix, s.length - suffix.length);
  }
  
  public static function hashCode(s:String):int {
    var h:int = 0;
    if (s.length != 0) {
      for (var i:int = 0, n:int = s.length; i < n; i++) {
        h = 31 * h + s.charCodeAt(i);
      }
    }

    return h;
  }
}
}