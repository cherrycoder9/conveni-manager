-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS ConvenienceStoreSimulation;
USE ConvenienceStoreSimulation;

-- 테이블 생성

-- Stores 테이블: 편의점 정보를 저장
CREATE TABLE Stores (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    cleanliness INT NOT NULL,    -- 청결도 (0-100)
    friendliness INT NOT NULL,   -- 친절도 (0-100)
    price INT NOT NULL,          -- 가격 (0-100)
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