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
  def the_director
    
    directors_id = self.director_id
    matching_directors = Director.where({:id => directors_id})
    the_directors = matching_directors.at(0)
    
  return the_directors
  end
end
