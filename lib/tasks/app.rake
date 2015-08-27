
namespace :app do

desc "Populate the database with development data"

task :populate => :environment do
[
	{:first_name => "Darth", :last_name => "Vader"},
	{:first_name => "Commander", :last_name => "Praji"},
	{:first_name => "Biggs", :last_name => "Darklighter"},
	{:first_name   => "Luke", :last_name => "Skywalker"},
	{:first_name => "Han", :last_name => "Solo"}
].each do |attributes|
	Person.where(first_name: attributes[:first_name], last_name: attributes[:last_name]).first_or_create(attributes)
end

end
end