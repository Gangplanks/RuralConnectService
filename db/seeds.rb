# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'madhumitha', password: 'ruralconnect', age: '23', income: '-', community: 'FC', state: 'TamilNadu', occupation: 'Students')

Category.create(name: 'Minorities', image_name: 'minorities')
Category.create(name: 'SC/ST', image_name: 'user_groups')
Category.create(name: 'BC/MBC', image_name: 'user_groups')
Category.create(name: 'Journalists', image_name: 'journalists')
Category.create(name: 'Physically Challenged [Differently abled]', image_name: 'physically_challenged')
Category.create(name: 'Unemployed', image_name: 'single_user')
Category.create(name: 'Senior Citizen', image_name: 'senior_citizen')
Category.create(name: 'Students', image_name: 'students')
Category.create(name: 'Manufacturers', image_name: 'manufacturing')
Category.create(name: 'National Cadet Crops', image_name: 'ncc')
Category.create(name: 'Handloom Weavers', image_name: 'weavers')
Category.create(name: 'Teacher', image_name: 'techers')
Category.create(name: 'Reelers', image_name: 'reelers')
Category.create(name: 'Widow', image_name: 'single_user')
Category.create(name: 'Farmers', image_name: 'farmers')
Category.create(name: 'Government Employees', image_name: 'user_groups')
Category.create(name: 'Pregnant Women', image_name: 'pregnant_women')
Category.create(name: 'Citizen', image_name: 'single_user')