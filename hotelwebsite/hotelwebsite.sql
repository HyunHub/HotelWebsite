create table hotel_member(
	member_id varchar2(20) not null primary key,
	member_pw varchar2(20),
	member_name varchar2(20),
	member_tel varchar2(20),
	member_addr varchar2(100),
	member_email varchar2(30),
	member_date date,
	member_del varchar2(2)
);

select * from hotel_member;

insert into hotel_member values('k1', '1234', '김미리', '010-1234-5678', '서울시 관악구', 'k1@daum.net', sysdate, 'n');
insert into hotel_member values('k2', '1234', '김현아', '010-2345-6243', '서울시 은평구', 'k2@naver.com', sysdate, 'n');
insert into hotel_member values('k3', '1234', '하수지', '010-4432-2847', '서울시 강남구', 'k3@gmail.com', sysdate, 'n');
insert into hotel_member values('admin', '1234', '관리자', '010-9999-0000', '서울시 마포구', 'admin@gmail.com', sysdate, 'n');

select * from hotel_board;

create table hotel_board(
	bd_num number not null primary key,
	member_id varchar2(20),
	bd_title varchar2(100),
	bd_content varchar2(2000),
	bd_date date,
	bd_count number default 0,
	bd_del varchar2(2),
	constraint fk_bd_id foreign key(member_id) references hotel_member(member_id)
);

insert into hotel_board values(1, 'admin', '공지사항입니다.', '공지사항 테스트입니다.', sysdate, 0, 'n');

select * from meeting;

create table meeting(
	met_num number not null primary key,
	met_category number,
	met_name varchar2(50),
	met_seat number
);
insert into meeting values(1, 1, '다이아몬드홀', 1200);
insert into meeting values(2, 2, '루비홀', 500);
insert into meeting values(3, 2, '사파이어홀', 300);
insert into meeting values(4, 3, '토파즈홀', 100);
insert into meeting values(5, 3, '진주홀', 100);
insert into meeting values(6, 3, '에메랄드홀', 50);

create table meeting_book(
	met_num number,
	member_id varchar2(20),
	mbk_title varchar2(100),
	mbk_date varchar2(50),
	mbk_sthour varchar2(20),
	mbk_edhour varchar2(20),
	mbk_seat varchar2(100),
	mbk_shape varchar2(20),
	mbk_etc varchar2(500),
    constraint pk_meeting_book primary key(met_num, mbk_date),
	constraint fk_met_num foreign key(met_num) references meeting(met_num),
	constraint fk_member_id foreign key(member_id) references hotel_member(member_id)
);
select * from meeting_book;
drop table meeting_book;

create table wedding(
	wed_num number not null primary key,
	wed_name varchar2(50),
	wed_seat number
);

insert into wedding values(1, '하모니홀', 600);
insert into wedding values(2, '플라워홀', 200);
insert into wedding values(3, '스카이홀', 80);
insert into wedding values(4, '부티크홀', 50);

create table wedding_book(
	wed_num number,
	member_id varchar2(20),
	wbk_date varchar2(50),
	wbk_hour varchar2(50),
	wbk_seat varchar2(100),
	wbk_counsel varchar2(100),
	wbk_etc varchar2(500),
	constraint pk_wedding_book primary key(wed_num, wbk_date, wbk_hour),
	constraint fk_wed_num foreign key(wed_num) references wedding(wed_num),
	constraint fk_wedding_id foreign key(member_id) references hotel_member(member_id)	
);
create table hotel_room(
   room_id varchar2(20) not null primary key,
   room_name varchar2(50),
   room_price varchar2(20)
);
drop table hotel_room;
select * from hotel_room;
insert into hotel_room values('1', '노멀 스탠다드','100000');
insert into hotel_room values('2', '비즈니스 스탠다드', '150000');
insert into hotel_room values('3', '그랜드 스탠다드','200000');

insert into hotel_room values('4', '비즈니스 디럭스','150000');
insert into hotel_room values('5', '그랜드 디럭스', '200000');
insert into hotel_room values('6', '블루 디럭스', '250000');
insert into hotel_room values('7', '블랙디럭스', '300000');

insert into hotel_room values('8', '슈페리어 스위트', '400000');
insert into hotel_room values('9', '로열 스위트', '500000');

create table room_book(
	room_id varchar2(20),
	member_id varchar2(20),
	rcheck_in varchar2(30),
	rcheck_out varchar2(30),
	rpeople varchar2(20),
	rbedtype varchar2(20),
	rservice varchar2(30),
	retc varchar2(200),
	constraint pk_room_book primary key(room_id, rcheck_in),
	constraint room_member_id foreign key(member_id) references hotel_member(member_id),
	constraint fk_room_id foreign key(room_id) references hotel_room(room_id)
);
drop table room_book;
select * from room_book;
create table restaurant(
	restaurant_num int primary key,
	restaurant_name varchar2(20),
	detail varchar2(800),
	hours varchar2(70),
	seats varchar2(70),
	restaurant_tel varchar2(20),
	restaurant_email varchar2(30),
	location varchar2(70)
);
create table booking(
	member_id varchar2(20),
	restaurant_num int,
	booking_name varchar2(20),
	booking_date varchar2(50),
	booking_hours varchar2(30),
	guests varchar2(30),
	request varchar2(300)
);
drop table booking;

