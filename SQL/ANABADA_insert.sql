-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
DELETE FROM `mydb`.`user`;

INSERT INTO `mydb`.`user`
(`user_email`,
`user_nick`,
`user_pwd`,
`user_phone`,
`user_addr`,
`user_nation`)
VALUES
('anabada@gmail.com',
'anabada',
'1111',
'01012345678',
'서울시 강남구 삼성동 SICT 사무실',
'한국'
);


INSERT INTO `mydb`.`user`
(`user_email`,
`user_nick`,
`user_pwd`,
`user_phone`,
`user_addr`,
`user_nation`)
VALUES
('ptsd@gmail.com',
'ptsd',
'3333',
'008114865342424',
'서울시 강남구 역삼동 I-Park 102동 1001호',
'일본'
);

-- -----------------------------------------------------
-- Table `mydb`.`character`
-- -----------------------------------------------------
DELETE FROM `mydb`.`character`;

INSERT INTO `mydb`.`character`
(`char_id`,
`char_name`,
`char_grade`,
`char_one`,
`char_two`,
`char_three`)
VALUES
('ch0001',
'다마고치',
'S',
'one.jpg',
'two.jpg',
'three.jpg');


-- -----------------------------------------------------
-- Table `mydb`.`user_character`
-- -----------------------------------------------------

DELETE FROM `mydb`.`user_character`;

INSERT INTO `mydb`.`user_character`
(`uChar_id`,
`user_email`,
`character_char_id`)
VALUES
('uch0001',
'anabada@gmail.com',
'ch0001');


-- -----------------------------------------------------
-- Table `mydb`.`char_temp`
-- -----------------------------------------------------

DELETE FROM `mydb`.`char_temp`;

INSERT INTO `mydb`.`char_temp`
(`cTemp_id`,
`user_email`,
`cTemp_name`,
`cTemp_grade`,
`cTemp_one`,
`cTemp_two`,
`cTemp_three`)
VALUES
('ct0001',
'anabada@gmail.com',
'준비중',
'ST',
'oneT.jpg',
'twoT.jpg',
'threeT.jpg');



-- -----------------------------------------------------
-- Table `mydb`.`egg`
-- -----------------------------------------------------

DELETE FROM `mydb`.`egg`;

INSERT INTO `mydb`.`egg`
(`egg_id`,
`egg_file`)
VALUES
('e0001',
'egg.jpg');

-- -----------------------------------------------------
-- Table `mydb`.`inquiry`
-- -----------------------------------------------------

DELETE FROM `mydb`.`inquiry`;

INSERT INTO `mydb`.`inquiry`
(`inq_id`,
`user_email`,
`inq_category`,
`inq_title`,
`inq_content`,
`inq_answer`)
VALUES
('inq0001',
'anabada@gmail.com',
'배송문의',
'배송 도착이라고 하는데 못받음',
'배송 도착 완료라고 뜨는데 택배를 받지 못했습니다. 결제한지가 언젠데 왜 아직도 안오나요?',
'ㅈㅅ');


-- -----------------------------------------------------
-- Table `mydb`.`report`
-- -----------------------------------------------------

DELETE FROM `mydb`.`report`;

INSERT INTO `mydb`.`report`
(`report_id`,
`user_email`,
`report_reported`,
`report_category`,
`report_url`,
`report_comment`,
`report_answer`)
VALUES
('rp0001',
'anabada@gmail.com',
'ptsd@gmail.com',
'사기 신고',
'https://www.google.com/',
'사기 당했습니다. 돈을 보내줬는데 제품을 안보내줍니다.',
'안전거래를 이용해주세요.');


-- -----------------------------------------------------
-- Table `mydb`.`file`
-- -----------------------------------------------------

DELETE FROM `mydb`.`file`;

INSERT INTO `mydb`.`file`
(`file_id`,
`board_status`,
`board_no`,
`file_origin`,
`file_saved`)
VALUES
('f0001',
'중고거래',
'u0001',
'origin.jpg',
'saved.jpg');


-- -----------------------------------------------------
-- Table `mydb`.`chatRoom`
-- -----------------------------------------------------
DELETE FROM `mydb`.`chatroom`;

INSERT INTO `mydb`.`chatroom`
(`chatRoom_id`,
`user_email`)
VALUES
('chr0001',
'anabada@gmail.com');

-- -----------------------------------------------------
-- Table `mydb`.`chat`
-- -----------------------------------------------------

DELETE FROM `mydb`.`chat`;

