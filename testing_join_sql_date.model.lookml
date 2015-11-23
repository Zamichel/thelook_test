- connection: redtunnel

- explore: events_filtered
  hidden: false
  joins:
    - join: events
      sql_on: ${events_filtered.dvce_tstamp} = ${events.dvce_tstamp_month}
      
- view: events
  fields: 
  - dimension: dvce_tstamp
    type: time
    timeframes: [month]
    
- view: events_filtered
  derived_table:
    sql: |
      SELECT to_char(dvce_tstamp, 'YYYY-MM') as dvce_tstamp
      FROM events
      LIMIT 5
      
  fields:
  - dimension: dvce_tstamp
    sql: ${TABLE}.dvce_tstamp