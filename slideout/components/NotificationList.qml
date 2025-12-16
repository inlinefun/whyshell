pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Notifications

import qs.common
import qs.common.components
import qs.services

ColumnLayout {
    id: root
    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
    Layout.margins: Constants.margins
    spacing: Constants.spacing
    MouseArea {
        id: clearAll
        Layout.alignment: Qt.AlignRight
        implicitHeight: text.contentHeight + Constants.margins
        implicitWidth: text.contentWidth + Constants.margins
        onClicked: event => {
            NotificationService.clearAll();
            Persistence.toggleSlideout();
        }
        Rectangle {
            anchors {
                fill: parent
                centerIn: parent
            }
            radius: height / 6
            color: Colors.surface_container
            StyledText {
                id: text
                anchors {
                    centerIn: parent
                }
                text: "Clear all"
            }
        }
    }
    Repeater {
        id: repeater
        model: NotificationService.notifications
        delegate: NotificationItem {
            required property Notification modelData
            title: {
                if (modelData.summary.length == 0) {
                    return modelData.appName;
                } else {
                    return modelData.summary;
                }
            }
            body: {
                if (modelData.summary.length > 0) {
                    modelData.body;
                } else {
                    modelData.summary;
                }
            }
            icon: modelData.appIcon
            image: modelData.image
            implicitWidth: stupidItem.width
            onClose: () => {
                modelData.dismiss();
            }
        }
        visible: NotificationService.notifications.length > 0
    }
    Item {
        id: stupidItem
        Layout.fillWidth: true
    }
}
