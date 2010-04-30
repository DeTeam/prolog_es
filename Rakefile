require 'rubygems'
require 'rake'
require 'pathname'


def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end




desc "Build prolog programm"
task :build do

	files = [
		"domains.pro",
		"database.pro",
		"predicates.pro",
		"goal.pro",
		/clauses_*/
	]
	
	content = ""
	files.each do |fname|
		if String === fname
			content += get_file_as_string(fname) if File.exists?(fname)
		else
			p = Pathname(".")
			p.children(false).each do |path|
				content += get_file_as_string(path.basename) if path.basename.to_s =~ fname
			end
		end
	end
	
	filename = ARGV[1] if ARGV[1]
	filename ||= "main.pro"
	File.open(filename, "w") do |file|
		file << content
	end
end

desc "Checks weather all of the clauses has right predicates"
task :check do
  # TODO: make a task
end

task :default => :build
