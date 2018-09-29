# frozen_string_literal: true

namespace :ci do
  desc 'Runs Rubocop and RSpec tests'
  task run: :environment do
    %w[rubocop rspec].each do |gem_name|
      puts "****************** [Run: #{gem_name}] ******************\n".yellow
      system(gem_name)
      puts "\n"
    end
  end
end
