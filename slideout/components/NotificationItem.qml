import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets

import qs.animations
import qs.common
import qs.common.components

MouseArea {
    id: root
    required property string title
    required property string body
    required property string icon
    required property string image
    signal close

    implicitHeight: 80
    acceptedButtons: Qt.LeftButton | Qt.RightButton
    hoverEnabled: true
    onClicked: event => {
        if (event.button == Qt.LeftButton) {
            root.close();
        }
    }
    ClippingRectangle {
        id: container
        implicitWidth: root.width
        implicitHeight: root.height
        color: root.containsMouse ? Colors.surface_container_high : Colors.surface_container
        radius: Constants.radius / 2
        RowLayout {
            id: row
            anchors {
                fill: parent
                margins: Constants.margins
            }
            IconImage {
                id: image
                asynchronous: true
                source: {
                    if (root.image.length == 0) {
                        return root.icon;
                    }
                    return root.image;
                }
                implicitSize: row.height
                mipmap: true
                visible: (root.icon.length > 0 || root.image.length > 0) && status == Image.Ready
            }
            ColumnLayout {
                id: column
                Layout.fillWidth: true
                Layout.fillHeight: true
                StyledText {
                    Layout.fillWidth: true
                    text: root.title
                    bold: true
                    size: 16
                    wordwrap: true
                }
                StyledText {
                    Layout.fillWidth: true
                    text: root.body
                    size: 14
                    maxLines: 2
                    wordwrap: true
                }
            }
        }
        Behavior on color {
            AnimateColor {}
        }
    }
}
