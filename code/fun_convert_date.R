convert_date <- function(timestamp){
  date = timestamp
  class(date) = c('POSIXt','POSIXct')
  date = with_tz(date, "CET")
  date1 = data.frame(Y = format(date, "%Y"),
                     m = format(date, "%m"),
                     d = format(date, "%d"),
                     H = format(date, "%H"),
                     M = format(date, "%M"),
                     S = format(date, "%S"))
  date = cbind.data.frame(date, date1)
  return (date)
}