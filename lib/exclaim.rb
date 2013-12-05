require "exclaim/version"

module Exclaim
  extend self

  def exclamations
    exclamations = {
      :agreement         => ["okay","right","sure","yeah","yes"],
      :alarm             => ["egad","hey","ohoh","yikes"],
      :amazement         => ["cool","gee","gee whiz","golly","goodness","holy cow","sick","wicked","wow"],
      :amusement         => ["haha"],
      :apology           => ["oops","oopsies","whoops"],
      :approval          => ["bravo","encore"],
      :calling_attention => ["ahem","hey","psst"],
      :comfort           => ["ooh"],
      :contentment       => ["mmmm","yum","yummy"],
      :disagreement      => ["fiddlesticks","no","n oway"],
      :disbelief         => ["huh?","what?"],
      :discomfort        => ["brrr"],
      :dislike           => ["yuck"],
      :dissatisfaction   => ["humph"],
      :enthusiasm        => ["gee","geewhiz","golly","great","super","wonderful"],
      :exasperation      => ["for goodness' sake","good grief"],
      :gratitude         => ["thanks"],
      :greeting          => ["ahoy","hello","hi"],
      :grief             => ["alas"],
      :hesitation        => ["er","hmm","uh","well"],
      :irritation        => ["dang","darn","drat","rats","shoot"],
      :joy               => ["ah","halleluia","bingo","eureka","hurray","oh","yahoo","yippee"],
      :pain              => ["ouch","ow"],
      :relief            => ["phew"],
      :surprise          => ["dear me","gee whiz","goodness me","holy cow","holy mackerel","holy moly"]
    }
    exclamations.default = []
    return exclamations
  end

  def from(*lists)
    exclamations = Exclaim.exclamations
    choices = lists.inject([]) { |result, list| result = result + exclamations[list] } 
    choices.sample.capitalize + "!"
  end

end

class String
  def joyfully
    exc = Exclaim.from :agreement, :amazement, :amusement, :comfort, :contentment, :enthusiasm, :joy, :relief, :surprise
    [exc, self].join(" ")
  end

  def sorrowfully
    exc = Exclaim.from :alarm, :apology, :disagreement, :disbelief, :dislike, :dissatisfaction, :exasperation, :grief, :hesitation, :irritation, :pain 
    [exc, self].join(" ")
  end
end
