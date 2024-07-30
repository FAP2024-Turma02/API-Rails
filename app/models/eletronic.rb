class Eletronic < Product
    validates :voltage, inclusion: { in: [true, false] }

    def voltage_value
      voltage ? 220 : 110
    end
end
