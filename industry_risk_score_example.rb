require 'httparty'


host = 'http://api.hacksurfer.com/v0'
resource = '/industryRiskScores/yesterday'

puts
puts "Running example HTTP GET against HackSurfer Industry Risk Scores /yesterday resource."
response = HTTParty.get( host + resource )

puts
puts "Response from /yesterday resource : #{response}"

puts
puts "Found #{response.size} industry risk scores from yesterday."

response.each do |irs|
  str_bldr = "\n"
  str_bldr << "Industry : "
  str_bldr << irs['industry_description']
  str_bldr << "\n"
  str_bldr << "  id : "
  str_bldr << irs['industry_id'].to_s
  str_bldr << "\n"
  str_bldr << "  risk : "
  str_bldr << irs['industry_risk'].to_s
  str_bldr << "\n"
  str_bldr << "  gravity : "
  str_bldr << irs['industry_gravity'].to_s
  str_bldr << "\n"
  str_bldr << "  momentum : "
  str_bldr << irs['industry_momentum'].to_s
  str_bldr << "\n"
  puts str_bldr
end

puts
puts "Well that was fun!"
puts

