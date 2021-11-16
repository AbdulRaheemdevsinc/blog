desc 'Print something five times.'
task :something do
  5.times { puts 'something' }
end

desc 'drop and create db task.'

task 'drop_and_create' => ['db:drop', 'db:create'] do
end

task :import do
  puts 'Importing data...'
  Dir.chdir(Rails.root.join('data')) { ruby 'load-data.rb' }
end

task create_examples: 'load_database' do
  # ...
end

namespace :backup do
  task :create do
    # ...
  end
  task :list do
    # ...
  end
  task :restore do
    # ...
  end
end
