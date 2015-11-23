- explore: derived
  
- view: derived
  extends: derived_table_test_alias
  
- view: derived_table_test_alias
  derived_table:
    sql: |
      SELECT status
      FROM orders
      WHERE {% condition status %} orders.status {% endcondition %}
      
  fields:
    - dimension: status
