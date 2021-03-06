import QtQuick 2.0

Rectangle{
    anchors.fill: parent
    color: "transparent"

    property alias title_x: title.x
    //property alias subtitle_x: subtitle.x
    //property alias settings_mouseArea: settings_btn.mouseArea
    property alias budget_mouseArea: budget_btn.mouseArea
    property alias text: title.text
    property bool colorBlind_Checked: false

    onColorBlind_CheckedChanged: {
        if(colorBlind_Checked){
            title.color = "#424242";
            budget_btn.btnColor = "#757575";
        }
        else{
            title.color = "#1DE9B6";
            budget_btn.btnColor = "#FBC02D";
        }
    }

    Text{
        id: title
        color: "#1DE9B6"
        font.bold: true
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
        //x: (parent.width/2)-(width/2)
        x: title_x
        font.pointSize: 60
        text: "PiggyBank"
        font.family: "Grand Hotel"
    }
//    Text{
//        id: subtitle
//        color: "#51c460"
//        width: parent.width
//        horizontalAlignment: Text.AlignHCenter
//        anchors.top: title.bottom
//        anchors.topMargin: 10
//        //x: (parent.width/2)-(width/2)
//        x: subtitle_x
//        font.pointSize: 12
//        text: "A budgeting solution!"
//    }

    Image{
        id: splash_logo
        //fillMode: Image.Tile
        //anchors.fill: parent
        source: "/../../logo.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }


    MyButton{
        id: budget_btn
        text: "Let's Get Budgeting!"
        height: 1.5*parent.height/10
        width: 9*(parent.width/10)
        textColor: "white"
        fontSize: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
    }

//    MyButton{
//        id: settings_btn
//        text: "Settings"
//        height: parent.height/10
//        width: 9*(parent.width/10)
//        textColor: "white"
//        //color: "#51c460"
//        fontSize: 12
//        anchors.bottom: parent.bottom
//        anchors.bottomMargin: 10
//        anchors.horizontalCenter: parent.horizontalCenter
//    }
}


