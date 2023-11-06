# 学習元サイト(SpecialThanks)

https://sqlab.net/

# 問題文

### id が 1 のデータを削除後、イベント一覧を取得してください。

※ DB: PostgreSQL ver14.4

# SQL

```sql
DELETE  FROM events WHERE id = 1;
SELECT * FROM events;
```

# 実行前

| id  | name                       | max_num |
| --- | -------------------------- | ------- |
| 1   | 私達はなぜ世界を旅するのか | 30      |
| 2   | 最新の英語学習法を学ぼう   | 15      |

# 実行後

| id  | name                     | max_num |
| --- | ------------------------ | ------- |
| 2   | 最新の英語学習法を学ぼう | 15      |

# 備考

- DELETE のあとは\*などは不要
- DELETE の SQL のみだとレコードの削除しか行わないため、実行結果はなしになる(sqlab では)
