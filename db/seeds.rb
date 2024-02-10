AuthenticationProvider.create!(name: 'kakao')
AuthenticationProvider.create!(name: 'twitter')
AuthenticationProvider.create!(name: 'google_oauth2')
AuthenticationProvider.create!(name: 'apple')
AuthenticationProvider.create!(name: 'facebook')
AuthenticationProvider.create!(name: 'naver')
AuthenticationProvider.create!(name: 'github')

Admin.create!(:id => 1, :email => 'theloss@jedaeroweb.co.kr', :name => '잠자는사자', :password => 'a12345', :password_confirmation => 'a12345')

User.create!(:id => 1, :email => 'user1@jedaeroweb.co.kr', :name => '사용자1', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }])
User.create!(:id => 2, :email => 'user2@jedaeroweb.co.kr', :name => '사용자2', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) }])
User.create!(:id => 3, :email => 'company1@jedaeroweb.co.kr', :name => '회사1', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) }])
User.create!(:id => 4, :email => 'company2@jedaeroweb.co.kr', :name => '회사2', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) }])
User.create!(:id => 5, :email => 'company3@jedaeroweb.co.kr', :name => '회사3', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) }])
User.create!(:id => 6, :email => 'company4@jedaeroweb.co.kr', :name => '회사4', :password => 'a12345', :password_confirmation => 'a12345',user_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) }])
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

