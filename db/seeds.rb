AuthenticationProvider.create!(name: 'kakao')
AuthenticationProvider.create!(name: 'twitter')
AuthenticationProvider.create!(name: 'google_oauth2')
AuthenticationProvider.create!(name: 'apple')
AuthenticationProvider.create!(name: 'facebook')
AuthenticationProvider.create!(name: 'naver')
AuthenticationProvider.create!(name: 'github')

Admin.create!(:id => 1, :email => 'theloss@jedaeroweb.co.kr', :name => '잠자는사자', :password => 'a12345', :password_confirmation => 'a12345')

User.create!(:id => 1, :email => 'user1@jedaeroweb.co.kr', :name => '잠자는사자', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }])
User.create!(:id => 2, :email => 'user2@jedaeroweb.co.kr', :name => '김의인', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) }])
User.create!(:id => 3, :email => 'company1@jedaeroweb.co.kr', :name => '임민형', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) }])
User.create!(:id => 4, :email => 'company2@jedaeroweb.co.kr', :name => '김종근', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) }])
User.create!(:id => 5, :email => 'company3@jedaeroweb.co.kr', :name => '알콜중독자', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) }])
User.create!(:id => 6, :email => 'company4@jedaeroweb.co.kr', :name => '호갱갱갱', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) }])
User.create!(:id => 7, :email => 'company5@jedaeroweb.co.kr', :name => '회사5', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) }])
User.create!(:id => 8, :email => 'company6@jedaeroweb.co.kr', :name => '회사6', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) }])
User.create!(:id => 9, :email => 'company7@jedaeroweb.co.kr', :name => '회사7', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) }])
User.create!(:id => 10, :email => 'company8@jedaeroweb.co.kr', :name => '회사8', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) }])
User.create!(:id => 11, :email => 'company9@jedaeroweb.co.kr', :name => '회사9', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) }])


Role.create!(id: 1, title: '전체관리자', role: 'super_administrator')
Role.create!(id: 2, title: '관리자', role: 'administrator')
Role.create!(id: 3, title: '보조관리자', role: 'sub_administrator')
Role.create!(id: 4, title: '운영자', role: 'operator')
Role.create!(id: 5, title: '보조운영자', role: 'sub_operator')
Role.create!(id: 6, title: '알바생', role: 'reader')

RoleAdmin.create!(role_id: 1, admin_id: 1)


ProgramLanguage.create!(id: 1,:title=>'공통',:link=>nil,:enable=>1)
ProgramLanguage.create!(id: 2,:title=>'ruby',:link=>'https://www.ruby-lang.org/',:enable=>1)
ProgramLanguage.create!(id: 3,:title=>'PHP',:link=>'https://www.php.net/',:enable=>1)
ProgramLanguage.create!(id: 4,:title=>'javascript',:link=>nil,:enable=>1)
ProgramLanguage.create!(id: 5,:title=>'python',:link=>'https://www.python.org/',:enable=>1)
ProgramLanguage.create!(id: 6,:title=>'java',:link=>'https://www.java.com/',:enable=>1)
ProgramLanguage.create!(id: 7,:title=>'CSS',:link=>nil,:enable=>1)

ProgramCategory.create!(id: 1, program_language_id: 2,:title=>'Ruby on Rails',:link=>'http://rubyonrails.org/')
ProgramCategory.create!(id: 2, program_language_id: 2,:title=>'Sinatra',:link=>'http://rubyonrails.org/')
ProgramCategory.create!(id: 3, program_language_id: 3,:title=>'laravel',:link=>'https://laravel.com/')
ProgramCategory.create!(id: 4, program_language_id: 3,:title=>'Wordpress',:link=>'https://wordpress.org/')
ProgramCategory.create!(id: 5, program_language_id: 3,:title=>'Mediawiki',:link=>'https://www.mediawiki.org/wiki/MediaWiki')
ProgramCategory.create!(id: 6, program_language_id: 3,:title=>'Codeigniter',:link=>'https://codeigniter.com/')
ProgramCategory.create!(id: 7, program_language_id: 3,:title=>'Pure PHP')
ProgramCategory.create!(id: 8, program_language_id: 4,:title=>'Boostrap',:link=>'http://getbootstrap.com/',:main=>false)
ProgramCategory.create!(id: 9, program_language_id: 4,:title=>'Jquery',:link=>'https://jquery.com/',:main=>false)


AddressLevel.create!(id: 1, title: '광역시,도')
AddressLevel.create!(id: 2, title: '시,군')
AddressLevel.create!(id: 3, title: '구')
AddressLevel.create!(id: 4, title: '동,면')

Address.create!(id: 1, parent_address_id: 0, title: '서울특별시', address_level_id: 1)
Address.create!(id: 2, parent_address_id: 0, title: '경기도', address_level_id: 1)
Address.create!(id: 3, parent_address_id: 0, title: '강원도', address_level_id: 1)
Address.create!(id: 4, parent_address_id: 0, title: '충청북도', address_level_id: 1)
Address.create!(id: 5, parent_address_id: 0, title: '충청남도', address_level_id: 1)
Address.create!(id: 6, parent_address_id: 0, title: '전라북도', address_level_id: 1)
Address.create!(id: 7, parent_address_id: 0, title: '전라남도', address_level_id: 1)
Address.create!(id: 8, parent_address_id: 0, title: '경상북도', address_level_id: 1)
Address.create!(id: 9, parent_address_id: 0, title: '경상남도', address_level_id: 1)
Address.create!(id: 10, parent_address_id: 0, title: '제주도특별자치도', address_level_id: 1)
Address.create!(id: 11, parent_address_id: 0, title: '부산광역시', address_level_id: 1)
Address.create!(id: 12, parent_address_id: 0, title: '인천광역시', address_level_id: 1)
Address.create!(id: 13, parent_address_id: 0, title: '대구광역시', address_level_id: 1)
Address.create!(id: 14, parent_address_id: 0, title: '광주광역시', address_level_id: 1)
Address.create!(id: 15, parent_address_id: 0, title: '대전광역시', address_level_id: 1)
Address.create!(id: 16, parent_address_id: 0, title: '울산광역시', address_level_id: 1)
Address.create!(id: 17, parent_address_id: 0, title: '세종특별자치시', address_level_id: 1)

