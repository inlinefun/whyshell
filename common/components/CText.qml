import QtQuick

Item {
    required property string text
    required property color color
    property int fontSize: 16
    property bool bold: false
    property bool italic: false
    id: root
    implicitHeight: text.implicitHeight
    implicitWidth: text.implicitWidth
    Text {
        anchors.centerIn: parent
        id: text
        text: root.text
        color: root.color
        font {
            family: "Inter"
            pixelSize: root.fontSize
            bold: root.bold
            italic: root.italic
        }
    }
}