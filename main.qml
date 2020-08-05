import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

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

        //        Component.onCompleted: {
        //            var item1 = tabItem.createObject(tabView)
        //            item1.text = "Home"
        //            item1.content = tabContent
        //            tabView.addTab(item1)

        //            var item2 = tabItem.createObject(tabView)
        //            item2.text = "Discover"
        //            item2.content = tabContent
        //            tabView.addTab(item2)

        //            var item3 = tabItem.createObject(tabView)
        //            item3.text = "Activity"
        //            item3.content = tabContent
        //            tabView.addTab(item3)
        //        }
    }
    Component {
        id: tabItem
        HxTabItem {}
    }
    Component {
        id: tabContent
        TextEdit {
            anchors.fill: parent
        }
    }
}
