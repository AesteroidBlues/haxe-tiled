import TiledMap;

class Main {
    static function main() {
        var testFile = "res/test.tmx";
        var map = new TiledMap(testFile);

        trace('Parsed map with width ${map.width} and height ${map.height}');
    }
}
