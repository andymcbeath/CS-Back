namespace :assets do
  desc "Precompile assets"
  task :precompile => [:set_rails_env] do
    Rake::Task["assets:clean"].invoke
    Rake::Task["assets:precompile:nondigest"].invoke
    Rake::Task["assets:precompile:digest"].invoke
  end
end
