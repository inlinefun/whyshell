// Generated from SVG file svgs/volume_layer_0.svg
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
            PathSvg { path: "M 280 -360 L 153.33 -360 Q 139 -360 129.5 -369.5 Q 120 -379 120 -393.33 L 120 -566.67 Q 120 -581 129.5 -590.5 Q 139 -600 153.33 -600 L 280 -600 L 423.33 -743.33 Q 439 -759 459.5 -750.5 Q 480 -742 480 -719.67 L 480 -240.33 Q 480 -218 459.5 -209.5 Q 439 -201 423.33 -216.67 L 280 -360 M 413.33 -634 L 309.33 -533.33 L 186.67 -533.33 L 186.67 -426.67 L 309.33 -426.67 L 413.33 -325.33 L 413.33 -634 " }
        }
    }
}
