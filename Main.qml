import QtQuick

Window {
    width: 400;
    height: 711;
    visible: true;
    title: qsTr("DTMFGram");

    Rectangle {
        id: background;
        anchors.fill: parent;

        gradient: Gradient {
            GradientStop {position: 0.0; color: "#222230";}
            GradientStop {position: 1.0; color: "#0f0f10";}
        }
    }

    MessageInput {
        id: msgInput;

        height: 0.2*parent.height;
        width: 0.6*parent.width;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 20;
        anchors.left: parent.left;
        anchors.leftMargin: 0.1*parent.width;
    }
    MessageWall {
        id: wall;
        height: 0.6*parent.height;
        width: parent.width;
        anchors.top: parent.top;
        anchors.topMargin: 20;
        anchors.horizontalCenter: parent.horizontalCenter;
    }
    PostMessageButton {
        height: 40;
        width: height;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 20;
        anchors.right: parent.right;
        anchors.rightMargin: 0.1*parent.width;

        onClicked: function() {
            if (msgInput.contents === "")
                return;
            wall.postMessage(msgInput.contents);
            msgInput.clear();
        }
    }
}
