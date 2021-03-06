import Felgo 3.0
import QtQuick 2.0


SimpleRow {
    id: root

    showDisclosure: false

    style: StyleSimpleRow {
        backgroundColor: Theme.listItem.backgroundColor
        selectedBackgroundColor: backgroundColor
        textColor: Theme.colors.textColor
        detailTextColor: Theme.colors.textColor
        selectedTextColor: Theme.colors.secondaryTextColor
        dividerHeight: 0
    }
    text: "Tài khoản: " + model.username
    textItem.width: dp(root.width/2)
    textItem.wrapMode: Text.Wrap
    textItem.elide: AppText.ElideRight
}