Notice.create!(:id=>1,:title=>'Rails 커뮤니티 홈페이지가 생겼어요',notice_content_attributes: {content: 'Rails 커뮤니티 홈페이지가 개장했습니다.  많은 관심 부탁드려요'})
Notice.create!(:id=>2,:title=>'레일즈 강좌 시작',notice_content_attributes: {content: '레일즈 강좌를 시작합니다. 초보자도 쉽게 레일즈를 배워보아요'})
Notice.create!(:id=>3,:title=>'홈페이지 업데이트',notice_content_attributes: {content: '계속적인 업데이트를 시행해고 있습니다.
다들 더욱더많은 참여 부탁드려요~
'})


BlogCategory.create!(id: 1, title: '설치,설정')
BlogCategory.create!(id: 2, title: '제작')
BlogCategory.create!(id: 3, title: '테스트')
BlogCategory.create!(id: 4, title: '배포')

Blog.create!(id: 1, user_id:1, program_language_id: 2, blog_category_id:1, title: '루비설치',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png"))}, content: '루비 온 레일즈 프로그램을 설치하려면 당연히 루비 부터 설치해야 됩니다.
          이름부터가 루비 온 레일즈로 루비로 만들어진 프레임워크입니다.
          루비를 설치하기 위해서는 여러 선택지가 존재하며 각 OS마다 약간의 차이가 있습니다.

  리눅스나 맥이라면 해당 패키지관리자(apt,brew)를 이용하여 설치하면 되겠지만 이상하게 애네들도 버전이 낮아서 이걸로는 영 못 쓰겠더라고요
  그러고 보면 ruby뿐 아니라 nodejs도 그런데 nodejs도 기본 패키지 대신 nvm을 써서 설치하는 것처럼
  ruby도 rvm이 있습니다.(요즘엔 renv가 더 좋은듯?)

  이렇듯 기본 패키지 관리자로도 설치할수 있지만 버전이 낮아서 많은 문제가 있는만큼
  renv,rvm 을 이용한 설치방법을 설명해드리겠습니다.

')
Blog.create!(id: 2, user_id:1, program_language_id: 2, blog_category_id:1, title: 'gem,bundler', content: 'gem은 ruby의 패키지 관리자로
  <code>gem install 설치할프로그램 이름</code>
이렇게 입력하고 실행하면 프로그램이 설치 됩니다.

bundler는 gem의 의존성관리를 위한 프로그램
  <code>gem install bundler</code>
이렇게 입력하고 실행하여 설치합니다.
이렇게 설치하면 bundle이란 명령어가 생성되며

 <code>bundle install</code>을 통해 한번에 여러 gem 프로그램들을 설치할수 있습니다.',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 3, user_id:1, program_language_id: 2, blog_category_id:1, title: '레일즈 설치,시작', content: '레일즈도 gem으로 되어 있어 gem install rails하면 설치가 끝납니다.' ,blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
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
Blog.create!(id: 9, user_id:1, program_language_id: 2, blog_category_id:4, title: '카피스트라노(capistrano)를 이용한 배포', content: 'capistrano는 원래 완성된 레일즈를 배치(deploy)하기 위한 도구이며 너무나 편리하게(1줄의 명령어)로 배치를 자동으로 진행할 수 있습니다.
이제는 레일즈외에 어떤한 프로그램이라도 배치 할수 있습니다.',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })

QuestionCategory.create!(id: 1, title: '서버 설치,설정')
QuestionCategory.create!(id: 2, title: '프레임워크, 패키지 설치, 설정')
QuestionCategory.create!(id: 3, title: '함수,기능, Controller')
QuestionCategory.create!(id: 4, title: 'HTML, CSS, Javascript')
QuestionCategory.create!(id: 5, title: 'Database,Model,ORM')
QuestionCategory.create!(id: 6, title: '기타')

Question.create!(id: 1, program_language_id: 2, question_category_id: 1, user_id: 1, title: 'capistrano deploy sshkit 애러', content: 'capistrano deploy하는데
sshkit rescue in block (2 levels) : Exception while executing as deploy@deploy_server: fingerprint does not match xxx in execute SSHKit::Runner::ExecuteError
애러 나오는면서 중지 되는데 어떻게 해결해야될까요?')
Question.create!(id: 2, program_language_id: 2, question_category_id: 1, user_id: 2, title: '뭐지요', content: '적산의뢰2 내용')
Question.create!(id: 3, program_language_id: 2, question_category_id: 2, user_id: 3, title: '뭐지요', content: '설계의뢰1 내용')
Question.create!(id: 4, program_language_id: 2, question_category_id: 3, user_id: 4, title: '날짜표시 예쁘게 하려면 어떻게 하나요?', content: '날짜 나오게 하면 2024-01-01 이런식으로 나오는데
이거 다른 방법으로 예쁘게 나오게 만들수 있나요?')


Answer.create!(id: 1, user_id:1, question_id: 1, content: 'deploy.rb에 "set :ssh_options, verify_host_key: :never" 추가해주시면 넘어갑니다.')

Answer.create!(id: 2, user_id:1, question_id: 4, content: '날짜 나오게 하려면 <%= I18n.l article.created_at.to_date, :format => :long %>
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

Answer.create!(id: 3, user_id:1, question_id: 5, content: 'HTML PDF로 만들기 wkhtmltopdf가 제일 좋습니다.
해당 프로그램 프로그램별로 확장프로그램도 있어서 골라 쓰면 됩니다~
')


Question.create!(id: 6, program_language_id: 1, question_category_id: 3, user_id: 2, title: 'PHP 서버설정 없이 서버실행', content: 'PHP서버 설정없이 서버 실행하는 법은 간단해요')
Answer.create!(id: 3, user_id:1, question_id: 6, content: 'PHP -S 아이피')

Gallery.create!(user_id: 1, title: '멋진나1', content: '멋진나1',:photo=>File.open(Rails.root.join("app", "assets", "images", "1.jpg")))
Gallery.create!(user_id: 1, title: '멋진나2', content: '멋진나2',:photo=>File.open(Rails.root.join("app", "assets", "images", "2.jpg")))
Gallery.create!(user_id: 1, title: '멋진나3', content: '멋진나3',:photo=>File.open(Rails.root.join("app", "assets", "images", "3.jpg")))
Gallery.create!(user_id: 1, title: '멋진나4', content: '멋진나4',:photo=>File.open(Rails.root.join("app", "assets", "images", "4.jpg")))
Gallery.create!(user_id: 1, title: '멋진나5', content: '멋진나1',:photo=>File.open(Rails.root.join("app", "assets", "images", "1.jpg")))
Gallery.create!(user_id: 1, title: '멋진나6', content: '멋진나2',:photo=>File.open(Rails.root.join("app", "assets", "images", "2.jpg")))
Gallery.create!(user_id: 1, title: '멋진나7', content: '멋진나3',:photo=>File.open(Rails.root.join("app", "assets", "images", "3.jpg")))
Gallery.create!(user_id: 1, title: '멋진나8', content: '멋진나4',:photo=>File.open(Rails.root.join("app", "assets", "images", "4.jpg")))


Talk.create!(id: 1, user_id: 1, title: '주식이 코인보다 좋은이유', content: '주식은 9시부터 3시반까지 잃는데
코인은 24시간 잃음
')
Talk.create!(id: 2, user_id: 1, title: '어제 지나가다 울던 아이', content: '길에서 어떤 아이가 다른 애들이랑 놀다가 우는것 같더라고요
엄마, 아빠가 달래고 있는데


아이의 말 : "나 다음에 쟤네들이랑 앞으로 안 놀꺼야"
"다음에 보면 다 우주로 보내버릴꺼야~!!!"  <= ㅋㅋㅋㅋㅋ')

Talk.create!(id: 3, user_id: 1, title: '박 공주님 당선되었을때', content: '한국은 희망없다.
  중국으로 이민가볼까 해서 살펴봤는데 중국은 이민 안 받더라고요, 세계적 명성 높은 경우만 가능할때 있음
그 때 그냥 동남아 쪽도 알아봤어야 되나....')

Talk.create!(id: 4, user_id: 1, title: '30대 중반인데 프로그래머 시작할수 있을까요?', content: '
예전에 약간의 프로그래밍,HTML 수업은 들어서 기초는 있고요
그 후에는 다른일 하다가 이제 다시 시작해 보려고 합니다.
이제 시작해도 괜찮은것지 걱정입니다.
')

Talk.create!(id: 5, user_id: 1, title: 'PHP is King', content: '
ㅋㅋㅋㅋ

역시 웹 언어는 PHP가 짱이지요?? ㅋㅎ

<a href="https://www.reddit.com/r/ProgrammerHumor/comments/lwhqp8/php_is_king/" target="_blank">PHP is King</a>

이 짤 응용한것은 언제봐도 웃기네요

<a href="https://www.reddit.com/r/ProgrammerHumor/comments/p9u8uy/so_php_is_dead_right_its_not_dead_it_is_evolving/ target="_blank">so_php_is_dead_right_its_not_dead_it_is_evolving</a>

PHP관련 개발자들중에도 뛰어난 사람이 많은거겠지요??, 오픈소스로 참여해서 저런 성과를 올리는건가??
PHP8은 이제 까일 거리 없어진거 아닌가요??
')

Talk.create!(id: 6, user_id: 1, title: '한국표준금거래소 작업 주의하세요', content: '
일 시키고 돈 안주는 인간 쓰레기 사장(배*수)입니다.
갑자기 도와달라고 전화와서 해줬더니 결과물 받고서는 바로 배째기 시전하는 우리가 아는 패턴의 전형적인 쓰레기 인간입니다.

다른 피해자들이 없기를 바랍니다.')

Talk.create!(id: 7, user_id: 1, title: '손목터널증후군 조심하세요', content: '
오랜시간 마우스 쓰시는 분들은 일반 마우스는 쓰면 안되고
손목에 안 좋은 느낌 오시는 분들은 당장 버티컬 마우스로 바꾸세요
저도 방심하고 오랜시간 일반 마우스 쓰다가 터널증후군 증상 와서 바로 버티컬 마우스로 바꿔 쓴 이후로는 괜찮아졌습니다.')

Talk.create!(id: 8, user_id: 1, title: '불법복제 절대로 안되요', content: '
예전에는 저도 mp3고 영화고 불법다운받어 썼었는데
그 때도 10손가락에 뽑을 정도였지요 <= 비겁한 변명입니다

그러다가 나쁜것이라는것을 점점 더 알게 되고 불법은 안 한지 10년은 넘은것 같네요
노래도 결제해서 듣고, 영화는 영화관 가서 보고 아니면 마냥 기달리면 케이블 TV에서 해주니  불법을 저지를 일이 없지요
특히 프로그램을 만드는 우리, 회사에서 불법프로그램 쓰는것은 정말 말이 안됨
지네도 만들어서 납품하고 돈 못받아도 할 말 없는것이지요
그런데 당당히 불법 프로그램 써서 돈 버는거 보면 참 어이가 없음, 사장들 마인드가 글러 먹었음,  왜 요즘은 단속 안하지요??

윈도우나 오피스, 포토샵등 프로그램도 돈 주고 정품 써야지요
저는 불법 안 저지르고 리눅스에 오픈 오피스 씁니다.')


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
서로 교류라도 많이 했었으면 역사가 더 재미있었을듯한데 아쉽네요')

Talk.create!(id: 10, user_id: 1, title: 'MS 클라우드(Azure) 좋네요??', content: '
예전에 해볼라고 깔작대다가 안하고 AWS만 쓰고 있었는데

이번  AWS사태도 있고 해서 옮길라고 해봤더니

인터페이스를 비롯해서 여러면에서 마음에 드네요


무료1년으로 주는 사양도 지금 유료로 쓰는 AWS보다도 좋은듯? -.-;;

VScode도 그렇고 이번 Azure까지 MS팬 될 듯, 아 IIS,MSSQL도 좋아합니다

단지 OS는 집이던 회사던 리눅스지만..  ㅎㅎ')



Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스를 위한 PHP 설치, 설정', content: '워드프레스 설치는 이렇게',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp")) })
Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스 설치,설정', content: '워드프레스 설치,설정' ,blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp")) })
Blog.create!(user_id:1, program_language_id: 3, blog_category_id:1, title: '워드프레스 시작하기', content: '워드프레스 시작하기',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "PHP-logo.webp")) })