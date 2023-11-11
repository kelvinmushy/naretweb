<!doctype html>
<html lang="en">
  <head>
    <title>Monthly vat report </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 

 
</head>
  <body>
    <h2 style="text-align: center;">Monthly Purchase base Vat  Graph</h2>
    <div class="container-fluid p-5">
    <div id="barcharts_material" style="width: 100%; height: 500px;">
    </div>
    </div>
 
    <script type="text/javascript">
 
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);
 
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Months per Year', 'Vat'],
 
            @php
              foreach($vats as $vats) {
                  echo "[ '".$vats->months."','".number_format($vats->vat)."'],";
              }
            @endphp
        ]);
 
        var options = {
          chart: {
            title: 'Bar Graph | Vat',
            subtitle: 'Monthly, and Vat:',
          },
          bars: 'vertical'
        };
        var chart = new google.charts.Bar(document.getElementById('barcharts_material'));
        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
 
</body>
</html>