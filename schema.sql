-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS ConvenienceStoreSimulation;
USE ConvenienceStoreSimulation;

-- 테이블 생성

-- Stores 테이블: 편의점 정보를 저장
CREATE TABLE Stores ( 
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,          -- 인수가격/월세 (0-100)
    area INT NOT NULL            -- 면적 (0-100)
);

-- Residents 테이블: 주민 정보를 저장
CREATE TABLE Residents (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    diligence INT NOT NULL,          -- 성실성 (1-100)
    kindness INT NOT NULL,           -- 친절도 (1-100)
    aggressiveness INT NOT NULL,     -- 공격성 (1-100)
    cleanliness_preference INT NOT NULL,  -- 청결도 선호도 (1-100)
    variety_preference INT NOT NULL       -- 다양성 선호도 (1-100)
);

-- Employees 테이블: 직원 정보를 저장
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10, 2) NOT NULL,       -- 급여
    hire_date BIGINT NOT NULL,            -- 고용 날짜 (timestamp)
    diligence INT NOT NULL,               -- 성실성 (1-100)
    kindness INT NOT NULL,                -- 친절도 (1-100)
    aggressiveness INT NOT NULL,          -- 공격성 (1-100)
    skill_level INT NOT NULL,             -- 기술 레벨 (1-100)
    fatigue INT NOT NULL,                 -- 피로도 (0-100)
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

-- Products 테이블: 제품 정보를 저장
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,                -- 수량
    price DECIMAL(10, 2) NOT NULL,        -- 가격
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

-- Reviews 테이블: 리뷰 정보를 저장
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    customer_name VARCHAR(100) NOT NULL,  -- 고객 이름
    rating INT NOT NULL,                  -- 평점 (1-5)
    comment TEXT,                         -- 리뷰 코멘트
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);


-- 샘플 데이터 삽입

-- Stores 샘플 데이터
INSERT INTO Stores (name, cleanliness, friendliness, price, area) VALUES
('편의점A', 90, 80, 70, 50),
('편의점B', 85, 85, 65, 60),
('편의점C', 88, 78, 75, 55);

-- Residents 샘플 데이터
INSERT INTO Residents (name, age, diligence, kindness, aggressiveness, cleanliness_preference, variety_preference) VALUES
('주민1', 25, 70, 80, 60, 75, 85),
('주민2', 30, 85, 75, 65, 80, 70),
('주민3', 40, 65, 85, 55, 70, 75);

-- Employees 샘플 데이터
INSERT INTO Employees (store_id, name, age, salary, hire_date, diligence, kindness, aggressiveness, skill_level, fatigue) VALUES
(1, '직원1', 28, 3000.00, 1622519100, 90, 85, 50, 70, 20),
(2, '직원2', 35, 3500.00, 1625111100, 85, 80, 55, 75, 25),
(3, '직원3', 40, 3200.00, 1627723500, 80, 75, 60, 65, 30);

-- Products 샘플 데이터
INSERT INTO Products (store_id, name, quantity, price) VALUES
(1, '제품1', 100, 1.50),
(2, '제품2', 200, 2.00),
(3, '제품3', 150, 1.75);

-- Reviews 샘플 데이터
INSERT INTO Reviews (store_id, customer_name, rating, comment) VALUES
(1, '고객1', 5, '아주 만족스러워요.'),
(2, '고객2', 4, '좋아요.'),
(3, '고객3', 3, '보통이에요.');