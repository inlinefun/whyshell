pragma Singleton

import Quickshell

Singleton {
    id: root
    readonly property bool slideout: _persistence.slideout
    PersistentProperties {
        id: _persistence
        reloadableId: "common.persistence"
        property bool slideout: false
    }
    function toggleSlideout() {
        _persistence.slideout = !_persistence.slideout;
    }
}
