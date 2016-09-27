class Skill < ActiveRecord::Base
  belongs_to :users

  has_attached_file :resume_one, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :resume_one, content_type: /\Aimage\/.*\Z/
  has_attached_file :resume_two, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :resume_two, content_type: /\Aimage\/.*\Z/
  has_attached_file :resume_three, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :resume_three, content_type: /\Aimage\/.*\Z/
end
