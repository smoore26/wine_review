module WinesHelper
  def formatted_time(time)
    time.strftime("%B %d, %Y at %l:%M %p")
  end

  def format_average_ratings(wine)
   average = wine.average_rating
   if average
   pluralize(number_with_precision(average, precision: 1), 'star')
   else
   'No Log Entries'
   end
  end
end