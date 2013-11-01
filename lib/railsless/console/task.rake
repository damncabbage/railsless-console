# Does the environment task exist? (eg. emulating rails)
unless Rake::Task.task_defined? 'environment'
  task :environment
end

task :console => :environment do
  # Attempt to load Pry
  pry = begin
    require 'pry'
    TOPLEVEL_BINDING.pry
  rescue LoadError
    nil
  end

  # Fall back to IRB
  unless pry
    require 'irb'
    ARGV.clear # ... otherwise all script parameters get passed to IRB.
    IRB.start
  end
end

# Shortcut
unless Rake::Task.task_defined? 'c'
  task :c => :console
end
