require 'rake/testtask'
require 'dotenv/tasks'

Rake::TestTask.new do |t|
	t.pattern = "spec/*_spec.rb"
end

desc "do something with env variables"
task :something_awesome => :dotenv do
	puts "I gots ENV now!"
end