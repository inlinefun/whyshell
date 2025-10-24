// Generated from SVG file svgs/volume_layer_1.svg
import QtQuick
import QtQuick.Shapes

Item {
    required property int iconSize
    required property color color
    id: __qt_toplevel
    implicitWidth: __qt_toplevel.iconSize
    implicitHeight: __qt_toplevel.iconSize
    transform: [
        Translate { x: 0; y: 960 },
        Scale { xScale: __qt_toplevel.width / 960; yScale: __qt_toplevel.height / 960 }
    ]
    Shape {
        preferredRendererType: Shape.CurveRenderer
        objectName: "svg1"
        id: _qt_node0
        ShapePath {
            id: _qt_shapePath_0
            objectName: "svg_path:path1"
            strokeColor: "transparent"
            fillColor: __qt_toplevel.color
            fillRule: ShapePath.WindingFill
            pathHints: ShapePath.PathQuadratic | ShapePath.PathNonIntersecting | ShapePath.PathNonOverlappingControlPointTriangles
            PathSvg { path: "M 660 -480 Q 660 -431.33 636.33 -390.83 Q 612.67 -350.33 571 -327.67 Q 562.33 -323 554.5 -328.17 Q 546.67 -333.33 546.67 -342.67 L 546.67 -618.67 Q 546.67 -628 554.5 -633.17 Q 562.33 -638.33 571 -633.67 Q 612.67 -610.67 636.33 -569.33 Q 660 -528 660 -480 " }
        }
    }
}
