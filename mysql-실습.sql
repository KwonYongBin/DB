/******************************************************
		실습 데이터베이스 연결 : myshop2019
		실습 내용 - 기본적인 데이터 조회 	 
******************************************************/
select * from order_header;

-- Q01) customer 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
desc customer;
-- Q02) employee 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
desc employee;

-- Q03) product 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
desc product;

-- Q04) order_header 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
desc order_header;

-- Q05) order_detail 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
desc order_detail;

-- Q06) 모든 고객의 아이디, 이름, 지역, 성별, 이메일, 전화번호를 조회하세요.
select *
from customer;

-- Q07) 모든 직원의 이름, 사원번호, 성별, 입사일, 전화번호를 조회하세요.
select *
from employee;

-- Q08) 이름이 '홍길동'인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point 
from customer
where customer_name = '홍길동';

-- Q09) 여자 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where gender = 'f';

-- Q10) '울산' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where city = '울산';

-- Q11) 포인트가 500,000 이상인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where point >= 500000;

-- Q12) 이름에 공백이 들어간 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where customer_name like '% %';

-- Q13) 전화번호가 010으로 시작하지 않는 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where phone not like '010%';

-- Q14) 포인트가 500,000 이상 '서울' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where point >= 500000 and city = '서울';

-- Q15) 포인트가 500,000 이상인 '서울' 이외 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where point >= 500000 and city not like '서울';

-- Q16) 포인트가 400,000 이상인 '서울' 지역 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where point >= 400000 and gender like 'm' and city like '서울';

-- Q17) '강릉' 또는 '원주' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where city like '강릉' or city like '원주';

-- Q18) '서울' 또는 '부산' 또는 '제주' 또는 '인천' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where city like '서울' or city like '부산' or city like '제주' or city like '인천';

-- Q19) 포인트가 400,000 이상, 500,000 이하인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, point
from customer
where point >= 400000 and point <= 500000;

-- Q20) 1990년에 출생한 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, birth_date, point
from customer
where substring(birth_date, 1, 4) = '1990';

-- Q21) 1990년에 출생한 여자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, birth_date, point
from customer
where substring(birth_date, 1, 4) = '1990' and gender = 'f';

-- Q22) 1990년에 출생한 '대구' 또는 '경주' 지역 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, birth_date, point
from customer
where substring(birth_date, 1, 4) = '1990' and gender like 'm' and (city = '대구' or city = '경주');

-- Q23) 1990년에 출생한 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
--      단, 홍길동(gildong) 형태로 이름과 아이디를 묶어서 조회하세요.
select concat( customer_name, '/', customer_id) as customer_name, gender, city, phone, birth_date, point
from customer
where substring(birth_date, 1, 4) like '1990' and gender like 'm';

-- Q24) 근무중인 직원의 이름, 사원번호, 성별, 전화번호, 입사일를 조회하세요.
select employee_id, employee_name, gender, phone, hire_date
from employee;

-- Q25) 근무중인 남자 직원의 이름, 사원번호, 성별, 전화번호, 입사일를 조회하세요.
select employee_id, employee_name, gender, phone, hire_date
from employee
where gender = 'm';

-- Q26) 퇴사한 직원의 이름, 사원번호, 성별, 전화번호, 입사일, 퇴사일를 조회하세요.
select employee_id, employee_name, gender, phone, hire_date , retire_date
from employee
where retire_date is not null;

-- Q27) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 고객아이디를 기준으로 오름차순 정렬해서 조회하세요. customer employee order_header
select order_id, customer_id, employee_id, order_date, sub_total, delivery_fee, total_due
from order_header
where order_date between '2019-01-01' and '2019-01-07';

-- Q28) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 전체금액을 기준으로 내림차순 정렬해서 조회하세요.
select order_id, customer_id, employee_id, order_date, sub_total, delivery_fee, total_due
from order_header
where order_date between '2019-01-01' and '2019-01-07'
order by total_due desc;

-- Q29) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 사원번호를 기준으로 오름차순, 같은 사원번호는 주문일시를 기준으로 내림차순 정렬해서 조회하세요.
select order_id, customer_id, employee_id, order_date, sub_total, delivery_fee, total_due
from order_header
where order_date between '2019-01-01' and '2019-01-07'
order by employee_id asc, order_date desc;

/**
	그룹함수
**/
/** customer 테이블 사용 **/
-- Q01) 고객의 포인트 합을 조회하세요.
select sum(point)
from customer;

-- Q02) '서울' 지역 고객의 포인트 합을 조회하세요.
select sum(point), city
from customer
where city = '서울';

-- Q03) '서울' 지역 고객의 수를 조회하세요.
select city, count(*)
from customer
where city = '서울';

