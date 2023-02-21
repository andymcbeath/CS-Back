namespace :assets do
  desc "Precompile assets"
  task :precompile => :environment do
    Rake::Task["assets:precompile:nondigest"].invoke
    Rake::Task["assets:precompile:digest"].invoke
  end
end
