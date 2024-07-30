class OperatigSystem < Product
    validates :os_type, presence: true, inclusion: { in: %w(Windows Mac Linux), message: "%{value} is not a valid OS type" }
end
