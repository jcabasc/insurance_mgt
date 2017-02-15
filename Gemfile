source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'active_model_serializers', '~> 0.10.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.1'
gem 'resque'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

gem 'rails_12factor', group: :production

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails', '4.8.0'
  gem 'faker', '~> 1.6', '>= 1.6.3'
  gem 'foreman'
end

group :development do
  gem 'letter_opener'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
  gem 'shoulda-matchers', '~> 3.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
