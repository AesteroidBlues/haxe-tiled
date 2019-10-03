class TiledTileset {
    public var firstGid(get, null) : Int;
    public var source(get, null) : String;
    public var name(get, null) : String;
    public var tileWidth(get, null) : Int;
    public var tileHeight(get, null) : Int;
    public var spacing(get, null) : Int;
    public var margin(get, null) : Int;
    public var tileCount(get, null) : Int;
    public var columns(get, null) : Int;

    public function new(xml : Xml) {
        setAttributes(xml);
        setChildren(xml);
    }

    private function setAttributes(xml : Xml) {
        for (a in xml.attributes()) {
            switch (a) {
                case "firstGid":
                    this.firstGid = Std.parseInt(xml.get(a));
                case "source":
                    this.source = xml.get(a);
                case "name":
                    this.name = xml.get(a);
                case "tileWidth":
                    this.tileWidth = Std.parseInt(xml.get(a));
                case "tileHeight":
                    this.tileHeight = Std.parseInt(xml.get(a));
                case "spacing":
                    this.spacing = Std.parseInt(xml.get(a));
                case "margin":
                    this.margin = Std.parseInt(xml.get(a));
                case "tileCount":
                    this.tileCount = Std.parseInt(xml.get(a));
                case "columns":
                    this.columns = Std.parseInt(xml.get(a));
            }
        }
    }

    private function setChildren(xml : Xml) {
        for (c in xml.elements()) {
            switch (c.nodeName) {
                case "tile":
                case "image":
            }
        }
    }

    private function get_firstGid() {
        return firstGid;
    }

    private function get_source() {
        return source;
    }

    private function get_name() {
        return name;
    }

    private function get_tileWidth() {
        return tileWidth;
    }

    private function get_tileHeight() {
        return tileHeight;
    }

    private function get_spacing() {
        return spacing;
    }

    private function get_margin() {
        return margin;
    }

    private function get_tileCount() {
        return tileCount;
    }
    
    private function get_columns() {
        return columns;
    }
}
