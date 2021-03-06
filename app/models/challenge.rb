class Challenge < ActiveRecord::Base
  has_one :badge
  has_many :games
  has_many :users, through: :games

  def self.solutions
    # square_solution = []
    # 8.times { square_solution << "rupert.(turn|move)(Left|Forward)\((\\s)?1?\);(\\n)?(\\s)?" }

    { 
      challenge1: "FS", # /\Arupert.moveForward\(\s?1?\);(\\n)?/
      challenge2: "FFS", # /\Arupert.moveForward\(\s?1?\);(\\n)?\s?rupert.moveForward\(\s?1?\);(\\n)?/
      challenge3: "FFS", # /\Arupert.moveForward\(2\);(\\n)?/
      challenge4: "LS", # /\Arupert.turnLeft\(\s?1?\);(\\n)?/,
      challenge5: "FLFLFLFLS", #Regexp.new(square_solution.join),
      challenge6: "FLFLFLFLS" # /for\(var i=1;i<4;i\+\+\){\\nrupert.moveForward(\(\));rupert.turnLeft(\(\));\\n}/
    }
  end

  def self.current_challenges(user)
    Challenge.all.map do |challenge|
      if challenge.users.include? user
        { game: user.games.find_by(challenge: challenge).attributes, challenge_id: challenge.id }
      else
        { user_id: user.id.to_i, challenge_id: challenge.id.to_i, game: Game.new.attributes }
      end
    end
  end

  def user_game(user)
    if self.users.pluck(:user_id).include? user.id
      return user.games.find_by(challenge_id: self.id)
    else
      return Game.new
    end
  end

  def game_status(user)
    self.user_game(user).complete_or_incomplete
  end
end
