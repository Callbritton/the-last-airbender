class Member
  attr_reader :name,
              :photo,
              :affiliation,
              :allies,
              :enemies

  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
  end
end
