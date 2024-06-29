# 문제: 재고 관리 시스템 구현하기

## 문제 설명

편의점의 재고를 관리하는 시스템을 구현하세요. 이 시스템에서는 제품을 추가하고, 재고를 조회하며, 재고를 업데이트하는 기능을 구현해야 합니다.

## 요구사항

1. **제품 클래스 (Product)**
   - 멤버 변수:
     - `name` (String): 제품 이름
     - `quantity` (int): 제품 수량
     - `price` (double): 제품 가격
   - 생성자:
     - 모든 멤버 변수를 초기화하는 생성자
   - 메서드:
     - 각 멤버 변수의 getter와 setter
     - `toString()`: 제품 정보를 문자열로 반환

2. **편의점 클래스 (ConvenienceStore)**
   - 멤버 변수:
     - `name` (String): 편의점 이름
     - `products` (ArrayList<`Product`>): 제품 목록
   - 생성자:
     - 편의점 이름을 초기화하고, 제품 목록을 빈 ArrayList로 초기화하는 생성자
   - 메서드:
     - `addProduct(Product product)`: 제품을 목록에 추가
     - `viewProducts()`: 현재 재고 목록을 출력
     - `updateProductQuantity(String productName, int newQuantity)`: 제품의 수량을 업데이트
     - `findProduct(String productName)`: 제품 이름으로 제품을 찾아 반환

3. **메인 클래스 (Main)**
   - 사용자 입력을 받아 제품을 추가하고, 재고를 조회하며, 재고를 업데이트하는 기능을 구현

## 문제 해결 단계

1. **Product 클래스 구현**:
   - 제품의 이름, 수량, 가격을 나타내는 멤버 변수를 가진 Product 클래스를 작성합니다.
   - 생성자와 getter/setter 메서드, toString 메서드를 구현합니다.

2. **ConvenienceStore 클래스 구현**:
   - 편의점 이름과 제품 목록을 나타내는 멤버 변수를 가진 ConvenienceStore 클래스를 작성합니다.
   - 생성자와 제품 추가, 조회, 업데이트 메서드를 구현합니다.
   - 제품 이름으로 제품을 찾는 findProduct 메서드를 구현합니다.

3. **Main 클래스 구현**:
   - 사용자 입력을 받아 편의점의 재고를 관리할 수 있는 콘솔 프로그램을 작성합니다.
   - while 루프를 사용하여 사용자로부터 명령을 반복적으로 입력받고 처리합니다.
