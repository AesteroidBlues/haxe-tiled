import TiledMap;

class Main {
    static function main() {
        var testFile = "res/test.tmx";
        var map = new TiledMap(testFile);

        trace('Parsed map with width ${map.width} and height ${map.height}');

        for (layerName in map.layers.keys()) {
            var layer = map.layers[layerName];
            trace ('Found layer named $layerName with width ${layer.width} and height ${layer.height}');
        }
    }
}
