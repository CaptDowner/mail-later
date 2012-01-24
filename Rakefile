# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "mail-later"
  gem.homepage = "http://github.com/CaptDowner/mail-later"
  gem.license = "MIT"
  gem.summary = %Q{Under development: Ruby program to compose and schedule email for a future delivery.}
  gem.description = %Q{Under development: Expands on the mail gem from Mikel Lindsaar. Prompts for all header information, a future date and time and, along with the content of the email and a signature, and stores a file in a configurable directory (defaults to ~/later). When run, it first checks the content of the ~/later directory and sends out email that is scheduled for any time before the current date and time.}
  gem.email = "captdowner@comcast.net"
  gem.authors = ["CaptDowner"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "mail-later #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
