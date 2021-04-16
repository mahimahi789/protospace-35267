# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | NOT NULL    |
| email    | string | NOT NULL    |
| password | string | NOT NULL    |
| profile  | text   | NOT NULL    |
| occupation | text | NOT NULL    |
| position | text   | NOT NULL    |

## prototypes テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | NOTNULL     |
| catch_copy | text | NOTNULL   |
| concept | text  | NOTNULL     |
| image  | ------ | ----------- |
| user   | references | ----------- |

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | ------------------------------ |
| text   | text       | NOT NULL                       |
| prototype | references | ------------------------------ |

