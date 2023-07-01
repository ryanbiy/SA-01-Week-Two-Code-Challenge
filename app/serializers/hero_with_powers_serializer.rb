class HeroWithPowersSerializer < ActiveModel::Serializer
    attributes :id, :name, :super_name, :powers
  
    def powers
      object.powers.map do |power|
        PowerSerializer.new(power)
      end
    end
  end
  