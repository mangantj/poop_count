module PoopsHelper
  def display_poop_time(poop)
    out = ''
    out << content_tag("span", poop.time.strftime("%A, %d %b %Y"), class: "bg-gray-100 p-2 rounded-full dark:bg-gray-800 dark:border-gray-700")
    out << '@ '
    out << poop.time.strftime("%I:%M %p")
    out.html_safe
  end

  def display_poop_rating(stars)
    out = ''
    stars.times do 
      out << image_tag('poop.svg', class: "h-4 inline-block")
    end
    out.html_safe
  end
end
