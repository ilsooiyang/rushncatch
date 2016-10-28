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
    profile_pic: "ilsoo.jpeg"
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
    profile_pic: "dina.png"
  },
    {
    name: "Suejin Park",
    number: 52,
    nationality: "Korea",
    profile_pic: "suejin.jpeg"
  },
    {
    name: "Hoyong Choi",
    number: 91,
    nationality: "Korea",
    profile_pic: "hoyong.jpeg"
  },
    {
    name: "Josh Hwang",
    number: 48,
    nationality: "Korea",
    profile_pic: "josh.png"
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
    	안녕하세요. 제가 2015년 4월에 러캐 운영진에 합류했으니 18개월 정도 일했네요. 
        되게 긴 거 같은데 얼마 안 됐어요. 저는 이번 울산을 마지막으로 이제 토니 참석은 
        안하려고 합니다. 그에 따라 팀 발전을 위해 운영도 서서히 손에서 놓으려고 합니다. 
        토니를 제외하고 늘 주말 연습 때 있을 겁니다. 다만 앞으로는 전면에서 목소리를 
        내기보다는 조언자로서 참여하겠습니다. 이번 주 금요일에 새로운 러캐 운영진과 앞으로 
        방향에 대해 간단히 얘기하려고 자리를 만들었습니다. 해당되지 않으시는 분도 오시면 좋습니다.
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
  },
    {
        player: Player.find_by(name: "Sangho Lee"),
        content:
    %{
        10.1. Whenever play stops during a point for a time-out, 
        foul, violation, contested turnover, contested goal, 
        technical stoppage, injury stoppage, or discussion, 
        play must restart as quickly as possible with a check. 
        The check may only be delayed for the discussion of a call.
    }.squish
  },
    {
        player: Player.find_by(name: "Josh Hwang"),
        content:
    %{
        So, I'm finally where I wanna be
        And I can't feel my legs
        At the borders of reality
        And I'm tripping over the edge like lord
        I just died in your arms
        There's no better way to go home
        I just died in your arms
        And I thought you should know that
        You don't have to save me every time
        Just leave me in the dark
        You don't have to save me every time
        Let me lose my heart, my heart, my heart
        Now the waters are the open sea
        They're inviting me in
        Till the waves are crashing over me
        Then I forget how to swim
        Like lord
        I just died in your arms
        There's no better way to go home
        I just died in your arms
        And I thought you should know that
        You don't have to save me every time
        Just leave me in the dark
        You don't have to save me every time
        Let me lose my heart, my heart, my heart
        I'll never learn
        Tell me you love me
        Just wanting me
        Tell me you understand, oh
        I'll never learn
        Tell me you love me, oh
        You don't have to save me every time
        Just leave me in the dark
        You don't have to save me every time
        Let me lose my heart, my heart, my heart
    }.squish
  }
])















