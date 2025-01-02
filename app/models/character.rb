# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def actor
    
    my_actor_foreign_key = self.actor_id
   
    matching_actors = actor.where({:id => my_actor_foreign_key})
   
    the_actors = matching_actors.at(0)
    
  return the_actors

  end
  
  def movie
    my_movie_foriengn_key  = self.movie_id

    match_movies = Movie.where({:id => my_movie_foriengn_key})

    the_movies = match_movies.at(0)

    return the_movies
  end
end