INSERT INTO `mydb`.`chat`
(`chat_id`,
`chatRoom_id`,
`user_email`,
`chat_contents`)
VALUES
('ch0001',
'chr0001',
'anabada@gmail.com',
'사기꾼이신가요?');


-- -----------------------------------------------------
-- Table `mydb`.`category`
-- -----------------------------------------------------

DELETE FROM `mydb`.`category`;

INSERT INTO `mydb`.`category`
(`category_id`,
`category_main`,
`category_mid`,
`category_sub`)
VALUES
('cate0001',
'전자기기',
'핸드폰',
'아이폰');


-- -----------------------------------------------------
-- Table `mydb`.`used_buy`
-- -----------------------------------------------------

DELETE FROM `mydb`.`used_buy`;

INSERT INTO `mydb`.`used_buy`
(`uBuy_id`,
`user_email`,
`category_id`,
`uBuy_title`,
`uBuy_content`)
VALUES
('ub0001',
'anabada@gmail.com',
'cate0001',
'아이폰 12pro 삼',
'아이폰 12pro 3만원에 삼');

-- -----------------------------------------------------
-- Table `mydb`.`location`
-- -----------------------------------------------------

DELETE FROM `mydb`.`location`;

INSERT INTO `mydb`.`location`
(`loc_id`,
`loc_name`,
`loc_lat`,
`loc_lon`) 	
VALUES
('loc0001',
'삼성 코엑스',
'37.5117',
'127.0592');

-- -----------------------------------------------------
-- Table `mydb`.`user_location`
-- -----------------------------------------------------

DELETE FROM `mydb`.`user_location`;


INSERT INTO `mydb`.`user_location`
(`uloc_id`,
`loc_id`,
`user_email`)
VALUES
('uloc0001',
'loc0001',
'anabada@gmail.com');



-- -----------------------------------------------------
-- Table `mydb`.`sale_location`
-- -----------------------------------------------------

DELETE FROM `mydb`.`sale_location`;

INSERT INTO `mydb`.`sale_location`
(`sloc_id`,
`loc_id`,
`user_email`)
VALUES
('sloc0001',
'loc0001',
'anabada@gmail.com');


-- -----------------------------------------------------
-- Table `mydb`.`used`
-- -----------------------------------------------------

DELETE FROM `mydb`.`used`;


INSERT INTO `mydb`.`used`
(`used_id`,
`user_email`,
`category_id`,
`used_title`,
`used_price`,
`used_content`,
`used_quality`,
`uloc_id`,
`sloc_id`)
VALUES
('u0001',
'anabada@gmail.com',
'cate0001',
'갤럭시 플립 팔아요',
1000000,
'갤럭시 플립 언박스 제품 팔아요. 완전 새재품입니다.',
'S',
'uloc0001',
'sloc0001');


-- -----------------------------------------------------
-- Table `mydb`.`rental`
-- -----------------------------------------------------

DELETE FROM `mydb`.`rental`;


INSERT INTO `mydb`.`rental`
(`rental_id`,
`user_email`,
`category_id`,
`rental_title`,
`rental_price`,
`rental_content`,
`rental_quality`,
`rental_sDate`,
`retal_eDate`,
`uloc_id`,
`sloc_id`)
VALUES
('r0001',
'anabada@gmail.com',
'cate0001',
'닌텐도 스위치 렌탈',
20000,
'남동생이 여행가서 닌텐도 스위치 렌탈해드립니다. 슈퍼마리오, 포켓몬스터 게임이 있어 필요하시면 같이 빌려드립니다.',
'B',
'2023-05-01',
'2023-06-30',
'uloc0001',
'sloc0001');


-- -----------------------------------------------------
-- Table `mydb`.`auction`
-- -----------------------------------------------------

DELETE FROM `mydb`.`auction`;

INSERT INTO `mydb`.`auction`
(`auction_id`,
`user_email`,
`category_id`,
`auction_title`,
`auction_finish`,
`auction_price`,
`auction_content`,
`auction_quality`,
`uloc_id`,
`sloc_id`)
VALUES
('a0001',
'anabada@gmail.com',
'cate0001',
'조말론 잉글리쉬 페어 앤 프리지아 센트 써라운드™ 디퓨저',
'2023-03-25',
'80000',
'조말론 디퓨저 오픈하지 않은 제품 팝니다. 정가는 14만 4천원 입니다.',
'S',
'uloc0001',
'sloc0001');


-- -----------------------------------------------------
-- Table `mydb`.`review`
-- -----------------------------------------------------

