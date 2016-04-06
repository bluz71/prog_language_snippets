require 'fileutils'

class MyFileStuff

  attr_reader :file_name

  def initialize(file_name)
    @file_name = file_name
  end

  def do_work
    File.open(file_name) do |f|
      lines = f.readlines
      total_length = lines.reduce(0) {|total, line| total + line.length}
      puts "Total length: #{total_length}."
    end
  end

end

f = MyFileStuff.new("person.rb")
FileUtils.cp("person.rb", "person.rb.ORIG")
f.do_work
