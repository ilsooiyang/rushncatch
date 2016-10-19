# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Player.create!([
	{
    name: "Il Soo Yang",
    number: 16,
    nationality: "Korea",
    profile_pic: ""
  },
	{
    name: "Sangho Lee",
    number: 35,
    nationality: "Korea",
    profile_pic: ""
  },
	{
    name: "Jon Fowler",
    number: 4,
    nationality: "USA",
    profile_pic: ""
  },
	{
    name: "Dina Lee",
    number: 37,
    nationality: "Korea",
    profile_pic: ""
  }
])

Blog.create!([
	{
		player: Player.find_by(name: "Il Soo Yang"),
		content:
    %{
    	안녕하세요! 저는 현재 Rails라는 프로그래밍 언어를 공부하고있습니다.
		지금까지 배운 모든 지식을 동원해 러캐 홈페이지를 한번 만들어봤습니다.    	
    	아직 몇 달 안해서 보시다시피 여러모로 비약합니다. 앞으로 꾸준히
    	보완해나갈 계획이니 조금만 기다려주시면 아마 나름 쓸모있는 웹사이트가
    	되지 않을까 하는 희망을 조금 가져봅니다. 우선 "Meet The Players"로
    	가셔서 자기 프로필 등록을 해주시면 감사하겠습니다. 그리고 프로필 사진은 
    	"이름.포맷"으로 등록하시고 사진은 저에게 보내주시면 됩니다.
    	RUSH
    	AND
    	CATCH
    	!!!
    }.squish
  },
	{
		player: Player.find_by(name: "Sangho Lee"),
		content:
    %{
    	Listen up!!! Due to the children's marathon 2016, 
    	we change the venue to Ichon. Press the thumb 
    	emoticon if you read this. 내일 평공에서 국제 어린이 
    	마라톤 대회가 있대요. 그래서 장소를 "이촌"으로 바꿉니다. 
    	내일 참석자는 봤다는 표시를 아래 엄지 이모티콘으로 해주세요.
    }.squish
  },
	{
		player: Player.find_by(name: "Dina Lee"),
		content:
    %{
    	Hi, y'all. As you might already know, the early 
    	bird registration fee of non PFDA members are 
    	changed to 3,200PHP from 4,000PHP. I'm going to 
    	send money after getting confirmation from the 
    	organizers. Let me know if anyone sitting on the 
    	fence wanna be in our journey to Manila by tomorrow noon!
    }.squish
  }
])















