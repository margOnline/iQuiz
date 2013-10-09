namespace :db do 
  desc "Fill database with sample data" 
  task populate: :environment do 
    @queries = [
      ['Canberra is the capital of Australia', true],
      ['Madrid is the capital of Spain', true],
      ['Milan is the capital of Italy', false],
      ['Florida is the capital of America', false],
      ['Ontario is the capital of Canada', false],
      ['Seoul is the capital of South Korea', false],
      ['Tokyo is the capital of Japan', true],
      ['Panama City is the capital of Panama', true],
      ['Cardiff is the capital of Wales', true],
      ['Moscow is the capital of Russia', true]
    ]
    10.times do |n|
      puts "[DEBUG] creating question #{n+1} of 10"
      Question.create(query: @queries[n][0], solution: @queries[n][1])
    end
  end
end   