# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  task_id    :integer
#  user_id    :integer
#  content    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Comment < ActiveRecord::Base
  attr_accessible :task_id, :user_id, :content

  belongs_to :user
  belongs_to :task
end
