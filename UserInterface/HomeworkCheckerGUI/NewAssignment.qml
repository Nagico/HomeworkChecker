import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Rectangle {
    id: newAssignment
    width: 922
    height: 640
    radius: 20
    clip: true
    color: "#ffffff"

    Timer {id: timer}
    function setTimeout(cb,delayTime) {
        timer.interval = delayTime;
        timer.repeat = false;
        timer.triggered.connect(cb);
        timer.start();
    }

    ListModel {
        id: classList
    }

    function show() {
        classList.clear()
        assignmentVC.classList.forEach(ele => {
                                           classList.append(ele)
                                       })
        newAssignmentPopup.open()
    }

    Text {
        id: element
        width: 128
        height: 32
        text: qsTr("布置作业")
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.Medium
        font.family: "Source Han Sans CN"
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 27
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 32
    }

    Rectangle {
        id: title
        width: 400
        height: 33
        anchors.leftMargin: 52
        anchors.top: element.bottom
        Text {
            id: element29
            width: 48
            height: 32
            text: qsTr("标题")
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 0
            font.pixelSize: 24
            font.weight: Font.Medium
            horizontalAlignment: Text.AlignHCenter
            anchors.left: parent.left
            font.family: "Source Han Sans CN"
        }

        TextField {
            id: titleField
            width: 280
            verticalAlignment: "AlignVCenter"
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 22
            horizontalAlignment: Text.AlignRight
            selectByMouse: true
            font.family: "Source Han Sans CN"
            placeholderText: qsTr("输入作业标题")
            maximumLength: 40
            background: Rectangle {
                anchors.fill: parent
                border.width: 0
            }
        }
        anchors.left: parent.left
        anchors.topMargin: 24
    }

    Rectangle {
        id: targetClass
        width: 400
        height: 33
        anchors.left: title.left
        anchors.top: title.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 24

        Text {
            id: element31
            height: 32
            text: qsTr("目标班级")
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 0
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 24
            font.weight: Font.Medium
            horizontalAlignment: Text.AlignLeft
            anchors.left: parent.left
            font.family: "Source Han Sans CN"
        }

        ComboBox {
            id: classSelector
            width: 250
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            font.pixelSize: 17
            font.family: "Source Han Sans CN"
            anchors.rightMargin: 0
            model: classList
        }

    }

    Rectangle {
        id: deadline
        x: 470
        width: 400
        height: 90
        anchors.right: parent.right
        anchors.top: title.top
        clip: true
        anchors.rightMargin: 52
        anchors.topMargin: 0
        Text {
            id: element33
            height: 32
            text: qsTr("截止时间")
            anchors.verticalCenter: parent.verticalCenter
            font.italic: false
            anchors.leftMargin: 0
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 24
            font.weight: Font.Medium
            horizontalAlignment: Text.AlignLeft
            anchors.left: parent.left
            font.family: "Source Han Sans CN"
        }
        DateRectangle {
            id: dateRectangle
            width: 280
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
        }
    }

    Rectangle {
        id: describtion
        x: 52
        y: 204
        width: 818
        height: 338
        color: "#ffffff"

        Text {
            id: element1
            x: 0
            width: 96
            text: qsTr("作业描述")
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            font.bold: false
            font.family: "Source Han Sans CN"
            font.weight: Font.Medium
            font.pixelSize: 24
        }

        Rectangle {
            id: rectangle2
            x: 116
            width: 702
            height: 329
            radius: 5
            clip: true

            TextArea {
                id: descArea
                text: qsTr("")
                anchors.fill: parent
                font.pixelSize: 17
                placeholderText: "输入作业描述"
                font.family: "Source Han Sans CN"
                selectByMouse: true
                background: Rectangle {
                    color: "#f5f5f5"
                    radius: 5
                    clip: true
                }
            }
        }
    }

    Rectangle {
        id: setBtn
        width: 218
        height: 56
        color: "#0098f7"
        radius: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 32

        Text {
            id: setBtnText
            color: "#ffffff"
            text: qsTr("创建")
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Medium
            font.family: "Source Han Sans CN"
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 24
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                if (classSelector.currentIndex > -1 && titleField.text != "") {
                    let date = dateRectangle.year + "-" + dateRectangle.month + "-" + dateRectangle.day + " 00:00:00"
                    let res = assignmentVC.newAssignment(classList.get(classSelector.currentIndex).id, titleField.text, descArea.text, date)
                    if (res) {
                        newAssignmentPopup.close()
                        taskPage.refresh()
                    } else {
                        setBtnText.text = "创建失败"
                        setTimeout(() => { setBtnText.text = "创建" }, 1500)
                    }
                }
            }
        }
    }

    Image {
        id: close
        width: 32
        height: 32
        anchors.rightMargin: 20
        anchors.topMargin: 20
        anchors.right: parent.right
        MouseArea {
            id: mouseArea17
            hoverEnabled: true
            anchors.fill: parent
            onClicked: newAssignmentPopup.close()
        }
        source: "images/close.png"
        anchors.top: parent.top
    }

}










