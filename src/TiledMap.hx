import sys.io.File;
import Xml;

import Enums;

class TiledMap {
    public var version(get, null) : String;
    public var tiledVersion(get, null) : String;
    public var orientation(get, null) : Orientation;
    public var renderOrder(get, null) : RenderOrder;
    public var width(get, null) : Int;
    public var height(get, null) : Int;
    public var tileWidth(get, null) : Int;
    public var tileHeight(get, null) : Int;
    public var hexSideLength(get, null) : Int;
    public var staggerAxis(get, null) : StaggerAxis;
    public var staggerIndex(get, null) : StaggerIndex;
    public var backgroundColor(get, null) : String;
    public var nextLayerId(get, null) : Int;
    public var nextObjectId(get, null) : Int;

    public function new(tmxPath : String) {
        var xmlString = File.getContent(tmxPath);
        var xml = Xml.parse(xmlString);

        for (element in xml.elements()) {
            if (element.nodeName == "map") {
                xml = element;
                break;
            }
        }

        for (a in xml.attributes()) {
            switch (a) {
                case "version":
                    this.version = xml.get(a);
                case "tiledversion":
                    this.tiledVersion = xml.get(a);
                case "orientation":
                    this.orientation = this.parseOrientation(xml.get(a));
                case "renderorder":
                    this.renderOrder = this.parseRenderOrder(xml.get(a));
                case "width":
                    this.width = Std.parseInt(xml.get(a));
                case "height":
                    this.height = Std.parseInt(xml.get(a));
                case "tilewidth":
                    this.tileWidth = Std.parseInt(xml.get(a));
                case "tileheight":
                    this.tileHeight = Std.parseInt(xml.get(a));
                case "hexsidelength":
                    this.hexSideLength = Std.parseInt(xml.get(a));
                case "staggeraxis":
                    this.staggerAxis = this.parseStaggerAxis(xml.get(a));
                case "staggerindex":
                    this.staggerIndex = this.parseStaggerIndex(xml.get(a));
                case "backgroundcolor":
                    this.backgroundColor = xml.get(a);
                case "nextlayerid":
                    this.nextLayerId = Std.parseInt(xml.get(a));
                case "nextobjectid":
                    this.nextObjectId = Std.parseInt(xml.get(a));
            }
        }
    }

    private function parseOrientation(renderOrder : String) : Orientation {
        switch (renderOrder) {
            case "orthogonal":
                return Orientation.Orthogonal;
            case "isometric":
                return Orientation.Isometric;
            case "staggered":
                return Orientation.Staggered;
            case "hexagonal":
                return Orientation.Hexagonal;
            case _:
                return Orientation.Invalid;
        }
    }

    private function parseRenderOrder(orientation : String) : RenderOrder {
        switch (orientation) {
            case "right-down":
                return RenderOrder.RightDown;
            case "right-up":
                return RenderOrder.RightUp;
            case "left-down":
                return RenderOrder.LeftDown;
            case "left-up":
                return RenderOrder.LeftUp;
            case _:
                return RenderOrder.Invalid;
        }
    }

    private function parseStaggerAxis(staggerAxis : String) : StaggerAxis {
        switch (staggerAxis) {
            case "x":
                return StaggerAxis.X;
            case "y":
                return StaggerAxis.Y;
            case _:
                return StaggerAxis.Invalid;
        }
    }

    private function parseStaggerIndex(staggerIndex : String) : StaggerIndex {
        switch (staggerIndex) {
            case "even":
                return StaggerIndex.Even;
            case "odd":
                return StaggerIndex.Odd;
            case _:
                return StaggerIndex.Invalid;
        }
    }

    private function get_version() {
        return this.version;
    }

    private function get_tiledVersion() {
        return this.tiledVersion;
    }

    private function get_orientation() {
        return this.orientation;
    }

    private function get_renderOrder() {
        return this.renderOrder;
    }

    private function get_width() {
        return this.width;
    }

    private function get_height() {
        return this.height;
    }

    private function get_tileWidth() {
        return this.tileWidth;
    }

    private function get_tileHeight() {
        return this.tileHeight;
    }

    private function get_hexSideLength() {
        return this.hexSideLength;
    }

    private function get_staggerAxis() {
        return this.staggerAxis;
    }

    private function get_staggerIndex() {
        return this.staggerIndex;
    }

    private function get_backgroundColor() {
        return this.backgroundColor;
    }
    
    private function get_nextLayerId() {
        return this.nextLayerId;
    }

    private function get_nextObjectId() {
        return this.nextObjectId;
    }
}
