import QtQuick

ListModel {
    id: root;

    ListElement {
        time: "2020-01-01 10:10";
        direction: MessageDelegate.MessageDirection.InComing;
        content: "Hello, World!"
    }
    ListElement {
        time: "2020-01-01 10:10";
        direction: MessageDelegate.MessageDirection.OutGoing;
        content: "Dave! This is ridiculous. You can't eat apple snow the whole day";
    }
    ListElement {
        time: "2020-01-02 10:10";
        direction: MessageDelegate.MessageDirection.OutGoing;
        content: "I mean it! You have to stop eating!";
    }
    ListElement {
        time: "2020-01-03 04:20";
        direction: MessageDelegate.MessageDirection.InComing;
        content: "I refuse. I want to keep eating. I have to keep eating! Nothing can stop me! Not even you, Alan."
    }

}