alter table booking add constraint FK_CHILD2 foreign key (member_id) references hotel_member(member_id);

insert into restaurant values(1,'그랜드 키친','7m 높이의 시원한 공간감과 전면 통창이 돋보이는 그랜드 키친은 신선한 로컬 식재료들을 이용해 건강한 메뉴를 선보이는 뷔페 레스토랑입니다. 입구에서부터 홀까지 배치된 Kitchen piazza(라이브 스테이션)를 따라 셰프들이 요리하는 모습을 확인하실 수 있으며, 다양한 크기로 이루어진 총 11개의 별실이 준비되어 있어, 아늑한 분위기에서 프라이빗한 모임과 행사를 즐기기에도 제격입니다.',
'월요일 ~ 일요일 06:30 ~ 22:00', '294석 (별실 11개)','+82 2-313-1711','grandkitchen@hotelpro.co.kr', '프로젝트 인 서울 파르나스 1층');
insert into restaurant values(2,'무궁화','호텔 1층 안쪽에 자리한 무궁화는 정통 한식과 전세계의 요리를 조합해 탄생시킨 퓨전 한식을 선보입니다.국내외 오피니언 리더들에게 꾸준히 사랑받는 레스토랑입니다. 레스토랑 바로 앞에 실내 정원을 조성해 자연을 재현했으며 한국의 사계절을 모티프로 한 별실 13개가 준비되어 있습니다. 모든 기물은 지방 장인들이 직접 제작한 기물을 사용합니다.',
'월요일 ~ 일요일 11:30 ~ 22:00', '130석 (별실 13개 포함)','+82 2-313-1711','mugunghwa@hotelpro.co.kr', '프로젝트 인 서울 파르나스 1층');
set define off;
insert into restaurant values(3,'웨이다오','호텔 34층에 자리한 웨이다오(味道)는 ''맛의 누각'', ''맛의 정점''이라는 그 이름과 위치가 상징하듯, 가장 뛰어난 맛을 표방하는 모던 차이니즈 레스토랑입니다. 국내 최고의 베이징덕과 산지 직송 재료를 사용하여 맛을 낸 담백하고 건강한 산둥요리, 북경요리 등이 준비됩니다. 인테리어는 명, 청의 황실뿐 아니라 유럽의 황실까지 반하게 만든 동양 최고의 하이테크 ‘청화백자(靑華白磁)’를 모티브로 탄생했으며, 편안하고 여유로운 식사를 원하시는 고객들을 위해 전체 좌석의 70%를 별실로 구성했습니다.',
'월요일 ~ 일요일 11:30 ~ 22:00', '110석 (별실 11개)','+82 2-313-1711','weidao@hotelpro.co.kr', '프로젝트 인 서울 파르나스 34층');
insert into restaurant values(4,'Lounge & Bar','호텔 24층 뒷 편에 마련된 Lounge & Bar는 ''서양의 웅장함과 동양의 우아함''이 표현된 호텔을 대표하는 상징적인 공간으로, 각종 비즈니스 및 소셜 미팅을 진행하기에 최적의 장소입니다. 탁 트인 높은 천장과 한국의 전통 문양을 재현한 인테리어, 라이브러리를 컨셉으로 조성된 좌석에서 고객의 라이프스타일에 맞는 건강 음료와 라이브 뮤직, 여유로운 시간을 만나실 수 있습니다',
'월요일 ~ 일요일 09:00 ~ 22:00', '   144석','+82 2-313-1711','lounge_bar@hotelpro.co.kr', '프로젝트 인 서울 파르나스 24층');
insert into restaurant values(5,'티룸',' ''소중한 사람과 나를 위한 작은 사치(Small Luxury)''를 누릴 수 있는 티룸으로, 파르나스 타워와 연결된 시원한 아케이드 공간에서 마치 야외 테라스에 앉아 있는 듯한 여유로운 시간을 보내실 수 있습니다. 또한 숙련된 파티쉐가 준비하는 신선한 델리 아이템과 프리미엄 커피, 수석 소믈리에가 선정한 와인과 샴페인 등을 구입하실 수 있습니다.인테리어는 고급스러운 ''주얼리 샵''을
테마로 세계적으로 유명한 건축 및 설계 전문 회사인 록웰 그룹 (Rockwell Group)에서 디자인했으며, 유럽의 유명 디자이너 조지 젠슨(Georg Jensen)의 집기를 사용하고 있습니다.',
'월요일 ~ 일요일 08:00 ~ 21:00', '   24석','+82 2-313-1711','tearoom@hotelpro.co.kr', '프로젝트 인 서울 파르나스 1층');

select * from restaurant;




