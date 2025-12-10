pragma Singleton

import Quickshell
import Quickshell.Services.SystemTray

Singleton {
    id: root
    readonly property var items: SystemTray.items.values
    function getFormattedIcon(icon: string): string {
        if (icon.includes("spotify")) {
            return Quickshell.iconPath("/opt/spotify/icons/spotify-linux-24.png");
        }
        return icon;
    }
}
