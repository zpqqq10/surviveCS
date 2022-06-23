function formatTime(date) {
  var year = date.getFullYear()
  var month = date.getMonth() + 1
  var day = date.getDate()

  var hour = date.getHours()
  var minute = date.getMinutes()
  var second = date.getSeconds()


  return [year, month, day].map(formatNumber).join('/') + ' ' + [hour, minute, second].map(formatNumber).join(':')
}

function formatNumber(n) {
  n = n.toString()
  return n[1] ? n : '0' + n
}

function getDataKey() {
  return 'r9vUKWPac3fc0d61d7bdd6aa11aed71140f39c18ff0ee19'
}

module.exports = {
  formatTime: formatTime,
  getDataKey: getDataKey
}
