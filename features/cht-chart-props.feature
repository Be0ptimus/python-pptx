Feature: Get and set chart properties
  In order to customize the formatting of a chart
  As a developer using python-pptx
  I need a way to get and set chart properties


  Scenario Outline: Get chart type
    Given a chart of type <chart-type>
     Then chart.chart_type is <expected-enum-member>

    Examples: chart types
      | chart-type               | expected-enum-member         |
      | Area                     | AREA                         |
      | Stacked Area             | AREA_STACKED                 |
      | 100% Stacked Area        | AREA_STACKED_100             |
      | 3-D Area                 | THREE_D_AREA                 |
      | 3-D Stacked Area         | THREE_D_AREA_STACKED         |
      | 3-D 100% Stacked Area    | THREE_D_AREA_STACKED_100     |
      | Clustered Bar            | BAR_CLUSTERED                |
      | Stacked Bar              | BAR_STACKED                  |
      | 100% Stacked Bar         | BAR_STACKED_100              |
      | Clustered Column         | COLUMN_CLUSTERED             |
      | Stacked Column           | COLUMN_STACKED               |
      | 100% Stacked Column      | COLUMN_STACKED_100           |
      | Line                     | LINE                         |
      | Stacked Line             | LINE_STACKED                 |
      | 100% Stacked Line        | LINE_STACKED_100             |
      | Marked Line              | LINE_MARKERS                 |
      | Stacked Marked Line      | LINE_MARKERS_STACKED         |
      | 100% Stacked Marked Line | LINE_MARKERS_STACKED_100     |
      | Pie                      | PIE                          |
      | Exploded Pie             | PIE_EXPLODED                 |
      | XY (Scatter)             | XY_SCATTER                   |
      | XY Lines                 | XY_SCATTER_LINES             |
      | XY Lines No Markers      | XY_SCATTER_LINES_NO_MARKERS  |
      | XY Smooth Lines          | XY_SCATTER_SMOOTH            |
      | XY Smooth No Markers     | XY_SCATTER_SMOOTH_NO_MARKERS |
      | Bubble                   | BUBBLE                       |
      | 3D-Bubble                | BUBBLE_THREE_D_EFFECT        |


  @wip
  Scenario Outline: Get category axis
    Given a chart of type <chart-type>
     Then chart.category_axis is a <type-name> object

    Examples: category axis object types
      | chart-type   | type-name    |
      | Stacked Bar  | CategoryAxis |
      | XY (Scatter) | ValueAxis    |
      | Bubble       | ValueAxis    |


  @wip
  Scenario Outline: Get value axis
    Given a chart of type <chart-type>
     Then chart.value_axis is a ValueAxis object

    Examples: value axis object types
      | chart-type   |
      | Stacked Bar  |
      | XY (Scatter) |
      | Bubble       |
