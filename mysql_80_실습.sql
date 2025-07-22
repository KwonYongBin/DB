/**
* MYSQL :: 정형 데이터를 저장하는 데이터베이스
- SQL 문법을 사용하여 데이터를 CRUD 한다.
- C(Create:생성, insert)
- R(Read:조회, select)
- U(Update:수정, update)
- D(Delete:삭제, delete)
- 개발자는 DML에 대한 CRUD 명령어를 잘 사용할 수 있어야한다!!!
- SQL은 대/소 문자 구분하지 않음, 보통 소분자로 작성
- snake 반식의 네이밍 규칙을 가짐
- SQL은 크게 DDL, DML, DCL, DTL로 구분할 수 있다.
1. DDL(Data Definition Language) : 데이터 정의어
   : 데이터를 저장하기 위한 공간을 생성하고 논리적으로 정의하는 언어
   : Create, alter, truncate, drop
2. DML(Data Manipulation Language) : 데이터 조직어
   : 데이터를 CRUD하는 명령어
   : insert, select, update, delete
3. DCl(Data Control Language) : 데이터 제어어
   : 데이터에 대한 권한과 보안을 정의하는 언어
   : grant, revoke
3. DTL(Data Transaction Language, TCL) : 트랜잭션 제어어
   : 데이터베이스의 처리 작업 단위인 트랜잭션을 관리하는 언어
   : commit, save, rollback
*/


/* 반드시 기억 */
show databases; -- 모든 데이터베이스 조회 
use hrdb2019; -- 사용할 데이터베이스 오픈
select database(); -- 데이터베이스 선택
show tables; -- 데이터베이스의 모든 테이블 조회

/****************************************
	DESC(DESCRIBE): 테이블 구조 확인
	형식 > desc(describe) [테이블명];
*****************************************/
show tables;
desc employee;
desc department;
desc unit;
desc vacation;

/****************************************
	SELECT : 테이블 내용 조회
	형식 > SELECT [컬럼리스트] FROM [테이블명];
*****************************************/
select emp_id, emp_name from employee; -- id, 이름 확인 명령어
select * from employee; -- 모든 데이터 확인 명령어
select emp_name, gender, hire_date from employee;

-- 사원의테이블의 사번, 사원명, 성별, 입사일 급여를 조회
desc employee;
select emp_id, emp_name, gender, hire_date, salary
from employee;

-- 부서테이블의 모든 정보조회
select * from department;

-- AS : 컬럼명 별칭 부여
-- 형식 > SELECT [컬럼명 as 별칭, ...] from [테이블명]
-- 사원테입르의 사번, 사원명, 성별, 입사일, 급여 컬럼을 조회한 한글 컬럼명으로 출력
select emp_id as 사번, emp_name as "사 원 명", gender as 성별, hire_date 입사일, salary 급여
from employee;

-- 사원테입르의 ID, name, gender, hdate, salary 컬럼명으로 출력
select emp_id as id, emp_name as name, gender, hire_date as hdate, salary
from employee;

-- 사원 테이블의 사번, 사원명, 부서명, 이메일, 급여, 보너스(급여*10%)를 조회
-- 기존의 컬럼에 연산을 수행하여 새로운 컬럼을 생성할 수 있다
desc employee;
select emp_id, emp_name, dept_id, phone, email, salary, salary*10 as 보너스
from employee;

-- 현재 날짜를 조회 : curdate()
select curdate() as date from dual;

/****************************************
	SELECT : 테이블 내용 상세 조회
	형식 > SELECT [컬럼리스트] 
		FROM [테이블명]
		WHERE [조건식];
*****************************************/
-- 정주고 사원의 정보를 조회
select * from employee;
select * from employee
where emp_name = "정주고"; -- 문자열은 항상 더블쿼테이션을 감싸준다 (mysql은 더블, 싱글쿼테이션 모두 사용 가능함)

-- sys 부서에 속한 모든 사원을 조회alter
select * from employee where dept_id = "sys";










