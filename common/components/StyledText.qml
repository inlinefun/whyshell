import QtQuick

import qs.common

Text {
    id: root

    property bool bold: false
    property bool italic: false
    property bool underline: false
    property int size: 16

    color: Colors.on_surface
    font {
        bold: root.bold
        italic: root.italic
        pixelSize: root.size
        underline: root.underline
        family: Constants.fontFamily
    }
}
