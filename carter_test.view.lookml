- connection: thelook

- explore: carter_orders
- view: carter_orders
  derived_table:
    sql: |
      select * from orders limit 10
    persist_for: 5 minutes
    indexes: [id]
  
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: status
    sql: ${TABLE}.status

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]
