import QtQuick

Item {
    id: root;

    enum MessageDirection {
        InComing = 0,
        OutGoing
    }

    required property date time;
    required property int direction;
    required property string content;

    width: root.ListView.view.width;
    height: childrenRect.height;

    Rectangle {
        id: box;

        width: 0.8*root.width;
        height: contentText.contentHeight + contentText.font.pixelSize;
        radius: 8;
        anchors.left: direction === MessageDelegate.MessageDirection.InComing ?
                               root.left : undefined;
        anchors.leftMargin: anchors.left ? 10 : 0;
        anchors.right: direction === MessageDelegate.MessageDirection.OutGoing ?
                                root.right : undefined;
        anchors.rightMargin: anchors.right ? 10 : 0;
        color: "#80888888";
        border.color: root.direction === MessageDelegate.MessageDirection.InComing ?
                          "cyan" : "magenta"
    }
    Text {
        id: contentText;

        anchors.centerIn: box;
        width: box.width;
        color: box.border.color;
        leftPadding: 10;
        rightPadding: 10;

        wrapMode: Text.WordWrap;
        text: root.content;
    }
    Text {
        id: timeText;

        anchors.top: box.bottom;
        anchors.topMargin: 5;
        anchors.right: box.right;
        anchors.rightMargin: 10;
        color: box.border.color;
        text: time.toDateString() === new Date().toDateString() ?
                  time.toTimeString() : time.toDateString() + " " + time.toTimeString();
    }

}