-- Q04) '서울' 지역 고객의 포인트 합과 평균을 조회하세요.
select 	city, sum(point), avg(point)
from customer
where city = '서울';

-- Q05) '서울' 지역 고객의 포인트 합, 평균, 최댓값, 최솟값을 조회하세요.
select 	city 지역,
        sum(point) 총합,
        avg(point) 평균,
        max(point) 최대값,
        min(point) 최소값
from customer
where city = '서울';

-- Q06) 남녀별 고객의 수를 조회하세요.
select 	gender 성별, count(*) 합
from customer
group by gender;

-- Q07) 지역별 고객의 수를 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select 	city 지역, count(*) 합
from customer
group by city
order by city desc;
 
-- Q08) 지역별 고객의 수를 조회하세요.
--      단, 고객의 수가 10명 이상인 행만 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select city, count(*)
from customer
group by city
having count(*) >=10
order by city asc;

-- Q09) 남녀별 포인트 합을 조회하세요.
select 	gender 성별, sum(point)
from customer
group by gender;

-- Q10) 지역별 포인트 합을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select 	city 지역, ifnull(sum(point), 0) 포인트
from customer
group by city
order by city;
    
-- Q11) 지역별 포인트 합을 조회하세요.
--      단, 포인트 합이 1,000,000 이상인 행만 포인트 합을 기준으로 내림차순 정렬해서 조회하세요.
select 	city 지역, ifnull(sum(point), 0) 포인트
from customer
group by city
having sum(point) >= 1000000
order by city desc;
      
-- Q12) 지역별 포인트 합을 조회하세요.
--      단, 포인트 합을 기준으로 내림차순 정렬해서 조회하세요.
select 	city 지역, ifnull(sum(point), 0) 포인트
from customer
group by city
order by 포인트 desc;

-- Q13) 지역별 고객의 수, 포인트 합을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select 	city 지역, count(*) as 고객수, ifnull(sum(point), 0) 포인트
from customer
group by city
order by city asc;

-- Q14) 지역별 포인트 합, 포인트 평균을 조회하세요.
--      단, 포인트가 NULL이 아닌 고객을 대상으로 하며, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select 	city 지역,
        format(sum(point), 0) point,
        format(avg(point), 0) 평균
from customer
where point is not null
group by city
order by city asc;

-- Q15) '서울', '부산', '대구' 지역 고객의 지역별, 남녀별 포인트 합과 평균을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순, 같은 지역은 성별을 기준으로 오름차순 정렬해서 조회하세요.
select city as 지역, gender as 성별,
		format(sum(point), 0) as 합계,
        format(avg(point), 0) as 평균
from customer
where city in ('서울', '부산', '대구') 
group by city, gender
order by city asc, gender asc;

/** order_header 테이블 사용 **/
-- Q16) 2019년 1월 주문에 대하여 고객아이디별 전체금액 합을 조회하세요.
SELECT order_date, customer_id,
       sum(total_due) as 합계
from order_header
where order_date  between '2019-01-01' and '2019-01-31'
GROUP BY order_date, customer_id;

-- Q17) 주문연도별 전체금액 합계를 조회하세요.
select year(order_date) as 연도, sum(total_due) as 합계
from order_header
group by year(order_date);

-- Q18) 2019.01 ~ 2019.06 기간 주문에 대하여 주문연도별, 주문월별 전체금액 합을 조회하세요.
select substring(order_date, 1, 7), sum(total_due) as 합계
from order_header
where order_date between cast('20190101' as date) and cast('20190630' as date)
group by substring(order_date, 1, 7);

-- Q19) 2019.01 ~ 2019.06 기간 주문에 대하여 주문연도별, 주문월별 전체금액 합과 평균을 조회하세요.
select substring(order_date, 1, 7) as 월별, format(sum(total_due), 0) as 합계, format(avg(total_due), 0) as 평균
from order_header
where order_date between cast('20190101' as date) and cast('20190630' as date)
group by substring(order_date, 1, 7);

-- Q20) 주문연도별, 주문월별 전체금액 합과 평균을 조회하고, rollup 함수를 이용하여 소계와 총계를 출력해주세요.
select 	substring(order_date, 1, 4),
		substring(order_date, 6,2),
		sum(total_due),
        avg(total_due)
from order_header
group by substring(order_date, 1, 4),
		 substring(order_date, 6, 2) with rollup;



/**
	테이블 조인 : 기본 SQL 방식, ANSI SQL
*/
select * from order_detail;

