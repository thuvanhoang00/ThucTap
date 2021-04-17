import Felgo 3.0
import QtQuick 2.0
import Qt.labs.settings 1.1 as Labs

Item {
  id: dataModel

  property alias loggedIn: settings.loggedIn
  property alias worklogModel: worklogModel
  property alias issuesModel: issuesModel

  // for issue filtering
  property alias filteredIssuesModel: filteredIssuesModel
  property string issuesSearchTerm

  property string totalTime: calculateTotalTime()

  property var issuesJsonData: [
    {"id":"11914","title":"Thông tin tài khoản", "imageSrc":"../../assets/icon-jira-issue.png"},
    {"id":"10095","title":"Lịch sử mua hàng","imageSrc":"../../assets/icon-jira-story.png"},
    {"id":"13123","title":"Quản lý đơn hàng", "imageSrc":"../../assets/icon-jira-issue.png"},
    {"id":"12124","title":"PlaceHolder", "imageSrc":"../../assets/icon-jira-issue.png"}
  ]

  property var statusHelper: [
    {text: "TODO", color: "#172B4D"},
    {text: "PLANNED FOR TOMORROW", color: "#00C7E5"},
    {text: "IN PROGRESS", color: "#FFAB00"},
    {text: "READY FOR REVIEW", color: "#36B37E"},
    {text: "DONE", color: "#2684FF"}
  ]

  JsonListModel {
    id: worklogModel
    source: dataModel.worklogsJsonData
    keyField: "id"
    fields: ["id", "title", "started", "tracking", "timeSpent", "timeSpentSeconds", "imageSrc", "description", "comment", "issueId"]
  }

  JsonListModel {
    id: issuesModel
    source: dataModel.issuesJsonData
    keyField: "id"
    fields: ["id", "title", "label", "status", "imageSrc"]
  }

  SortFilterProxyModel {
    id: filteredIssuesModel
    sourceModel: dataModel.issuesModel
    filters: RegExpFilter {
      roleName: "title"
      pattern: issuesSearchTerm
      caseSensitivity: Qt.CaseInsensitive
    }
  }

  Labs.Settings {
    id: settings

    property bool loggedIn: false
  }

  function login() {
    settings.loggedIn = true
  }

  function logout() {
    settings.loggedIn = false
  }

  function addWorklog(issue, startDate, timeSpent, comment) {
    var item = {
      id: (Math.random()*10000).toString(),
      title: issue.title,
      description: issue.label + " at " + Qt.formatTime(startDate, "hh:mm") + ": " + comment,
      imageSrc: issue.imageSrc,
      started: startDate,
      worktime: Qt.formatTime(startDate, "hh:ss"),
      timeSpent: timeSpent,
      timeSpentSeconds: getTimeSpentInSecondsFromString(timeSpent),
      tracking: "false",
      issueId: issue.id,
      comment: comment
    }

    worklogModel.insert(0, item)
  }

  function updateWorklog(issue, worklog, startDate, timeSpent, comment) {
    //console.debug("XXX " + worklog)
    //console.debug("XXX " + JSON.stringify(worklog))

    var item = {
      id: worklog.id,
      title: worklog.title,
      description: issue.label + " at " + Qt.formatTime(startDate, "hh:mm") + ": " + comment,
      imageSrc: worklog.imageSrc,
      started: startDate,
      worktime: Qt.formatTime(startDate, "hh:ss"),
      timeSpent: timeSpent,
      timeSpentSeconds: getTimeSpentInSecondsFromString(timeSpent),
      tracking: "false",
      issueId: worklog.issueId,
      comment: comment
    }

    worklogModel.set(worklogModel.indexOf("id", worklog.id), item)
    worklogModel.countChanged() // trigger a re-cacluclation of totalTime, as it only listens to a change of count by default
  }

  function getIssueForId(id) {
    return issuesModel.get(issuesModel.indexOf("id", id))
  }

  function removeWorklog(id) {
    worklogModel.remove(worklogModel.indexOf("id", id))
  }

  function getStatus(status) {
    return statusHelper[status].text
  }

  function getStatusColor(status) {
    return statusHelper[status].color
  }

  function formatDateTime(date) {
    return Qt.formatDateTime(date, "ddd d. MMM, yy hh:mm")
  }

  function formatDuration(seconds) {
    var durationString = Math.floor(seconds/60)%60 + "m"
    var hours = Math.floor(seconds/3600)
    var days = Math.floor(hours/8)
    if(hours > 0) durationString = hours%8 + "h " + durationString
    if(days > 0) durationString = days + "d " + durationString
    return durationString
  }

  function getTimeSpentInSecondsFromString(timeSpentString) {
    //console.debug(timeSpentString)
    var timeArray = timeSpentString.split(" ")
    //var timeArrayMinutes = timeSpentString.split("m")
    //console.debug(timeSpentString)
    //var timeArrayHours = timeSpentString.split("h")

    var timeInSeconds = 0
    for (var i=0; i<timeArray.length; i++) {
      var str
      if(timeArray[i].endsWith("m")) {
        str = timeArray[i].split("m")
        //console.debug("str:", JSON.stringify(str))
        timeInSeconds += str[0] * 60
      }
      else if(timeArray[i].endsWith("h")) {
        str = timeArray[i].split("h")
        //console.debug("str:", JSON.stringify(str))
        timeInSeconds += str[0] * 3600
      }
    }
    //console.debug(timeInSeconds)
    return timeInSeconds
  }

  function calculateTotalTime() {
    // this function updates automatically when count changes. a countChanged() is also triggered if a worklog is updated
    var sum = 0
    for(var i=0; i<worklogModel.count; i++) {
      sum += worklogModel.get(i).timeSpentSeconds
    }
    return formatDuration(sum)
  }
}
