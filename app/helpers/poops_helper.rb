module PoopsHelper
  def display_poop_time(poop)
    [poop.time.strftime("%A, %d %b %Y"), "@", poop.time.strftime("%I:%M %p")].join(" ")
  end
end
