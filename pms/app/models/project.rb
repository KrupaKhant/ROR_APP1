class Project < ApplicationRecord
    enum status: [:inprogress, :planning, :completed]
end
