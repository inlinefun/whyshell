// Generated from SVG file svgs/volume_layer_2.svg
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
            PathSvg { path: "M 773.33 -481 Q 773.33 -571.33 723.67 -644.17 Q 674 -717 592.67 -751 Q 579.67 -756.67 574 -768.83 Q 568.33 -781 573.33 -793.33 Q 578.67 -806.67 592.17 -812 Q 605.67 -817.33 619.67 -811.67 Q 719.33 -770 779.67 -680.5 Q 840 -591 840 -481 Q 840 -371 779.67 -281.5 Q 719.33 -192 619.67 -150.33 Q 605.67 -144.67 592.17 -150 Q 578.67 -155.33 573.33 -168.67 Q 568.33 -181 574 -193.17 Q 579.67 -205.33 592.67 -211 Q 674 -245 723.67 -317.83 Q 773.33 -390.67 773.33 -481 " }
        }
    }
}