Address.create!(parent_address_id: 1, title: '종로구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '용산구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '성동구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '광진구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '동대문구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '중랑구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '성북구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강북구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '도봉구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '노원구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '은평구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '서대문구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '마포구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '양천구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강서구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '구로구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '금천구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '영등포구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '동작구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '광악구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '서초구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강남구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '송파구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강동구', address_level_id: 2)



Address.create!(parent_address_id: 2, title: '수원시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '성남시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '의정부시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '안양시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '부천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '광명시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '동두천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '평택시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '안산시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '고양시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '과천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '구리시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '남양주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '오산시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '시흥시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '군포시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '의왕시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '하남시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '용인시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '파주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '이천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '김포시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '화성시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '광주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '양주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '포천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '여주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '연천군', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '가평군', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '양평군', address_level_id: 2)


Address.create!(parent_address_id: 3, title: '춘천시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '원주시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '강릉시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '동해시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '태백시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '속초시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '삼척시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '홍천군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '횡성군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '영월군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '평창군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '정선군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '철원군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '화천군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '양구군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '인제군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '고성군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '영양군', address_level_id: 2)


Address.create!(parent_address_id: 4, title: '청주시', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '충주시', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '제천시', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '보은군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '옥천군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '영동군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '증평군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '진천군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '괴산군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '음성군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '단양군', address_level_id: 2)


Address.create!(parent_address_id: 5, title: '천안시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '공주시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '보령시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '아산시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '서산시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '논산시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '계룡시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '당진시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '금산군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '부여군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '서천군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '청양군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '홍성군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '예산군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '태안군', address_level_id: 2)


Address.create!(parent_address_id: 6, title: '전주시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '군산시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '익산시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '정음시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '남원시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '김제시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '완주군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '진안군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '무주군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '장수군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '임실군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '순창군 ', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '고창군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '부안군 ', address_level_id: 2)


Address.create!(parent_address_id: 7, title: '목포시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '여수시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '순천시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '나주시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '광양시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '담양군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '곡성군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '구례군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '고흥군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '보성군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '화순군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '장흥군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '강진군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '해남군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '염암군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '무안군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '함평군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '영광군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '장성군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '완도군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '진도군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '신안군', address_level_id: 2)


Address.create!(parent_address_id: 8, title: '포항시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '경주시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '김천시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '안동시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '구미시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영주시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영천시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '상주시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '문경시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '경산시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '군위군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '의성군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '청송군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영양군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영덕군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '청도군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '고령군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '성주군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '칠곡군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '예천군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '봉화군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '울진군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '울릉군', address_level_id: 2)

Address.create!(parent_address_id: 9, title: '창원시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '진주시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '통영시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '사천시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '김해시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '밀양시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '거제시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '양산시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '의령군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '함안군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '창녕군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '고성군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '남해군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '하동군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '산청군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '함양군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '거창군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '합천군', address_level_id: 2)

Address.create!(parent_address_id: 10, title: '제주시', address_level_id: 2)
Address.create!(parent_address_id: 10, title: '서귀포시', address_level_id: 2)


Address.create!(parent_address_id: 11, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '영도구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '부산진구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '동래구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '북구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '강서구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '햐운대구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '사하구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '금정구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '연제구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '수영구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '사상구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '기장군', address_level_id: 2)

Address.create!(parent_address_id: 12, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '미추홀구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '연수구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '남동구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '부평구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '계양구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '강화군', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '옹진군', address_level_id: 2)

Address.create!(parent_address_id: 13, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '북구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '수성구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '달서구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '달성군', address_level_id: 2)

Address.create!(parent_address_id: 14, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '북구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '광산구', address_level_id: 2)

Address.create!(parent_address_id: 15, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '유성구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '대덕구', address_level_id: 2)

Address.create!(parent_address_id: 16, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '뷱구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '울주군', address_level_id: 2)

Address.create!(parent_address_id: 17, title: '세종특별자치시', address_level_id: 2)

Notice.create!(id: 1, title: 'Rails 커뮤니티 홈페이지가 생겼어요',content: 'Rails 커뮤니티 홈페이지가 개장했습니다.  많은 관심 부탁드려요')
Notice.create!(id: 2, title: '레일즈 강좌 시작',content: '레일즈 강좌를 시작합니다. 초보자도 쉽게 레일즈를 배워보아요')
Notice.create!(id: 3, title: '홈페이지 업데이트',content: '계속적인 업데이트를 시행해고 있습니다.
다들 더욱더많은 참여 부탁드려요~
')


BlogCategory.create!(id: 1, title: '설치,설정')
BlogCategory.create!(id: 2, title: '제작')
BlogCategory.create!(id: 3, title: '테스트')
BlogCategory.create!(id: 4, title: '배포')

Blog.create!(id: 1, user_id:1, program_language_id: 2, blog_category_id:1, title: '루비 설치 방법',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png"))}, content: '
루비 온 레일즈 프로그램을 설치하려면 당연히 루비 부터 설치해야 됩니다.
          이름부터가 루비 온 레일즈로 루비로 만들어진 프레임워크입니다.
          루비를 설치하기 위해서는 여러 선택지가 존재하며 각 OS마다 약간의 차이가 있습니다.

  리눅스나 맥이라면 해당 패키지관리자(apt,brew)를 이용하여 설치하면 되겠지만 이상하게 애네들도 버전이 낮아서 이걸로는 영 못 쓰겠더라고요
  그러고 보면 ruby뿐 아니라 nodejs도 그런데 nodejs도 기본 패키지 대신 nvm을 써서 설치하는 것처럼
  ruby도 rvm이 있습니다.(요즘엔 renv가 더 좋은듯?)

  이렇듯 기본 패키지 관리자로도 설치할수 있지만 버전이 낮아서 많은 문제가 있는만큼
  renv,rvm 을 이용한 설치방법을 설명해드리겠습니다.

')
Blog.create!(id: 2, user_id:1, program_language_id: 2, blog_category_id:1, title: 'gem,bundler', content: '
rubygem(Gem)이란 루비에서 지원하는 패키지 시스템으로 명령어만 입력하면 인터넷에서 자동으로 프로그램을 받아서 설치를 해줍니다.

명령어는 gem으로

인스톨시에는 gem install 패키지명
업데이트시에는 gem update 패키지명
삭제시에는 gem uninstall 패키지명


레일즈에서는 이를 통해서 의존성 프로그램들을 설치하는데 예를 들면
gem install rails를 실행하면 레일즈가 설치됩니다.
그후에 "rails new app이름"  명령어를 실행하면 레일즈 app이 해당 이름으로 설치됩니다.


일일히 귀찮게 gem설치를 할수 없기에 한번에 해결해주는 프로그램이 있는데 bundler라는 프로그램입니다.
bundler는 gem의 의존성관리를 위한 프로그램으로
<code>gem install bundler</code>
이렇게 입력하고 실행하여 설치합니다.

이렇게 설치하면 bundle이란 명령어가 생성되며
<code>bundle install</code>을 통해 한번에 여러 gem 프로그램들을 설치할수 있습니다.
최상위 폴더를 보면 Gemfile파일이 있는데 여기에 필요프로그램을 기술하면 알아서 설치를 해주는 것입니다.

bundle install, bundle update 명령어를  통해 일괄적으로 처리가 가능합니다.
이를 통해 Rails App에 필요한 프로그램들을  설치하여 배치시 의존성 문제를 쉽게 처리할수 있습니다.',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 3, user_id:1, program_language_id: 2, blog_category_id:1, title: '루비온레일즈 소개,설치 방법', content: '
웹개발을 하다보면 손이 가는게 한두가지가 아닙니다.
처음에는 재미로 배우면서 한다지만  계속적인 많고 반복적인 작업이 개발자를 더욱 괴롭게했습니다.
이렇게 반복적인 웹개발 패턴으로 괴로워하는 개발자를 구원하는 광명이 비추었으니
그 이름은 "Ruby On Rails"  줄여서 RoR, Rails(레일즈) 라고 합니다.

웹개발의 이런 어려움을 통합으로 해결해주는 "프레임워크"입니다.
프레임워크라는 생소한 단어가 나왔습니다만
건축으로 치면  뼈대를 제공한다고 보면 되겠습니다.
우리는 이 뼈대위에서 작업을하면 그 뼈대를 만들기 위해 들이는 노력(고통?)을 들이지 않아도 되어
보다 편하고 빠르게 결과물을 얻을수 있는것이지요
물론 레일즈 전에도 이런 프레임워크가 없던것은 아닙니다.
하지만 레일즈 처럼 깔끔하고 통합적으로 처리해주던 프레임워크는 그전까지 없었습니다.

레일즈가 나온후에 반응 역시 폭발적으로
그동안 그리 관심받지 못했던 Ruby언어의 관심과 사용이 급증했으며(레일즈는 Ruby란 언어로 제작되었고 Ruby를 사용하여 계속적으로 작업하게됩니다)
이에 영감을 받은 다른 언어버젼 프레임워크들도 등장하게 됩니다.
PHP버젼 Rails라 할수있는 CakePHP가 대표적이며 Laravel도 비슷한점이 너무 많음을 볼수 있습니다.
그밖에 그 뒤로 나온 프레임워크들은 거의 다 영향을 받았지요
어떤가요? Ruby On Rails를 더욱더 배워보고 싶지 않은가요?

그럼 지금 바로 시작해봐요

공식 홈페이지는 여기고요
https://rubyonrails.org/


윈도우나 맥에서에서 레일즈를 설치하기
여기를 이용하면 한번에 설치가 되어서 정말 편리 합니다.

https://www.railsinstaller.org


리눅스에서 레일즈 설치하기
리눅스에서 레일즈  설치하기는 정말  쉽습니다.
단지 루비와 젬만 설치되어 있으면  됩니다.

gem install rails


이렇게 해서 레일즈가  설치되었다면   IDE설치를 하면  되겠습니다.
물론 레일즈는 IDE 없이도 기본  텍스트  편집기로도 아무 문제 없이  사용할수 있지만  그래도  있으면 훨씬  편리하겠지요

https://code.visualstudio.com/
대세 에디터인 VSCode를 다운받고에서 ruby,rails 플러그인 다운받아 설피하면 됩니다.

 IDE가  설치되었다면 New Rail Project를 실행하면 새로운 레일즈  프로젝트가  생성되고요
 그냥 명렁어 줄에서 하려면 새로운  프로젝트를 만들 디렉토리로 이동후

 rails new  프로젝트명
 을 치시면  됩니다.

 이렇게  프로젝트 생성후에는 IDE에서 server 관련 탭으로 가면 해당  프로젝트 서버를  실행시킬수 있으며
 명렁어로는 ./bin/rails server를  실행시키면 개발 서버가 실행되므로 이를 이용하여 개발을 해 나가면  됩니다.

 기본적으로 서버는 3000번 포트를 이용하게 되어있으므로(물론 바꾸면 바꾼대로)  서버 실행후 웹 브라우져로
 http://localhost:3000  로 접속되면 레일즈 설치가 완료  된것입니다.
' ,blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 4, user_id:1, program_language_id: 2, blog_category_id:1, title: 'rake migrate',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) }, content: 'rake는 레일즈의 여러 필요작업들을 처리해주는 명령어로 어느 책에서 봤던것 처럼 든든한 조수를 데리고 작업하는 것과 같은 느낌입니다.
rake(조수) 이것(옵션) 처리해줘  하는 식으로 명령어를 주면 레일즈를 제작, 배치 하면서 처리해야 하는 일들을 편리하게 처리해 줍니다.

migrate 지금은 다른 프레임워크들도 사용하여 얼마간 익숙한 개념일것이라고 생각됩니다.
레일즈의 마이그레이션은 역시 든든한 조수인 rake에 의해 처리 됩니다.
레일즈의 경우 DB접속 정보는 /config/database.yml에서 관리되며
SQLite의 경우 이런식으로 구성되어 있습니다.

# SQLite. Versions 3.8.0 and up are supported.
#   gem install sqlite3
#
#   Ensure the SQLite 3 gem is defined in your Gemfile
#   gem \'sqlite3\'
#
default: &default
  adapter: sqlite3
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  database: db/development.sqlite3

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: db/test.sqlite3

production:
  <<: *default
  database: db/production.sqlite3


이렇게 접속설정이 문제 없이되어있는 경우 rake를 통해서
DB 생성,삭제, 마이그레이션(table생성,수정), 시작데이터 입력 등을 처리할수 있습니다.

rake db:drop  => rake DB 삭제해줘
rake db:create  => rake, DB 만들어줘
rake db:migrate => rake, 마이그레션 해줘
rake db:seed    => rake, 시작 데이터 입력 해줘

이런 식으로 rake를 이용하여 DB생성, 마이그레이션, 시작데이터 입력을 처리할 수 있습니다.
시작데이터 입력(rake db:seed)은 /db/seed.rb에서 관리되며 모델을 이용하여 초기 데이터 생성을 처리합니다.
')
Blog.create!(id: 5, user_id:1, program_language_id: 2, blog_category_id:1, title: 'npm, yarn',content: 'npm, yarn은 bundler와 마찬가지로 패키지 설치를 도와주는 프로그램입니다.
bundler와 거의 유사하며 bundler가 ruby에서 사용되는것이라면 npm,yarn은 nodejs에서 사용됩니다.',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 6, user_id:1, program_language_id: 2, blog_category_id:1, title: '개발서버 설치설정', content: '개발서버는 특별히 설치, 설정 할것이 없습니다.
서버 시작은 프로젝트 폴더로 이동
<code>$cd 프로젝트폴더명</code>

후에 ./bin/rails server
<code>$ ./bin/rails server</code>
를 실행해주면 실행 됩니다.


안되는 경우는 보통
1. bundler install이 되지 않았거나
2. npm, yarn  install이 되지 않았거나
3. 마이그레이션이 있다면 마이그레션이 맞게 진행 되어야 하며
4. 다른 곳에서 이미 포트를 사용하고 있는 경우입니다.

그러므로 서버가 잘 돌아가게 설정해주려면 이미 배운 것처럼


bundler install
<code>$bundler install</code>


npm 또는 yarn  install
<code>$npm install</code>
<code>$yarn install</code>


마이그레이션
<code>$rake db:create</code>
<code>$rake db:migrate</code>
<code>$rake db:seed</code>

실행 한 후에 서버 시작을 실행해주면 됩니다.',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 7, user_id:1, program_language_id: 2, blog_category_id:1, title: '실서버 설치설정', content: '실서버에서 설치 설정은
보통 passenger패키지를 통해서 이루어 지며
해당 내용 여기서 설명하기 보다 이곳을 참고해주세요',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 8, user_id:1, program_language_id: 2, blog_category_id:4, title: 'git', content: 'git은 프로그램 버전관리 도구로 알려져 있으며 프로그램개발에서 빠질수 없는 너무나 중요한 것입니다.',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 9, user_id:1, program_language_id: 2, blog_category_id:4, title: '카피스트라노(capistrano)를 이용한 자동 배포',
             content: "
웹프로그래머를 괴롭히는 또 하나의 과정은 배포(deploy) 입니다.
배포 역시 처음엔 처음이라 어려워서 힘들지만 익숙해진 후에도 반복적일이 프로그래머의 정신을 황폐하게 만드는 작업이였지요.
배포의 과정은 보통 이런 식이였지요
로칼에서 작업한것을 FTP나 버전관리시스템에 올리고 서버에 접속하여 서버에서 필요한 수 많은 여러 작업을 해주고 재시작을 해야겠지요
레일즈의 경우는 보통 배치시 서버에서 bundle update, rake db:migrate, rake assets:precompile등의 작업을 해주어야 되지요
이런 반복적인일은 자동화의  필요성이 절실해집니다.
그래서 만들어진 프로그램 카피스트라노(capistrano)를 소개합니다.
이제 카피스트라노를 이용하면 저런 과정 필요없이 단 한줄의 명령어
cap productioin deploy

만 치면 배치는 완료됩니다.

카피스트라노 역시 Gem으로 설치하면 됩니다.
최상위 Gemfile 아래 내용을 입력하고

group :development, :test do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.0.0'
end

bundle update를 쳐주면 카피스트라노가 설치됩니다.
잘 설치되었다면 cap 명령어가 생겼을겁니다.
cap install 을 쳐주면 내 레일즈 어플에 설정 파일이 생성됩니다.

우선 최상위에 Capfile은 사용할 기능 모듈 로드에 관한 내용인데

require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'

보통은 이 세가지만 있으면 될 듯합니다.
주석을 제거해주세요~
다음은 config/deploy.rb의 내용을 봐야하는데
여기가 거의 모든 설정을 처리하는 파일입니다.
참 많은 내용이 있습니다만 역시 보통 사용시 필요한 부분만 보겠습니다.

set :application, '어플리케이션 이름'
set :repo_url, '레포지터리 경로'
set :branch, '브랜치명'
set :deploy_to, '서버에 배치될 경로'
# set :scm, :git
# set :format, :pretty
# set :log_level, :debug
set :pty, true
set :linked_files, %w{config/database.yml .env}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets public/assets}


처음은 어플리케이션이름, 레포지터리 경로, 브랜치명, 서버에 배치될 경로를 적고
밑에 linked_files, linked_dirs에는 공유될 파일, 디렉토리를 적습니다.
보통 버젼이 바뀌어도 안 바뀔 파일, 디렉토리, 임시파일등을 적어주면 됩니다.

config/deploy 디렉토리에는
production.rb  staging.rb 두 파일이 있는데
그 안에는 접속에 필요한 사용자명, 서버명등을 넣으면 됩니다.

이렇게 준비를 마치면  이제 카피스트라노를 이용한 배치 설정을 마친것입니다.
이제 단순한 반복작업은 카피스트라노에게 맡기십시오

cap production deploy
단 한줄만 치면 배치가 끝납니다.

혹시나 한번에 안되거나 더 많은 내용을 알고 싶다면
카피스트라노 홈페이지(https://www.capistranorb.com)를 방문해보세요

이제 배포시 반복작업을 없애주는 카피스트라노로 한번에 자동배포 하세요
 ",blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })

QuestionCategory.create!(id: 1, title: '서버 설치,설정')
QuestionCategory.create!(id: 2, title: '프레임워크, 패키지 설치, 설정')
QuestionCategory.create!(id: 3, title: '함수,기능, Controller')
QuestionCategory.create!(id: 4, title: 'HTML, CSS, Javascript')
QuestionCategory.create!(id: 5, title: 'Database,Model,ORM')
QuestionCategory.create!(id: 6, title: '기타')

Question.create!(id: 1, program_language_id: 2, question_category_id: 1, user_id: 1, title: 'capistrano deploy sshkit 애러', content: 'capistrano deploy하는데
sshkit rescue in block (2 levels) : Exception while executing as deploy@deploy_server: fingerprint does not match xxx in execute SSHKit::Runner::ExecuteError
애러 나오는면서 중지 되는데 어떻게 해결해야될까요?')
Question.create!(id: 2, program_language_id: 2, question_category_id: 3, user_id: 2, title: 'GET으로 되어있는 삭제링크 처리', content: '
게시판 페이지 작성 중, 글을 삭제할떄에
location.href="delete_ok.php?no="+<?=$list_row[\'no\']?>;
이런식으로 delete문이 있는 페이지에 get형식으로 값을 전달해서 삭제처리를 하게끔 해놓았는데요,,
아무리 봐도 저렇게 두면은 너무 위험할거같은데, 어떻게 수정 또는 변경을 해야할까요?
')
Answer.create!(user_id:1, question_id: 2, content: '
아주 않좋고 위험한것 맞습니다.
원칙적으로 삭제,입력은 POST로만 되게 해야됩니다.
그래야 좋은 품질이고요

jquery $.post만을 써도 되지만 이런 경우 javascript작동 안할 시 작동 안하므로

그것보다는 form을 만들고(method="post")  form.submit 이벤트에서 가로채서 이 때 $.post로 보내고 return false해주면
javascript가 되던 안되던 완벽히 작동하는 좋은 품질을 만들 수 있습니다.  <= 이것을 한번에 다 해주는 jquery plugin도 있습니다

http://jquery.malsup.com/form/
')

Question.create!(id: 3, program_language_id: 2, question_category_id: 3, user_id: 3, title: 'php DOM, innerHTML같은 기능 없나요? ', content: '
PHP DOM으로 HTML문서의 특정 엘러먼트 안에 다른 문서의 내용을 넣고 싶습니다.
즉 자바스크립트의 innerHTML같은 기능이 필요합니다.

그런데 innerHTML은 고사하고 2개의 문서를 불러와서 넣는것도 안되는군요
아예 경고 메세지로 다른 파일의 엘러먼트 삽입은 안된다고 하네요

PHP로는 두개의 문서를 DOM으로 합칠 방법이 없는건가요??
이런 문제 해결했던분 가르쳐 주세요



PS. getElementById도 안되서 죽을 고생했었는데 알고보니 PHP에서는 DTD가 포함된 문서만 getElementById 기능이 된다는군요, 경고 메세지도 안뜨고... 망할. 근데 이번 거는 해결방법이 있을지 막막하네요,  원래 안되는건지.........
')
Answer.create!(user_id:1, question_id: 3, content: '$dom->createDocumentFragment() 이렇게 처리하면 됩니다.')


Question.create!(id: 4, program_language_id: 2, question_category_id: 3, user_id: 4, title: '날짜표시 예쁘게 하려면 어떻게 하나요?', content: '날짜 나오게 하면 2024-01-01 이런식으로 나오는데
이거 다른 방법으로 예쁘게 나오게 만들수 있나요?')


Answer.create!(user_id:1, question_id: 1, content: 'deploy.rb에 "set :ssh_options, verify_host_key: :never" 추가해주시면 넘어갑니다.')

Answer.create!(user_id:1, question_id: 4, content: '날짜 나오게 하려면 <%= I18n.l article.created_at.to_date, :format => :long %>
이런식으로 하면 2023년 12월 30일 (토)이런 날짜로 나오고
<%= time_ago_in_words article.created_at.to_date %> 로 하면 몇일전, 몇주전, 몇년전  이런식으로 표시 되며 해당 표시 방법은
config/locales/ko.yml 에서 설정하면 됩니다.
예)
  datetime:
    distance_in_words:
      about_x_hours:
        one: 약 한 시간
        other: 약 %{count}시간
      about_x_months:
        one: 약 한 달
        other: 약 %{count}달
      about_x_years:
        one: 약 일 년
        other: 약 %{count}년
      almost_x_years:
        one: 일 년 이하
        other: ! %{count}년 이하
      half_a_minute: 30초
')


Question.create!(id: 5, program_language_id: 1, question_category_id: 3, user_id: 2, title: 'HTML화면을 PDF로 전환, 다운받게하기', content: 'HTML화면을 PDF로 출력하여 다운로드 받게 하고 싶은데 어떻게 해야 될까요??')

Answer.create!(user_id:1, question_id: 5, content: 'HTML PDF로 만들기 wkhtmltopdf가 제일 좋습니다.
해당 프로그램 프로그램별로 확장프로그램도 있어서 골라 쓰면 됩니다~
')

Question.create!(id: 6, program_language_id: 1, question_category_id: 3, user_id: 2, title: 'PHP 서버 실행하려면 어떻게 해야되나요?', content: 'PHP개발을 하려고 서버를 돌려야 되는데 어떻게 해야될까요?')
Answer.create!( user_id:1, question_id: 6, content: '
개발시 PHP서버 설정없이 서버 실행하는 법은 간단해요
개발시에는 굳이 웹서버 돌릴 필요없고요

터미널에서
"php -S 아이피:포트번호" 입력하면 됩니다.
')


Question.create!(id: 7, program_language_id: 1, question_category_id: 5, user_id: 2, title: 'unique FK관련 처리시 방법 문의드립니다.', content: '
  unique한 FK가 있을때 처리하는 방법 문의드립니다.
  SELECT하고 해당 키가 있으면  INSERT하고  없으면 UPDATE하는 코드를 짜려고 하는데 저렇게 처리하면될까요??
')
Answer.create!( user_id:1, question_id: 7, content: '
   SELECT으로 존재 검사하고 INSERT, UPDATE하는 코드 다 버리세요 <= 저런 코드를 쓰는 프로그래머는 "나는 하수다" 인증하는것입니다.
   아예 그렇게 쓰라고 만든게 ON DUPLICATE KEY UPDATE 입니다.
   보통은 필요없지만
   ON DUPLICAKET KEY UPDATE 처리의 리턴값으로도 INSERT되었는지 UPDATE되었는지 판단 할 수 있습니다.
   혹시 필요하면 리턴값을 이용하면 됩니다.
')


Question.create!(id: 8, program_language_id: 1, question_category_id: 6, user_id: 2, title: '기간별 예약 프로그램을 처리하려고 하는데요', content: '
몇일 부터 몇일 까지 이렇게 선택하는데
만약 2024 - 5 - 8 부터 2024 - 5 - 12 일 이라고 할때
9일 10일 11일 은 예약을 못하잖아요 그럼 데이터베이스도 이 중간날자를 따로 구해서 데이터베이스에 예약정보를 넣고
예약을 막으려고하는데 보통 이렇게 처리하는게 좋을까요??
다른분들은 어떤식으로 처리하는지 궁금해서요
')
Answer.create!( user_id:1, question_id: 8, content: '
그렇게 처리하면 안됩니다!!
시작하고 끝날짜만 넣어도 가능하기 때문입니다.

http://www.gurubee.net/article/50256
')

Question.create!(id: 9, program_language_id: 2, question_category_id: 2, user_id: 2, title: 'rake 실행시 애러', content: '
rake 실행하는데 이런게 애러메시지 나면서 안되는데 어떻게 해야하나요?
rake aborted!
Gem::LoadError: You have already activated rake 13.2.1, but your Gemfile requires rake 13.1.0. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)
')
Answer.create!( user_id:1, question_id: 9, content: '
Gemfile.lock의 rake버전과 현제 버전이 달라서 그런겁니다.
메세지 설명대로 bundle exec rake로 실행하거나
다른 방법으로는 Gemfile.lock을 삭제하고 다시 bundle install해주면 그냥 rake를 쓸 수 있습니다.
')




Gallery.create!(user_id: 1, title: '멋진나1', content: '멋진나1',:photo=>File.open(Rails.root.join("app", "assets", "images", "1.jpg")))
Gallery.create!(user_id: 1, title: '멋진나2', content: '멋진나2',:photo=>File.open(Rails.root.join("app", "assets", "images", "2.jpg")))
Gallery.create!(user_id: 1, title: '멋진나3', content: '멋진나3',:photo=>File.open(Rails.root.join("app", "assets", "images", "3.jpg")))
Gallery.create!(user_id: 1, title: '멋진나4', content: '멋진나4',:photo=>File.open(Rails.root.join("app", "assets", "images", "4.jpg")))
Gallery.create!(user_id: 1, title: '멋진나5', content: '멋진나1',:photo=>File.open(Rails.root.join("app", "assets", "images", "1.jpg")))
Gallery.create!(user_id: 1, title: '멋진나6', content: '멋진나2',:photo=>File.open(Rails.root.join("app", "assets", "images", "2.jpg")))
Gallery.create!(user_id: 1, title: '멋진나7', content: '멋진나3',:photo=>File.open(Rails.root.join("app", "assets", "images", "3.jpg")))
Gallery.create!(user_id: 1, title: '멋진나8', content: '멋진나4',:photo=>File.open(Rails.root.join("app", "assets", "images", "4.jpg")))


Talk.create!(id: 1, user_id: 1, title: '주식이 코인보다 좋은이유', created_at: 25.day.ago, tag_list: '주식,코인', content: '주식은 9시부터 3시반까지 잃는데
코인은 24시간 잃음
')
Talk.create!(id: 2, user_id: 1, title: '어제 지나가다 울던 아이', created_at: 22.day.ago, tag_list: '우주', content: '길에서 어떤 아이가 다른 애들이랑 놀다가 우는것 같더라고요
엄마, 아빠가 달래고 있는데


아이의 말 : "나 다음에 쟤네들이랑 앞으로 안 놀꺼야"
"다음에 보면 다 우주로 보내버릴꺼야~!!!"  <= ㅋㅋㅋㅋㅋ')

Talk.create!(id: 3, user_id: 1, title: '박 공주님 당선되었을때', created_at: 19.day.ago, content: '한국은 희망없다.
  중국으로 이민가볼까 해서 살펴봤는데 중국은 이민 안 받더라고요, 세계적 명성 높은 경우만 가능할때 있음
그 때 그냥 동남아 쪽도 알아봤어야 되나....')

Talk.create!(id: 4, user_id: 1, title: '30대 중반인데 프로그래머 시작할수 있을까요?', tag_list: '취업, 프로그래머', created_at: 16.day.ago, content: '
예전에 약간의 프로그래밍,HTML 수업은 들어서 기초는 있고요
그 후에는 다른일 하다가 이제 다시 시작해 보려고 합니다.
이제 시작해도 괜찮은것지 걱정입니다.
')

Talk.create!(id: 5, user_id: 1, title: 'PHP is King', created_at: 14.day.ago, tag_list: 'PHP', content: '
ㅋㅋㅋㅋ

역시 웹 언어는 PHP가 짱이지요?? ㅋㅎ

<a href="https://www.reddit.com/r/ProgrammerHumor/comments/lwhqp8/php_is_king/" target="_blank">PHP is King</a>

이 짤 응용한것은 언제봐도 웃기네요

<a href="https://www.reddit.com/r/ProgrammerHumor/comments/p9u8uy/so_php_is_dead_right_its_not_dead_it_is_evolving/ target="_blank">so_php_is_dead_right_its_not_dead_it_is_evolving</a>

PHP관련 개발자들중에도 뛰어난 사람이 많은거겠지요??, 오픈소스로 참여해서 저런 성과를 올리는건가??
PHP8은 이제 까일 거리 없어진거 아닌가요??
')

Talk.create!(id: 6, user_id: 1, title: '한국표준금거래소 작업 주의하세요', tag_list: '사기꾼', created_at: 12.day.ago, content: '
일 시키고 돈 안주는 인간 쓰레기 사장(배*수)입니다.
갑자기 도와달라고 전화와서 해줬더니 결과물 받고서는 바로 배째기 시전하는 우리가 아는 패턴의 전형적인 쓰레기 인간입니다.

다른 피해자들이 없기를 바랍니다.')

Talk.create!(id: 7, user_id: 1, title: '손목터널증후군 조심하세요', created_at: 10.day.ago, content: '
오랜시간 마우스 쓰시는 분들은 일반 마우스는 쓰면 안되고
손목에 안 좋은 느낌 오시는 분들은 당장 버티컬 마우스로 바꾸세요
저도 방심하고 오랜시간 일반 마우스 쓰다가 터널증후군 증상 와서 바로 버티컬 마우스로 바꿔 쓴 이후로는 괜찮아졌습니다.')

Talk.create!(id: 8, user_id: 1, title: '불법복제 절대로 안되요', tag_list: '불법복제, 정품사용', content: '
예전에는 저도 mp3고 영화고 불법다운받어 썼었는데
그 때도 10손가락에 뽑을 정도였지요 <= 비겁한 변명입니다

그러다가 나쁜것이라는것을 점점 더 알게 되고 불법은 안 한지 10년은 넘은것 같네요
노래도 결제해서 듣고, 영화는 영화관 가서 보고 아니면 마냥 기달리면 케이블 TV에서 해주니  불법을 저지를 일이 없지요
특히 프로그램을 만드는 우리, 회사에서 불법프로그램 쓰는것은 정말 말이 안됨
지네도 만들어서 납품하고 돈 못받아도 할 말 없는것이지요
그런데 당당히 불법 프로그램 써서 돈 버는거 보면 참 어이가 없음, 사장들 마인드가 글러 먹었음,  왜 요즘은 단속 안하지요??

윈도우나 오피스, 포토샵등 프로그램도 돈 주고 정품 써야지요
저는 불법 안 저지르고 리눅스에 오픈 오피스 씁니다.', created_at: 8.day.ago)


Talk.create!(id: 9, user_id: 1, title: '대단한 여성프로그래머들', content: '
뭐 최초의 프로그래머가 여성인 "에이다"인것은 알았지만
호퍼는 몰랐었네요
<a href="https://namu.wiki/w/%EA%B7%B8%EB%A0%88%EC%9D%B4%EC%8A%A4%20%ED%98%B8%ED%8D%BC" target="_blank">호퍼</a>
컴파일러도 그랬군요, 코볼도 만들었고, 디버그도 최초로 했고


최초의 프로그래머가 여자이고 발전에도 저렇게 많이 공헌을 했는데,
저런거 보면 프로그래밍은 여자가 하기에 좋은 직업인것 같은데
왜 여자프로그래머는 이리 적을까요? 한국만 그런가?
여성들도 프로그래밍의 세계로 와서 여자 프로그래머가 50%가 넘었으면 좋겠습니다.


  ///////////////////////////////////
에이다 아버지가 바이런인거 알고 진짜 신기하다고 생각했는데, 피는 못 속이는게 이런건가요?
서로 교류라도 많이 했었으면 역사가 더 재미있었을듯한데 아쉽네요', created_at: 5.day.ago)

Talk.create!(id: 10, user_id: 1, title: 'MS 클라우드(Azure) 좋네요??', tag_list: 'azure, MS, 가상서버, 클라우드,서버, IIS', content: '
예전에 해볼라고 깔작대다가 안하고 AWS만 쓰고 있었는데

이번  AWS사태도 있고 해서 옮길라고 해봤더니

인터페이스를 비롯해서 여러면에서 마음에 드네요


무료1년으로 주는 사양도 지금 유료로 쓰는 AWS보다도 좋은듯? -.-;;

VScode도 그렇고 이번 Azure까지 MS팬 될 듯, 아 IIS,MSSQL도 좋아합니다

단지 OS는 집이던 회사던 리눅스지만..  ㅎㅎ', created_at: 4.day.ago)


Talk.create!(id: 11, user_id: 1, title: '개발자용 맥북 안내', content: '
요즘 보면 웹개발한다고 맥북 프로도 사고 맥스도 사고 하는데... 참........
웹개발 하는데 그런거 필요 없다고!!
M1에어면 안되는게 없는데 왜 돈 낭비들 하고 있는지, 그러고 보면 애플이 가격 정책을 잘하는것 같어
인간의 저런 호갱 본색을 제대로 저격하는듯
프로 필요한 사람은 동영상 제작 하는 사람이나 필요하고, 맥스는 정말 0.1%의 사람에게나 필요할까?
M1에어로 아이폰 빌드 하는대도 기존의 인텔맥의 1/5 시간 정도 밖에 안 걸리는 막강한 성능입니다.
', created_at: 2.day.ago)


Talk.create!(id: 12, user_id: 1, title: 'IIS제한 있었네요', tag_list: '서버, IIS', content: '
저는 원래 서버나 데스크탑이나 리눅스를 사용해왔고 따라서 Apache,Nginx등을 사용했지만
어쩔수 없이 윈도우를 쓰게될경우 웹서버로는 윈도우 기본 제공인 IIS를 사용해왔습니다.
제어판/프로그램 추가에서 따로 IIS선택해서 설치해야되긴 하지만 &quot;웹플랫폼 관리자&quot;와 같이 쓸경우에는 편하고 좋다고 생각했습니다. 그래서 IIS도 추천하기도 하고 했는데....

그런데!....

서버제품(Windows Server)이 아닌 데스크탑제품(windows7,8,10)의 IIS에는 접속제한이 있던것이였습니다.
찾아보니 최대 접속이 10개로 되어있다고 합니다.
어쩐지 테스트할때도 &quot;서비스 사용할 수 없음&quot;이 한번씩 뜨더라니....&nbsp;

그럼 데스크탑일때는 숫자라도 맞게 표시되면 좋았을꺼를...&nbsp;&nbsp; 저거는 왜 저리 해놨는지 모르겠습니다.
생각해보니 &quot;서버용&quot; 제품이 그래서 따로 있었구나 했습니다.&nbsp; 이렇게 생각하면 제가 바보 같지만...
리눅스에서 무제한으로 웹서버를 쓰던 저에게는 아직도 이해가 안되는 정책이긴 합니다.
이제 윈도우도 무료정책도 많이 쓰는것 같던데 웹서버에는 아직도 무료로 갈 생각이 별로 없나봅니다.
아직까지는 데스크탑용 윈도우에서는 IIS는 개발,테스트 용도로만 사용해야겠습니다.
한때 &quot;IIS도 좋구나&quot; 생각했던 저의 짝사랑이 깨지는 순간이였습니다
MS야 이제 데탑,서버 구분없이 통합으로 만들어 내고 IIS 접속제한 없이 만들면 좋지 않겠니?

서버제품(Windows Server)이 아니면 IIS는 개발,테스트 용도로만 쓰세요~', created_at: 7.day.ago)




Talk.create!(id: 13, user_id: 1, title: '자동테스트를 써야 프로그래머입니다.', tag_list: '테스트, 자동, 셀레늄, 프로그래머', content: '
셀레늄 안 쓰고 일일히 클릭하여 테스트 하는 사람은 웹프로그래머 아니잖아요?
테스트 클릭 노가다꾼인가요?

폼 몇개만 되어도 변경때 마다 일일히 테스트 하려면 시간 다 잡어 먹잖아요?
테스트가 다 잘 된다는 보장도 없고요
사용자가 변경후 애러 찾아줘서 고치면 사용자로부터 신뢰가 다 없어진 다음이지요
프로그램은 애러 고친다고 해도 사용자로부터의 신뢰는 못 고치지요

저도 부끄럽게도 여지껏  위처럼 지냈고 사용자가 애러 다 찾아줬습니다.
이번에 셀레늄을 이용한 자동화 테스트를 만들어서 변경사항이 일어나도 프로그램 전체를 일일히 클릭하지 않고 테스트 할수 있게 하였습니다.
저는 이제 웹프로그래머 입니다.

아직 셀레늄 안 쓰시는 분들은 지금 바로 시작하세요
각 언어별로 플러그인 다 나와있으니,  각자 자신에게 가장 잘 맞는것으로 해서 시작하세요', created_at: 7.day.ago)


Talk.create!(id: 14, user_id: 1, title: '가성비 가상서버 마련하세요', tag_list: '가상서버, vultr', content: '
최고의 가성비 가상서버 업체 Vultr를 쓴지도 어느새 2년이 넘어가네요
이렇게 좋은 서비스를 잘 이용하고 있긴 했지만
도쿄리전을 쓰는거라 약간의 아쉬움이 있었는데..
뭐 그렇다고 속도에는 전혀 문제는 느껴지지는 않았습니다

그러던 중 보니 서울리전이 생겼었네요, 작년 5월에 생겼는데 그걸 모르고 있었네요....
이번에 저도 서울리전 생생해서 서버이전 했네요
이제는 너무나 익숙한 서버이전 작업,  하루도 안 걸려서 완전히 마쳤습니다.
이제는 일본서버 왔다갔다 하는 시간도 필요없네요~ ㅋㅋㅎ
속도는 빨라진것 모르겠지만 빨라졌겠지요??

<a href="https://www.vultr.com/?ref=8793281-6G">나도 가상서버 만들러 vultr.com으로 가기</a>
여러분들도 지금 바로 가입해서 가상서버를 마련하세요', created_at: 7.day.ago)




Talk.create!(id: 15, user_id: 1, title: '오타로 삽질하는것은 프로그래머 운명인가요?', tag_list: 'PHP, 삽질',
content: 'IS+PHP를 위해서 웹플랫폼 관리자를 설치하고
IIS인터넷 정보 서비스 관리자에서 경로설정후에 웹에서 localhost에 접속했지만 나타나는것은 애러~

무슨일인지 살펴보니 권한문제로 해당폴더에 IIS_USRS,IUSR에 권한이 있어야 한다고 한다.
그래서 권한을 주려고 하는데 그런 사용자가 없다고 한다.

이게 무슨일인가? 해서 계속 이것저것 해보았지만 그런 사용자가 없어서 되지가 않았다.
뭐 다른거 해야되나 해서 이것저것 다 해보아도 되는거는 없이 시간만 가고....

거의 포기 하려고 하는 순간!, 보이는 스펠링 차이
IIS_USERS,IUSER로 입력했던것이다.
있지도 않은 E가 왜 있어 보였는지.....  미칠 노릇이였다.
이렇게 어이없이 오타로 인해서 몇시간 삽질한 바보같은 나였다.

여러분도 오타, 오인식 조심하세요~~
', created_at: 7.day.ago)

Talk.create!(id: 16, user_id: 1, title: '웹서버 mineType 미설정으로 삽질함', tag_list: '서버설정, 삽질',
content: '사용자가 비디오 파일을 업로드하고 그내용 볼수 있게 하는 게시판을 만들고 있었습니다.

  이미 이전에도 했던 내용이라 별 어러움 없이 처리 될줄 알았는데 안되는겁니다!!
<video width="넓이" height="높이" controls>
<source src="업로드한 mp4경로" type="video/mp4">
<source src="업로드한 ogg경로" type="video/ogg">
  Your browser does not support the video tag.
</video>

이런 내용이었는데 안될 이유가 없는데 안 되는겁니다. ㅜ.ㅜ
이리저리 왜 안되는가를 보니.........

웹서버 mineType에 등록이 안되어 있어서 그랬습니다.
이전 서버에는 등록이 되어있었는데 이 서버에는 등록이 안되어있던겁니다.
다시 생각하면 당연히 그런것을 생각못하고 프로그램이 잘못되었는가 하면서 또 삽질을 몇시간 했습니다.

mineType등록은 설정 파일에(보통 따로 mineTyp설정 파일이 있음)
AddType video/mpeg  .mp4
이런식으로 추가하고 적용시키면 됩니다.

결론 = Video태그 쓰려면 서버에 mineType등록 되어 있는 파일 형식이여야 된다.
', created_at: 7.day.ago)

Talk.create!(user_id: 1, title: '알리익스프레스로 주문해봤어요', tag_list: 'SSD, 하드디스크, 알리익스프레스, 호갱',
content: '이번에 가지고 있는 옛날 아이맥 하드디스크를 SSD로 교체하려고 아이맥 액정 조립 스티커를 사려고 찾아봤는데
우선 국내 인터넷 쇼핑몰들을 봤습니다. 스티커가 가격이 너무 비싸다고 생각되는 가격들이더군요.
그래서 최근에 설치한 알리익스프레스앱에서 가격을 찾아보니.....
헉~!!  제가 생각한 정상 가격이였습니다.  국내 쇼핑몰이 3만원이면 알리에서는 3천원 정도였습니다.
참....  아무리 차이가 난다 해도 이게 말이 되는건지?

국내 쇼핑몰 쓰는사람들은 호갱이였던것입니다.
우리 모두 호갱 되지 말고 알리익스프레스 설치하고 가격 확인해요~~
', created_at: 7.day.ago)

Talk.create!(user_id: 1, title: '아이맥 SSD로 바꾸니 날라다니네요', tag_list: 'SSD, 하드디스크, 아이맥',
content: '전에 다니던 회사에서 받아온 좀 오래된 아이맥(2015 late)이 있었는데요
원래부터 빠른 느낌이 없고 답답했습니다. 그래서 시간이 지나 처분해야되나 고민하던 중
SSD로 교체하면 훨씬 빨라진다는 정보를 듣게되었습니다. SSD로 하면 빨라지겠지만 얼마나 빨라질까 약간 의심은 하면서
이번에 SSD로 교체해봤는데...
와~  컴퓨터가 새로 태어났네요?, SSD로 바꿨을뿐인데 이렇게 좋아질줄은 몰랐습니다.
역시 SSD가 짱이네요
', created_at: 7.day.ago)



Talk.create!( user_id: 1, title: '최고로 재미있는 게임 추천합니다.', tag_list: 'openttd, 게임, 추천',
content: '해도해도 재미있고 중독성 엄청나서 시작하기가 무서운 게임입니다.
저는 게임에 중독되고 그런 사람 아닌데
이 게임하면서 48시간 연속 몇번씩 넘기게 했던 게임입니다.....
다들 중독되어 폐인되어서 내 경쟁상대에서 멀어지세요~~. ㅋㅋㅋㅋ
안 해본 사람들은 무조건 해보세요~

https://www.openttd.org/
필수 확장팩  : Zbase깔아야 그래픽 좋아짐,  안깔았을때도 그래픽은 90년대 감성 그래픽
', created_at: 5.day.ago)






Market.create!(id: 1, user_id: 4, title: '워드프레스사이트 제작', content: '
워드프레스를 이용한 사이트 제작을 하려고 합니다.
', created_at: 7.day.ago)

Market.create!(id: 2, user_id: 4, title: 'PHP로 만들어진 사이트 1년 유지보수 작업', content: '
PHP로 만들어진 사이트 1년동안 유지보수 맡아주실분 구합니다.
시간은 한달 기준 1주(40시간) 작업량 생각하고 있습니다.
', created_at: 5.day.ago)

Market.create!(id: 3, user_id: 4, title: 'Rails로 사이트 1년 유지보수 작업', content: '
Rails로 만들어진 사이트 1년동안 유지보수 맡아주실분 구합니다.
시간은 한달 기준 1주(40시간) 작업량 생각하고 있습니다.
', created_at: 2.day.ago)





Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스를 위한 PHP 설치, 설정', content: '워드프레스 설치는 이렇게',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp")) })
Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스 설치,설정', content: '워드프레스' ,blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp")) })
Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스 시작하기', content: '워드프레스 시작하기',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp")) })
Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스 리플리케이션 플러그인',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp"))},
content: "
홈페이지가 Wordpress로 운영되고 있고
2대 이상의 DB서버가 있어서 부하분산을 하고싶다면 바로 이 플러그인을 사용하면 됩니다.
<a href='https://wordpress.org/plugins/hyperdb' target='_blank'>HyperDB</a>



물론 2대 이상의 DB서버는 MySQL Replication으로 복제가 되어 서로 언제나 같아야 겠지요
MySQL Replication에 대해서는 많은 자료가 있기에 따로 설명하지 않겠습니다.


HyperDB플러그인을 받게되면 2개의 파일이 있는데

db.php와 db-config.php입니다.
이름으로 금방 알수 있겠지만 설정파일과 실제적으로 작동하는 파일입니다.

홈페이지에서는 설명하기로는
db.php 파일을 wp-content폴더 밑에 가져다 놓는것으로 설치는 끝이라고 하네요(실제로 그렇습니다)
설정파일은 어디에 있던지 지정만 해주면 상관없지만

저는 wp-config.php와 같은 위치에 놓고
wp-config.php의

if ( !defined('ABSPATH') )
  define('ABSPATH', dirname(__FILE__) . '/');

밑부분에

define('DB_CONFIG_FILE', ABSPATH.'db-config.php');
로 추가해서 db-config.php파일을 찾을수 있게 했습니다.

db-config.php은 커넥션들을 설정해주는것인데

저의 설정은

$wpdb->add_database(array(
    'host'     => DB_HOST,     // If port is other than 3306, use host:port.
    'user'     => DB_USER,
    'password' => DB_PASSWORD,
    'name'     => DB_NAME,
    'write'    => 1,
    'read'     => 1,
    'dataset'  => 'global',
    'timeout'  => 0.2,
));

$wpdb->add_database(array(
    'host'     => DB_SLAVE_1,     // If port is other than 3306, use host:port.
    'user'     => 'wordpress_ro',
    'password' => 'wordpress_ro',
    'name'     => DB_NAME,
    'write'    => 0,
    'read'     => 1,
    'dataset'  => 'global',
    'timeout'  => 0.2,
));

이런식으로 되어 있습니다.
슬레이브에는 당연히 write는 0으로 해야겠지요?
저의 경우는 보다시피 계정도 Read Only권한을 가진 계정으로 접속하게 설정했습니다.
마스터의 경우는 읽기부하를 받게 할지 안할지는 선택적으로 처리하면 될듯합니다.
저의 경우는 2대밖에 없지만 많은 DB서버가 있다면  Replication과  HyperDb플러그인으로
Wordpress홈페이지의 DB부하 분산은 걱정은 끝!!~~")



Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '다국어 기능을 위한 gettext, 하지만 평소에도 쓰면 좋아요',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp"))},
             content: "
PHP에서 gettext는 다국어를 위한 확장기능이며

PHP에서 gettext기능을 이용하기 위해서는 활성화 되어 있어야 되며 phpinfo()에서 gettext부분이 있어야 됩니다.
이부분에 없다면 php.ini 에서 extension=gettext.so(윈도우는 dll)부분에서 앞에 주석을 없애고 재시작 하세요
phpinfo()에서 이렇게 한줄만 나오면 gettext를 사용할 수 있는 환경인것입니다.

gettext기능은 원래 다국어 지원을 위해서 만들어진 기능으로 이렇게 모든 문자열을 한곳에서 처리하므로 각 언어에 맞게 수정한 파일들을 각 언어별 폴더에 넣어놓으면 모든 문자열이 각 언어로 바뀌게 됩니다.

보통 프로그램을 보면 사용자에게 보이는 문자열(메뉴, 버튼의 텍스트, 애러-성공 메세지)이 곳곳에 쓰이는데
gettext기능을 사용해서 다국어로 변환 할수 있고 통합적으로 관리 할 수 있습니다.

예를 들면 gettext기능을 쓰지 않고 메세지 수정할 일이 생겼다고 한다면 이 텍스트가 들어있는게 100개라면 100개가 있는곳을 찾아서 전부 수정해주어야 겠지요?...  헉 소리 납니다.
하지만 gettext기능을 이용한다면 po파일을 열어서 수정후 저장(mo파일) 하면 처리가 끝나게 됩니다.
그러므로 다국어를 쓰지 않을때도 저런 수정관련을 위해서 써주면 매우 좋은 기능입니다.

프로그램상에서는 gettext('문자열')로 쓰이게 되는데 gettext()대신에 짧게 _()로 사용하는게 일반적입니다.
즉 _() = gettext() 입니다. 'gettext'라고 매번 쓰는것보다 '_'가 훨씬 간단하고 좋지요?
_('문자열')로 사용하면 됩니다.

워드프레스나 다른 프레임워크에서는 __()등의 함수('_'가 두개임)를 쓰는데 저 함수는 해당프레임워크에서 제공해주는 함수로서 PHP기본 gettext와는 다릅니다.
물론 해당 프레임워크에서는 저것을 쓰는것이 더 편의성이 있고 맞는 방법이지만 다른것이라는 것만 인식하면 바뀌었을때 헷갈리는 일이 없겠지요?

gettext의 세부 사용방법은 여기를 참고하세요

http://php.net/manual/kr/book.gettext.php

또한 gettext는 직접 작성하기보다는 po에디터라는 전용 에디터를 사용하는데
www.poedit.net 로 받아서 사용하세요")


Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: 'PHP Filter를 사용해서 깨끗한값만 받으세요',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp"))},
             content: "

프로그램에서 사용자의 잘못된 입력값을 중간에서 잡어서 잘못된 입력값이 입력되지 않게하고
이를 사용자에게 잘 알려주는것은 프로그램의 기본입니다.


그러나.........
이런 기본도 못하는 프로그램이 많은것도 사실입니다.
또한 이를 처리하기 위해서 각자의 방법으로 처리를 하게되는데 이는 제대로 검증되지 못하였기에 언제나
불안요소를 안고 가게됩니다.

그래서 나온것이 PHP에서는 Filter입니다.
5.2버전 이전에는 PECL확장으로 존재했었고 5.2부터 기본에 포함되었으므로 기본에 포함된지 꽤 오래 되었는데
아직도 제대로 쓰는곳을 보기가 힘드네요
막강한 기능을 가진 Filter에 대해 일일히 설명하기는 힘들고
여기 http://php.net/manual/kr/book.filter.php를 보시면 쉽게 이해될것입니다.

이런 필터를 구현할 때 정규표현식으로 구현하는 경우가 많은데
이를 이용하면 힘들게 정규표현식 쓸 필요도 없이 간단하게 모든 데이터를 필터링할 수 있습니다.
Filter와 PDO bind를 쓰면 이상한 데이터가 들어가는걸 다 막을수 있습니다.

깨끗한 데이터만 입력되는 제대로된 PHP프로그램을 제작하려면 Filter를 꼭 사용해주세요~~
")




Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: 'PHP에서 SQL-Server 데이터베이스 접속하기',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp"))},
             content: "
PHP는 어느 데이터베이스라도 접속확장이 있으며 이를 이용해서 해당 데이터베이스에 접속하여 프로그램을 제작하면 됩니다.
PHP에서 SQL-Server 에 접속하여 사용하려면 역시 해당 드라이버가 필요한데 드라이버 이름은 sqlsrv 입니다.
sqlsrv는 SQL-Server의 제작 회사인 microsoft에서 제공하므로 문서와 지원이 좋습니다.
(5버전 때 제가 사용 할때만 해도 별로 자료가 없고 지원이 없었던걸 생각하면 지금은 너무나 좋습니다)

<a href='https://github.com/microsoft/msphpsql' target='_blank'>sqlsrv github 문서</a>
이 문서에 윈도우와 리눅스,MacOS에서 설치 방법이 다 있으며 윈도우가 아닌 경우가 많으니
<a href='https://learn.microsoft.com/ko-kr/sql/connect/php/installation-tutorial-linux-mac?view=sql-server-ver16' target='_blank'>리눅스,MacOS에서 설치</a>
에 있는대로만 따라하면 쉽게 설치 됩니다.
sqlsrv를 설치하고 재시작이 잘 된 이후에 phpinfo()에서 sqlsrv가 있으면 성공입니다.

윈도우의 주의할것은 경우 32비트, 64비트, ts인지 ,nts인지를 확인하여 맞는 dll을 쓰는것인데
ts는 Thread Safety의 약자로 phpinfo에서 확인 할수 있습니다.

이런 방법들을 통해 PHP로 SQL-Server에 접속하여 이용할수 있다.
MySQL로만 사용했다면 PHP로 다른 데이터 베이스를 접근해서 사용하는 재미도 쏠쏠하다.

특히 PDO로 접속하면 어떤 데이터 베이스던지 간에 똑같은 코딩스타일로 만들수 있는 매력이 있다.
PDO로 어떤 데이터베이스던지 상관 없이 만드는 재미를 느껴보세요~~
")




Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '젠투리눅스에서 커널컴파일 해보기',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp"))},
             content: "
리눅스를 사용하는 또 하나의 재미인 커널 컴파일입니다.

커널 컴파일이란?
커널(Kernel)은 OS의 핵심으로 이를 바탕으로 여러 프로그램이 그 위에서 돌아가게 됩니다.
컴파일(Compile) 은 소스코드를 컴퓨터가 알아듣게 변환하는 과정으로 이를 통해서 실제 돌아가게 되는 코드가 만들어 집니다.


즉 커널컴파일이란 커널소스를 컴파일하여 커널을 생성하는 과정이라고 할 수 있습니다.
OS의 핵심을 직접 컴파일 한다니?  윈도우에서는 느낄수 없는 재미지요
그럼 어렵지 않냐고요?  물론 처음은 조금 어렵지만 몇번 하면 금세 익숙해질수 있습니다.
쉽게 생각하면 커널소스를 컴파일을 하는것 뿐입니다.
특히 젠투리눅스에서는 더 쉽습니다.

그럼 커널 컴파일은 왜 하나요?

리눅스 설치시 설치된 커널은 일반적인 모든 사양을 포함하게 되어있습니다.
이말은 모든 하드웨어에서도 잘 돌아가게 된다는 말이지만 그를 위해서 내 컴에는 있지도 않은 하드웨어
나에게는 필요없는 기능들도 다 포함되어 있어서 무겁다는 뜻이지요
커널 컴파일을 통해 나에게 필요없는 것들은 빼고 딱 맞는 커널을 만들어서 최고의 성능을 낼 수있습니다

그럼 한번 시작해볼까요?

우선 커널 소스를 설치
emerge gentoo-sources로 설치하면 쉽게 되지요
설치후엔 cd /usr/src 로 이동하여 linux폴더가 있는지 확인합니다
/usrc/src/linux 폴더가 최신소스이면 됩니다.


다음은 emerge genkernel로 소스컴파일 쉽게하는 도구 설치
genkernel 이 있으면 설정만 하면 컴파일은 그냥 자동으로 됩니다.
genkernel --menuconfig all로 실행후 설정하고 나오면 컴파일이 진행됩니다.

컴파일 완료후엔 /boot 디렉토리 가서 잘 완료되었는지 확인하고 Grub에 현재 버전으로 부팅되게 하면 됩니다.
")


Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '오라클 클라우드에서 루비설치',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png"))},
content: '
이번에 오라클 클라우드를 사용해보면서 rbenv install 3.2.2 로 루비를 설치하는데
덕분에 우분투 apt만 쓰다가 yum을 오랬만에 쓰게 되었네요

ruby에 필요한 yaml패키지를 설치하는데 yaml-devel가 없는겁니다?
엥? 뭐지 그냥 yaml패키지만 설치하면 되나 하면서 진행하는데 역시나 "yaml.h not found" 나오면서 문제가 생기네요.
  뭐야 이건??  없는 yaml-devel패키지를 어떻게 설치하라는거야?? -.-;;
여기 저기 검색해보다 알아보니

dnf config-manager --set-enabled ol8_codeready_builder
이런거를 해줘야 되었었네요

이렇게 하고나니 yaml-devel패키지가 있고 설처되었으며 그후에 진행하니 rbenv install을 통해서 ruby를 설치할수 있게 되었습니다.')
