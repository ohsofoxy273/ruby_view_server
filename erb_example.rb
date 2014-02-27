require 'erb'

x = 42
my_array = %w[apples, bananas, grapes]
my_hash = {vegetable: :carrot, starch: :spaghetti}
class Person 
	def initialize(name, email)
		@name = name
		@email = email
	end

	def name
		@name
	end

	def email
		@email
	end
end
template = ERB.new "The value of x is: <%= x %>
<% matt = Person.new('matt', 'matt@example.com') %>
	My name is <%=matt.name %>
	My email is <%= matt.email %>
	These are some fruits:
	<% my_array.each do |fruit|  %>
		<%= fruit %>
	<% end %>
	And a vegetable:
	<%= my_hash[:vegetable] %>
"
puts template.result(binding)