import QtQuick 2.0
import Felgo 3.0

Item {
    id: root

    readonly property var dataSource: bookModel.dataSource

    property alias recentlyPlayedModel: recentlyPlayedModel
    property alias madeForYouModel: madeForYouModel // Sách có % giảm giá cao nhất
    property alias popularModel: popularModel       // tất cả sách
    property alias itBookModel: itBookModel
    property alias literalityBookModel: literalityBookModel
    property alias economicBookModel: economicBookModel
    property alias historyBookModel: historyBookModel
    property alias kidsBookModel: kidsBookModel
    property alias lawBookModel: lawBookModel
    property alias medicalBookModel: medicalBookModel

    JsonListModel {
        id: recentlyPlayedModel
    }

    JsonListModel {
        id: madeForYouModel

        function prepare() {
            madeForYouModel.remove(0, madeForYouModel.count)

            var max = 20
            var dataSourceCopy = root.dataSource
            dataSourceCopy = getTopDiscountBook(dataSourceCopy)

            // get first five randomized songs
            for (const entry of dataSourceCopy) {
                if (madeForYouModel.count >= max) {
                    return
                }

                if (entry.type === "Books") {
                    madeForYouModel.append(entry)
                }
            }
        }
    }

    // tất cả sách
    JsonListModel {
        id: popularModel

        function prepare() {
            popularModel.remove(0, popularModel.count)

            var max = 500
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)

            // get first five randomized songs
            for (const entry of dataSourceCopy) {
                if (popularModel.count >= max) {
                    return
                }

                if (entry.type === "Books") {
                    popularModel.append(entry)
                }
            }
        }
    }

    // sách CNTT
    JsonListModel {
        id: itBookModel

        function prepare() {
            itBookModel.remove(0, itBookModel.count)
            var max = 100
            // get all pop songs
            for (const entry of root.dataSource) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("CNTT")) {
                        itBookModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Văn học
    JsonListModel {
        id: literalityBookModel

        function prepare() {
            literalityBookModel.remove(0, literalityBookModel.count)

            // get all novel books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Vanhoc")){
                        literalityBookModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Kinh tế
    JsonListModel {
        id: economicBookModel

        function prepare() {
            economicBookModel.remove(0, economicBookModel.count)
            // get all economic books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Kinhte")){
                        economicBookModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Sức khỏe
    JsonListModel {
        id: medicalBookModel

        function prepare() {
            medicalBookModel.remove(0, medicalBookModel.count)
            // get all medical books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Suckhoe")){
                        medicalBookModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Pháp luật
    JsonListModel {
        id: lawBookModel

        function prepare() {
            lawBookModel.remove(0, lawBookModel.count)
            // get all law books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Phapluat")){
                        lawBookModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Thiếu nhi
    JsonListModel {
        id: kidsBookModel

        function prepare() {
            kidsBookModel.remove(0, kidsBookModel.count)
            // get all kids books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Thieunhi")){
                        kidsBookModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Lịch sử
    JsonListModel {
        id: historyBookModel

        function prepare() {
            historyBookModel.remove(0, historyBookModel.count)
            // get all history books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Lichsu")){
                        historyBookModel.append(entry)
                    }
                }
            }
        }
    }
    // Fisher-Yates (aka Knuth) Shuffle to get randomized array
    function shuffle(array) {
        var currentIndex = array.length, temporaryValue, randomIndex;

        // While there remain elements to shuffle...
        while (0 !== currentIndex) {

            // Pick a remaining element...
            randomIndex = Math.floor(Math.random() * currentIndex);
            currentIndex -= 1;

            // And swap it with the current element.
            temporaryValue = array[currentIndex];
            array[currentIndex] = array[randomIndex];
            array[randomIndex] = temporaryValue;
        }

        return array;
    }

    // Lấy 20 quyển sách giảm giá mạnh nhất

    function getTopDiscountBook(array){
        var length = array.length
        array.sort(function compareFunction(a, b){
            var temp1 = Math.floor(a.mainPrice) / Math.floor(a.originalPrice)
            var temp2 = Math.floor(b.mainPrice) / Math.floor(b.originalPrice)
            return temp1-temp2;
        });
        return array
    }

    Component.onCompleted: {
        madeForYouModel.prepare()
        popularModel.prepare()
        itBookModel.prepare()
        literalityBookModel.prepare()
        economicBookModel.prepare()
        historyBookModel.prepare()
        kidsBookModel.prepare()
        lawBookModel.prepare()
        medicalBookModel.prepare()
    }
}
