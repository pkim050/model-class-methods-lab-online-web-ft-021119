class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    catamaran = Classification.find_by(name: "Catamaran")
    catamaran.boats.collect{|boat| boat.captain}
  end

  def self.sailors
    sailboat = Classification.find_by(name: "Sailboat")
    binding.pry
    sailboat.boats.collect{|boat| boat.captain}
  end

  def self.talented_seafarers

  end

  def self.non_sailors
    Captain.all - Captain.sailors
  end
end
