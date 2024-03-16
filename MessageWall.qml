import QtQuick

Item {
    id: root;

    function postMessage(message) {
        const dict = {
            time: new Date().toISOString(),
            direction: MessageDelegate.MessageDirection.OutGoing,
            content: message.trim()
        };
        console.log(dict.time);
        testModel.append(dict);
    }

    ListView {
        anchors.fill: root;
        orientation: Qt.Vertical;
        spacing: 20;

        delegate: MessageDelegate {}
        model: MessageTestModel {id: testModel;}
    }
}
