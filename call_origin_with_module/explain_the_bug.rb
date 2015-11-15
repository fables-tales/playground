require "jrjackson"

m = Module.new do
  def self.a

  end
end

m_singleton_class = (class << m; self; end)
puts "Pure module singleton class owner #{m_singleton_class.instance_method(:a).owner.inspect}"
puts "Pure module singleton class owner equals singleton class? #{m_singleton_class.instance_method(:a).owner == m_singleton_class}"

j = JrJackson::Raw
j_singleton_class = (class << j; self; end)
puts "jrjackson singleton class owner #{j_singleton_class.instance_method(:generate).owner.inspect}"
puts "jrjackson singleton class owner equals singleton class? #{j_singleton_class.instance_method(:generate).owner == j_singleton_class}"
