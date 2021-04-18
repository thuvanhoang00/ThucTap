import QtQuick 2.0
import Felgo 3.0

Item {
    id: root

    readonly property var dataSource: bookModel.dataSource

    property alias recentlyPlayedModel: recentlyPlayedModel
    property alias madeForYouModel: madeForYouModel
    property alias popularModel: popularModel
    property alias popSongsModel: popSongsModel
    property alias podcastsToTryModel: podcastsToTryModel
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

            var max = 100
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)

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
        id: popSongsModel

        function prepare() {
            popSongsModel.remove(0, popSongsModel.count)
            var max = 100
            // get all pop songs
            for (const entry of root.dataSource) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("CNTT")) {
                        popSongsModel.append(entry)
                    }
                }
            }
        }
    }

    // sách Văn học
    JsonListModel {
        id: podcastsToTryModel

        function prepare() {
            podcastsToTryModel.remove(0, podcastsToTryModel.count)

            // get all novel books
            var dataSourceCopy = root.dataSource
            dataSourceCopy = shuffle(dataSourceCopy)
            for (const entry of dataSourceCopy) {
                if (entry.type === "Books" && entry.tags !== undefined) {
                    if (entry.tags.includes("Vanhoc")){
                        podcastsToTryModel.append(entry)
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

    Component.onCompleted: {
        madeForYouModel.prepare()
        popularModel.prepare()
        popSongsModel.prepare()
        podcastsToTryModel.prepare()
        economicBookModel.prepare()
        historyBookModel.prepare()
        kidsBookModel.prepare()
        lawBookModel.prepare()
        medicalBookModel.prepare()
    }
}
