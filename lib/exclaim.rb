require "exclaim/version"

module Exclaim
  extend self

  def exclamations
    exclamations = {
      :agreement         => ["okay","right","sure","yeah","yes","yes way"],
      :alarm             => ["egad","hey","ohoh","yikes"],
      :amazement         => ["cool","gee","gee whiz","golly","goodness","holy cow","sick","wicked","wow","wowzers"],
      :amusement         => ["haha","teehee","hehe"],
      :apology           => ["oops","oopsies","whoops","sorry"],
      :approval          => ["bravo","encore","well done"],
      :calling_attention => ["ahem","hey","psst","oi"],
      :comfort           => ["ooh","better luck next time"],
      :contentment       => ["mmmm","yum","yummy","ahh"],
      :disagreement      => ["fiddlesticks","no","no way"],
      :disbelief         => ["huh?","what?","you're kidding"],
      :discomfort        => ["brrr"],
      :dislike           => ["yuck"],
      :dissatisfaction   => ["humph","harrumph"],
      :enthusiasm        => ["gee","geewhiz","golly","great","super","wonderful"],
      :exasperation      => ["for goodness' sake","good grief","stone the flaming crows"],
      :gratitude         => ["thanks","cheers","ta","ta duck"],
      :greeting          => ["ahoy","hello","hi","yo","s'up","ping"],
      :grief             => ["alas","oh, the shame"],
      :hesitation        => ["er","hmm","uh","well","..."],
      :irritation        => ["dang","darn","drat","rats","shoot","blast","fire and brimstone"],
      :joy               => ["ah","halleluia","bingo","eureka","hurray","oh","yahoo","yippee","hurrah","huzzar"],
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
