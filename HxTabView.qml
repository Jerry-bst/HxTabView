import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Column {
    id: root
    default property alias content: tabBar.contentChildren

    function setOpacities(object) {
        for (var i = 0; i < stack.data.length; ++i) {
            if (stack.data[i] === object) {
                stack.children[i].opacity = 1
            } else {
                stack.children[i].opacity = 0
            }
        }
    }

    TabBar {
        id: tabBar
        width: parent.width
        height: 35

        onCurrentIndexChanged: {
            var content = tabBar.currentItem.content
            var object = tabBar.currentItem.object
            if (object === undefined) {
                object = content.createObject(stack)
                tabBar.currentItem.object = object
            }

            setOpacities(object)
        }
    }

    Item {
        id: stack
        width: parent.width
        height: parent.height - tabBar.height
    }

    function addTab(item) {
        tabBar.addItem(item)
    }
}
