class Userskill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  
  

  def skill_name
    skill.try(:name)
  end

  def skill_name=(name)
    self.skill = Skill.find_or_create_by_name(name) if name.present?
  end


end
