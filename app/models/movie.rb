# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
 
  def director
    
    director_id = self.director_id
   
    matching_directors = Director.where({:id => director_id})
   
    the_directors = matching_directors.at(0)
    
    return the_directors
  end
  def characters
    
    my_id = self.id
   
    matching_characters = Character.where({:movie_id => my_id})
   
  return matching_characters
  end
end
