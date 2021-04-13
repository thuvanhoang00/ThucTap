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

  JsonListModel {
    id: popularModel

    function prepare() {
      popularModel.remove(0, popularModel.count)

      var max = 50
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

  JsonListModel {
    id: podcastsToTryModel

    function prepare() {
      podcastsToTryModel.remove(0, podcastsToTryModel.count)

      // get all podcasts
      for (const entry of root.dataSource) {
        if (entry.type === "Books") {
          podcastsToTryModel.append(entry)
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
  }
}
