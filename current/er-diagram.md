# 편의점 육성 시뮬레이션 ER다이어그램

```mermaid
erDiagram
    PRODUCTS ||--o{ INVENTORY_LOG : "has"
    PRODUCTS {
        int product_id PK
        varchar(100) name
        int price
    }
    INVENTORY_LOG {
        int log_id PK
        int game_date
        int product_id FK
        int quantity
        varchar(255) description
    }
```