-- Q01) 전체금액이 8,500,000 이상인 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 전체금액을 조회하세요.
select o.order_id, c.customer_id, e.employee_id, o.order_date, o.total_due
from customer c 
	 inner join order_header o
	 on c.customer_id = o.customer_id
     inner join employee e
     on o.employee_id = e.employee_id
     where total_due >= 8500000;
     
-- Q02) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 고객이름도 같이 조회되게 수정하세요.
select o.order_id, c.customer_id, e.employee_id, o.order_date, o.total_due, customer_name
from customer c 
	 inner join order_header o
	 on c.customer_id = o.customer_id
     inner join employee e
     on o.employee_id = e.employee_id
     where total_due >= 8500000;
     
-- Q03) Q01 쿼리를 복사해 붙여 넣은 후 직원이름도 같이 조회되게 수정하세요.
select o.order_id, c.customer_id, e.employee_id, o.order_date, o.total_due, customer_name, employee_name
from customer c 
	 inner join order_header o
	 on c.customer_id = o.customer_id
     inner join employee e
     on o.employee_id = e.employee_id
     where total_due >= 8500000;
     
-- Q04) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 고객이름, 직원이름도 같이 조회되게 수정하세요.
select o.order_id, c.customer_id, e.employee_id, o.order_date, o.total_due, customer_name, employee_name
from customer c 
	 inner join order_header o
	 on c.customer_id = o.customer_id
     inner join employee e
     on o.employee_id = e.employee_id
     where total_due >= 8500000;
     
-- Q05) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 전체금액이 8,500,000 이상인 '서울' 지역 고객만 조회되게 수정하세요.
select o.order_id, c.customer_id, e.employee_id, o.order_date, o.total_due, customer_name, employee_name, c.city
from customer c 
	 inner join order_header o
	 on c.customer_id = o.customer_id
     inner join employee e
     on o.employee_id = e.employee_id
     where total_due >= 8500000 and city = '서울';
     
-- Q06) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 전체금액이 8,500,000 이상인 '서울' 지역 '남자' 고객만 조회되게 수정하세요.
select o.order_id, c.customer_id, e.employee_id, o.order_date, o.total_due, customer_name, employee_name, c.city, c.gender
from customer c 
	 inner join order_header o
	 on c.customer_id = o.customer_id
     inner join employee e
     on o.employee_id = e.employee_id
     where o.total_due >= 8500000 and c.city = '서울' and c.gender = 'm';
     
-- Q07) 주문수량이 30개 이상인 주문의 주문번호, 상품코드, 주문수량, 단가, 지불금액을 조회하세요.
select o1.order_id, p.product_id, o2.order_qty, o2.unit_price, o2.line_total
from order_header o1 
	 inner join order_detail o2
     on o1.order_id = o2.order_id
     inner join product p
     on o2.product_id = p.product_id
where o2.order_qty >= 30;

-- Q08) 위에서 작성한 쿼리문을 복사해서 붙여 넣은 후 상품이름도 같이 조회되도록 수정하세요.
select o1.order_id, p.product_id, o2.order_qty, o2.unit_price, o2.line_total,  p.product_name
from order_header o1 
	 inner join order_detail o2
     on o1.order_id = o2.order_id
     inner join product p
     on o2.product_id = p.product_id
where o2.order_qty >= 30;

-- Q09) 상품코드, 상품이름, 소분류아이디를 조회하세요.
select p.product_id, p.product_name, p.sub_category_id
from order_detail o
	 inner join product p
     on o.product_id = p.product_id;

-- Q10) 위에서 작성한 쿼리문을 복사해서 붙여 넣은 후 소분류이름, 대분류아이디가 조회되게 수정하세요.
select p.product_id, p.product_name, o.order_id, o.drder_detail_id
from order_detail o
	 inner join product p
     on o.product_id = p.product_id;
     
-- Q11) 다정한 사원이 2019년에 주문한 상품명을 모두 출력해주세요.
select e.employee_name, o1.order_date, p.product_name
from employee e
	 inner join order_header o1
     on e.employee_id = o1.employee_id
     inner join order_detail o2
     on o1.order_id = o2.order_id
     inner join product p
     on o2.product_id = p.product_id
     where e.employee_name = '다정한' and substring(order_date, 1,4) = '2019';
     
-- Q12) 청소기를 구입한 고객아이디, 사원번호, 주문번호, 주문일시를 조회하세요.
select c.customer_id, e.employee_id, h.order_id, h.order_date, p.product_name
from customer c
	 inner join order_header h
     on c.customer_id = h.customer_id
     inner join employee e
     on e. employee_id = h.employee_id
     inner join order_detail d
     on h.order_id = d.order_id
     inner join product p
     on d.product_id = p.product_id
     where p.product_name like '%청소기%';