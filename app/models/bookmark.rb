class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum: 6}
  validates :movie, uniqueness: {scope: :list}
#target whichever first, movi or list, doesnt matter which one goes first and which one in in scope
# scope just checks the combo of both of them
end

# validate-presence_of: title ==> old way / Rails3 - but still works
