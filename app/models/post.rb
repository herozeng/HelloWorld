class Post < ActiveRecord::Base
	
	validates :title, :content, presence: true
	validates :title, length: { minimum: 2 ,too_short: "must have at least %{count} words"}
	validates :title, uniqueness: { message: "should happen once per year" }
	
	
end
