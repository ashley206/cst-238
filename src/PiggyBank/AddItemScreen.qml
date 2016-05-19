import QtQuick 2.0
import QtQuick.Controls 1.5
import Qt.labs.settings 1.0

Rectangle{
    id: add_item_wrapper
    anchors.fill: parent
    color: "transparent"
    property alias back_mouseArea: add_item_title.back_btn_mouseArea

    MyTitleBar{
        id: add_item_title
        title: "Add Item"
        back_visible: true
    }

//    ComboBox{
//        id: category_box
//        editable: false
//        model: ListModel{
//            id: currency_model


//            ListElement{ text: "USD"; }
//            ListElement{ text: "GBP"; }
//            ListElement{ text: "EUR"; }
//        }

//        // On accepted, change setting?
//        width: 2*(parent.width/3)
//        anchors.top: add_item_title.bottom
//        anchors.topMargin: 10
//        anchors.horizontalCenter: parent.horizontalCenter
//    }
}