# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  due_date    :date
#  complete    :string(255)
#  user_id     :integer
#  priority_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
  attr_accessible :title, :description, :complete, :due_date
  belongs_to :user
  belongs_to :priority
end
