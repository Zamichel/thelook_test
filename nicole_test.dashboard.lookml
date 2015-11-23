- dashboard: nicole_test
  title: Nicole Test
  layout: grid
  tile_size: 100

  rows:
      - height: 200 
        elements: [add_a_unique_name_1443804693449]
        
  filters:

  - name: order_id
    type: number_filter
    base_view: orders
    dimension: orders.id
    hidden: true

  elements:

  - name: add_a_unique_name_1443804693449
    title: Untitled Table
    type: table
    model: thelook
    explore: orders
    dimensions: [orders.id]
    sorts: [orders.id]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear
    
  - name: add_a_unique_name_testy_testy
    title: Untitled Table
    type: table
    model: thelook
    explore: orders
    dimensions: [orders.id]
    sorts: [orders.id]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear


