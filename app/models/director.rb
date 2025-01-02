# == Schema Information
#
# Table name: directors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography 
   
    my_id = self.id

    match_movies = Movie.where({:director_id => my_id})

    return match_movies
    
  end
end
