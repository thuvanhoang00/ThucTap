import Felgo 3.0
import QtQuick 2.0

Page {
    title: "Square Grid"

    Grid {
        id: grid
        // setting the width of the grid is important if we want to reference it in the children
        // in this example the grid has the width of the page
        width: parent.width
        columns: 2

        Repeater {
            // the repeater creates an item for each element in the model
            model: [IconType.heart, IconType.circle, IconType.cogs, IconType.list]

            // this is the item that is created by the repeater
            Rectangle {
                border.width: px(1)
                border.color: Theme.colors.tintColor
                // we set the width to the parent width (grid is the parent) divided by the number of colums our grid has (2 in our case)
                // the repeater is not an actual item, it is just used to repeat this rectangle, so parent actually refers to the grid here
                width: parent.width / grid.columns
                // to make it square, the height equals the width
                height: width

                Icon {
                    // the modelData is the current element of the model, so IconType.heart for the first element and so on
                    icon: modelData
                    // the icon is centered in the rectangle
                    anchors.centerIn: parent
                    color: Theme.colors.tintColor
                    size: sp(40)
                }
            }
        }
    }
}
