import QtQuick

import qs.animations

Item {
    id: root
    implicitWidth: 240
    implicitHeight: 60
    visible: opacity > 0
    opacity: show ? 1 : 0
    property bool show: false
    Timer {
        id: timer
        interval: 2500
        running: true
        repeat: false
        onTriggered: root.show = false
    }
    function resetTimer() {
        root.show = true;
        timer.restart();
    }
    Behavior on opacity {
        AnimateNumber {}
    }
}
