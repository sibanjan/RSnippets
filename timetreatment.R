library(lubridate)

time_features = function(time, col_name)
{
					   numeric_time <- as.numeric(time)
                       day_of_week <- wday(time)
                       day_of_month <- mday(time)
                       day_of_quarter <- qday(time)
                       day_of_year <- yday(time)
                       hr_of_day <- hour(time)
                       min_of_day <- 60*hour(time) + minute(time)
                       sec_of_day <- 3600*hour(time) + 60*minute(time) + second(time)
                       week_of_year <- week(time)
                       month_of_year <- month(time)
                       year <- year(time)
	                   
	   	df_temp <- data.frame(numeric_time,
							 day_of_week,
							day_of_month,
							day_of_quarter,
							day_of_year,
							hr_of_day,
							min_of_day,
							sec_of_day,
							week_of_year,
							month_of_year,
							year
				)	
				
  time_df <- setNames(df_temp, paste(col_name, names(df_temp),sep="_"))	   
  return(time_df)
  
}