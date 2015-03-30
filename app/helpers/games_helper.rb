module GamesHelper
    
    def timeline_style(game: , team_id:)
        (game.is_home?(team_id))? "timeline" : "timeline-inverted"
    end
    
end
