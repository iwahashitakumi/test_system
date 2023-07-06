class Student < ApplicationRecord
  scope :get_by_grade, ->(grade) {
where("grade like ?", "%#{grade}%")
}
validates :name, presence: true
validates :email, uniqueness: true, presence: true
validates :student_code, length: { in: 5..6 }, presence: true
validate :minmax_grade

def minmax_grade
  if grade > 3 or grade < 1
    errors.add(:grade, "学年は設定できない")
  end
end
end
