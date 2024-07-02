-- 제품 테이블 생성
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL
);

-- 재고 로그 테이블 생성
CREATE TABLE inventory_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    game_date INT NOT NULL,  -- 게임 내 날짜를 나타내는 정수값
    product_id INT,
    quantity INT NOT NULL,
    description VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
