class TiledLayer {
    // Attributes
    public var id(get, null) : Int;
    public var name(get, null) : String;
    public var x(get, null) : Int;
    public var y(get, null) : Int;
    public var width(get, null) : Int;
    public var height(get, null) : Int;
    public var opacity(get, null) : Float;
    public var visible(get, null) : Bool;
    public var offsetX(get, null) : Int;
    public var offsetY(get, null) : Int;

    public function new(xmlNode : Xml) {
        setAttributes(xmlNode);
    }

    private function setAttributes(xml : Xml) {
        for (a in xml.attributes()) {
            switch (a) {
                case "id":
                    this.id = Std.parseInt(xml.get(a));
                case "name":
                    this.name = xml.get(a);
                case "x":
                    this.x = Std.parseInt(xml.get(a));
                case "y":
                    this.y = Std.parseInt(xml.get(a));
                case "width":
                    this.width = Std.parseInt(xml.get(a));
                case "height":
                    this.height = Std.parseInt(xml.get(a));
                case "opacity":
                    this.opacity = Std.parseFloat(xml.get(a));
                case "visible":
                    this.visible = xml.get(a) == "1" ? true : false;
                case "offsetX":
                    this.offsetX = Std.parseInt(xml.get(a));
                case "offsetY":
                    this.offsetY = Std.parseInt(xml.get(a));
            }
        }
    }

    private function get_id() {
        return this.id;
    }

    private function get_name() {
        return this.name;
    }

    private function get_x() {
        return this.x;
    }

    private function get_y() {
        return this.y;
    }

    private function get_width() {
        return this.width;
    }

    private function get_height() {
        return this.height;
    }

    private function get_opacity() {
        return this.opacity;
    }

    private function get_visible() {
        return this.visible;
    }

    private function get_offsetX() {
        return this.offsetX;
    }

    private function get_offsetY() {
        return this.offsetY;
    }
}
