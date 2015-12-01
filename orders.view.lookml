- view: orders
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.created_at

  - dimension: day_of_year
    type: int
    sql: DATE_FORMAT(${created_date}, '%j')
    value_format: 'mm-dd'
    
  - dimension: status
    sql: ${TABLE}.status

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]

