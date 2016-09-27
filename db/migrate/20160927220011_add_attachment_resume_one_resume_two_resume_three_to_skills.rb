class AddAttachmentResumeOneResumeTwoResumeThreeToSkills < ActiveRecord::Migration
  def self.up
    change_table :skills do |t|

      t.attachment :resume_one

      t.attachment :resume_two

      t.attachment :resume_three

    end
  end

  def self.down

    remove_attachment :skills, :resume_one

    remove_attachment :skills, :resume_two

    remove_attachment :skills, :resume_three

  end
end