DELETE FROM `mydb`.`review`;


INSERT INTO `mydb`.`review`
(`review_id`,
`user_email`,
`review_person`,
`board_status`,
`board_no`,
`review_star`,
`review_comment`)
VALUES
('rev0001',
'anabada@gmail.com',
'ptsd@gmail.com',
'렌탈거래',
'r0001',
2,
'A급이라고 했는데 완전 C급이에요. 외관 상태도 안좋고 충전기 연결도 잘 안됩니다.');


-- -----------------------------------------------------
-- Table `mydb`.`board_temp`
-- -----------------------------------------------------

DELETE FROM `mydb`.`board_temp`;

INSERT INTO `mydb`.`board_temp`
(`bTemp_id`,
`user_email`,
`bTemp_title`,
`bTemp_price`,
`bTemp_content`,
`bTemp_finish`,
`sloc_id`)
VALUES
('bt0001',
'anabada@gmail.com',
'test',
100000,
'테스트 중입니다.',
'2023-11-11',
'sloc0001');


-- -----------------------------------------------------
-- Table `mydb`.`wish`
-- -----------------------------------------------------

DELETE FROM `mydb`.`wish`;

INSERT INTO `mydb`.`wish`
(`wish_id`,
`user_email`,
`board_status`,
`board_no`)
VALUES
('w0001',
'anabada@gmail.com',
'옥션거래',
'a0001');


-- -----------------------------------------------------
-- Table `mydb`.`used_detail`
-- -----------------------------------------------------

DELETE FROM `mydb`.`used_detail`;


INSERT INTO `mydb`.`used_detail`
(`uDetail_id`,
`used_id`,
`user_email`,
`uDetail_method`,
`uDetail_addr`,
`chat_id`,
`uDetail_price`)
VALUES
('ud0001',
'u0001',
'anabada@gmail.com',
'안전거래',
'서울시 용산구 용사역 4번출구 3번 계단',
'ch0001',
900000);


-- -----------------------------------------------------
-- Table `mydb`.`rental_detail`
-- -----------------------------------------------------

DELETE FROM `mydb`.`rental_detail`;

INSERT INTO `mydb`.`rental_detail`
(`rDetail_id`,
`rental_id`,
`user_email`,
`chat_id`,
`rDetail_addr`,
`rDetail_price`,
`rDetail_sDate`,
`rDetail_eDate`)
VALUES
('rd0001',
'r0001',
'anabada@gmail.com',
'ch0001',
'서울시 용산구 용사역 4번출구 3번 계단',
80000,
'2023-06-01',
'2023-06-29');


-- -----------------------------------------------------
-- Table `mydb`.`auction_detail`
-- -----------------------------------------------------

DELETE FROM `mydb`.`auction_detail`;


INSERT INTO `mydb`.`auction_detail`
(`aDetail_id`,
`auction_id`,
`user_email`,
`chat_id`,
`aDetail_addr`,
`aDetail_price`)
VALUES
('ad0001',
'a0001',
'anabada@gmail.com',
'ch0001',
'서울시 용산구 용사역 4번출구 3번 계단',
120000);



-- -----------------------------------------------------
-- Table `mydb`.`auction_bid`
-- -----------------------------------------------------

DELETE FROM `mydb`.`auction_bid`;

INSERT INTO `mydb`.`auction_bid`
(`aBid_id`,
`auction_id`,
`user_email`,
`bid_price`)
VALUES
('ab0001',
'a0001',
'anabada@gmail.com',
110000);



-- -----------------------------------------------------
-- Table `mydb`.`uTrade`
-- -----------------------------------------------------

DELETE FROM `mydb`.`utrade`;

INSERT INTO `mydb`.`utrade`
(`uTrade_id`,
`used_id`,
`uDetail_id`)
VALUES
('ut0001',
'u0001',
'ud0001');


-- -----------------------------------------------------
-- Table `mydb`.`rTrade`
-- -----------------------------------------------------

DELETE FROM `mydb`.`rtrade`;

INSERT INTO `mydb`.`rtrade`
(`rTrade_id`,
`rental_id`,
`rDetail_id`)
VALUES
('rt0001',
'r0001',
'rd0001');


-- -----------------------------------------------------
-- Table `mydb`.`aTrade`
-- -----------------------------------------------------

DELETE FROM `mydb`.`atrade`;


INSERT INTO `mydb`.`atrade`
(`aTrade_id`,
`auction_id`,
`aDetail_id`)
VALUES
('at0001',
'a0001',
'ad0001');