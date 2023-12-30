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

Blog.create!(id: 1, user_id:1, blog_category_id:1, title: '루비설치',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png"))}, content: '루비 온 레일즈 프로그램을 설치하려면 당연히 루비 부터 설치해야 됩니다.
          이름부터가 루비 온 레일즈로 루비로 만들어진 프레임워크입니다.
          루비를 설치하기 위해서는 여러 선택지가 존재하며 각 OS마다 약간의 차이가 있습니다.')
Blog.create!(id: 2, user_id:1, blog_category_id:1, title: '레일즈설치', content: 'asdgfsdg' ,blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 3, user_id:1, blog_category_id:1, title: 'gem,bundler', content: 'asdgfsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 4, user_id:1, blog_category_id:1, title: 'rake migrate',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) }, content: 'rake는 레일즈의 여러 필요작업들을 처리해주는 명령어로 어느 책에서 봤던것 처럼 든든한 조수를 데리고 작업하는 것과 같은 느낌입니다.
rake(조수) 이것(옵션) 처리해줘  하는 식으로 명령어를 주면 레일즈를 제작, 배치 하면서 처리해야 하는 일들을 편리하게 처리해 줍니다.

migrate 지금은 다른 프레임워크들도 사용하여 얼마간 익숙한 개념일것이라고 생각됩니다.
레일즈의 마이그레이션은 역시 든든한 조수인 rake에 의해 처리 됩니다.

rake db:create  => rake, DB 만들어줘
rake db:migrate => rake, 마이그레션 해줘
rake db:seed    => rake, 시작 데이터 입력 해줘

이런 식으로 rake를 이용하여 DB생성, 마이그레이션, 시작데이터 입력을 처리할 수 있습니다.
')
Blog.create!(id: 5, user_id:1, blog_category_id:1, title: 'npm, yarn',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) },content: 'ㅁㄴㅇㅎㅁㄶ')
Blog.create!(id: 6, user_id:1, blog_category_id:1, title: '개발서버 설치설정', content: 'asdgfsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 7, user_id:1, blog_category_id:1, title: '실서버 설치설정', content: 'asdgfsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 8, user_id:1, blog_category_id:4, title: 'git', content: 'asdgfsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) })
Blog.create!(id: 9, user_id:1, blog_category_id:4, title: '카피스트라노(capistrano)를 이용한 배포',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "rails_welcome.png")) }, content: 'ㄴㅇ론ㅇ로')

QuestionCategory.create!(id: 1, title: '설치,설정')
QuestionCategory.create!(id: 2, title: 'Gem, Bundler')
QuestionCategory.create!(id: 3, title: 'Controller, 함수,기능')
QuestionCategory.create!(id: 4, title: 'View, ERB,Builder')
QuestionCategory.create!(id: 5, title: 'Model,ORM,Database')
QuestionCategory.create!(id: 6, title: '기타')

Question.create!(id: 1, question_category_id: 1, user_id: 1, title: '뭐지요', content: '적산의뢰1 내용')
Question.create!(id: 2, question_category_id: 1, user_id: 2, title: '뭐지요', content: '적산의뢰2 내용')
Question.create!(id: 3, question_category_id: 2, user_id: 3, title: '뭐지요', content: '설계의뢰1 내용')
Question.create!(id: 4, question_category_id: 3, user_id: 4, title: '날짜표시 예쁘게 하려면 어떻게 하나요?', content: '날짜 나오게 하면 2024-01-01 이런식으로 나오는데
이거 다른 방법으로 예쁘게 나오게 만들수 있나요?')


Answer.create!(id: 1, user_id:1, question_id: 4, content: '날짜 나오게 하려면 <%= I18n.l article.created_at.to_date, :format => :long %>
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

Gallery.create!(user_id: 1, title: '멋진나1', content: '멋진나1',:photo=>File.open(Rails.root.join("app", "assets", "images", "1.jpg")))
Gallery.create!(user_id: 1, title: '멋진나2', content: '멋진나2',:photo=>File.open(Rails.root.join("app", "assets", "images", "2.jpg")))
Gallery.create!(user_id: 1, title: '멋진나3', content: '멋진나3',:photo=>File.open(Rails.root.join("app", "assets", "images", "3.jpg")))
Gallery.create!(user_id: 1, title: '멋진나4', content: '멋진나4',:photo=>File.open(Rails.root.join("app", "assets", "images", "4.jpg")))


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
