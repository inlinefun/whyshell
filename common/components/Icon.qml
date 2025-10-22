import QtQuick

Item {
    required property string icon
    required property color color
    property int size: 16
    property bool bold: false
    property bool italic: false
    id: root
    implicitHeight: text.implicitHeight
    implicitWidth: text.implicitWidth
    Text {
        id: text
        anchors.centerIn: parent
        text: root.icon
        color: root.color
        font {
            family: "JetbrainsMonoNL Nerd Font Propo"
            pixelSize: root.size
            bold: root.bold
            italic: root.italic
        }
    }
}
