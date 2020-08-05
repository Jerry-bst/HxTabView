# HxTabView
TabView for Qt Qml Quick2

Usage:

```qml
    HxTabView {
        id: tabView
        anchors.fill: parent

        HxTabItem {
            text: "Home"
            content: Rectangle {
                anchors.fill: parent
                color: "yellow"
            }
        }
        HxTabItem {
            text: "Discover"
            content: Rectangle {
                anchors.fill: parent
                color: "green"
            }
        }
        HxTabItem {
            text: "Activity"
            content: Rectangle {
                anchors.fill: parent
                color: "blue"
            }
        }
    }
```