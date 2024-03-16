import QtQuick

Item {
    id: root;

    signal clicked;

    Image {
        anchors.fill: root;
        source: "qrc:///assets/icons/broadcast.svg";
    }
    MouseArea {
        anchors.fill: root;
        onClicked: function(event) {
            root.clicked();
        }
    }
}
