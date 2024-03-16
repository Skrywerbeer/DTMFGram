import QtQuick

Item {
    id: root;

    property alias contents: text.text;

    function clear() {
        text.text = "";
    }

    Rectangle {
        id: box;

        color: "black";
        border {width: 2; color: "magenta";}
        radius: 8;
        width: root.width;
        height: Math.min(text.contentHeight + 2*text.font.pixelSize, root.height);
        anchors.bottom: root.bottom;
        // clip: true;
        Flickable {
            anchors.fill: box;
            // leftMargin: 10;
            // topMargin: 10;
            contentWidth: text.contentWidth;
            contentHeight: text.contentHeight;
            flickableDirection: Flickable.VerticalFlick;

            TextEdit {
                id: text;
                padding: 10;
                width: root.width;
                height: root.height;
                color: "cyan";
                wrapMode: TextEdit.Wrap;
                selectByMouse: false;
                // TODO: follow cursor.
            }
        }
    }
}
