# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
    {
    name: "Il Soo Yang",
    number: 11,
    username: "ilsoo93",
    email: "ilsooiyang@gmail.com",
    password: "Korean93",
    password_confirmation: "Korean93",
    admin: true
  },
    {
    name: "Jiyeon Shin",
    number: 22,
    username: "jiyeon",
    email: "jiyeon@gmail.com",
    password: "jiyeon",
    password_confirmation: "jiyeon"
  },
    {
    name: "Sangho Lee",
    number: 33,
    username: "sangho",
    email: "sangho@gmail.com",
    password: "sangho",
    password_confirmation: "sangho"
  }
])

# Blog.create!([
# 	{
# 		user: User.find_by(name: "Il Soo Yang"),
# 		content:
#     %{
#     	안녕하세요! 저는 현재 Rails라는 프로그래밍 언어를 공부하고있습니다.
# 		지금까지 배운 모든 지식을 동원해 러캐 홈페이지를 한번 만들어봤습니다.    	
#     	아직 몇 달 안해서 보시다시피 여러모로 비약합니다. 앞으로 꾸준히
#     	보완해나갈 계획이니 조금만 기다려주시면 아마 나름 쓸모있는 웹사이트가
#     	되지 않을까 하는 희망을 조금 가져봅니다. 우선 "Meet The Users"로
#     	가셔서 자기 프로필 등록을 해주시면 감사하겠습니다. 그리고 프로필 사진은 
#     	"이름.포맷"으로 등록하시고 사진은 저에게 보내주시면 됩니다.
#     	RUSH
#     	AND
#     	CATCH
#     	!!!
#     }.squish
#   }
# ])















