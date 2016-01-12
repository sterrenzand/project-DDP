---
title       : Refugees along the Balkan Route
subtitle    : 
<<<<<<< HEAD
author      : C. Smeyers
=======
author      : 
>>>>>>> refs/remotes/origin/master
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap} 
ext_widgets : {rCharts: ["libraries/highcharts"]}
       
mode        : selfcontained # {standalone, draft}
logo        : zen.jpg
knit        : slidify::knit2slides
---

## Introduction

You may have seen it in the news that there is a refugee crisis taking place in Europe. 
Hundreds of thousends of people are fleeing their home countries and traveling along the so-called Balkans route as refugees. This app has been created to explore data provided by the UNHCR, the United Nations Refugee Agency, on the number of refugees arriving at the borders of European counties. This allows you to get a better picture of the magnitude of this crisis and also to see how the numbers are in various countries along the Balkans Route.

                                
[View the application](https://sterrenzand.shinyapps.io/project)

--- .class #id 

## What the app does


* visualizes refugee data from October 1, 2015 to December 20, 2015
* allows you to pick a country from the list (Greece (Mainland or Islands), Macedonia, Serbia, Croatia, Hungary, Slovenia, Austria)
* displays a graphical representation of the number of refugees that arrived in the selected country between Oct 1 - Dec 20
* gives details on the datapoints when hovering over the graph
* allows you to choose a timespan (begin and end date)
* calculates and displays the sum of refugees arrived in the selected country during the chosen timespan 
* allows you to inspect the raw data



                                                                                    

--- .class #id 


## This is what the graph looks like for Austria



<div id = 'chart1' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart1",
"width":            550,
"height":            350,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "min":              0,
"ylab": "Austria" 
} 
],
"series": [
 {
 "data": [
 [
  1443657600000,
          4550 
],
[
  1443744000000,
          2700 
],
[
  1443830400000,
          7100 
],
[
  1443916800000,
          5800 
],
[
  1444003200000,
          6100 
],
[
  1444089600000,
          5800 
],
[
  1444176000000,
          5861 
],
[
  1444262400000,
          4229 
],
[
  1444348800000,
          6700 
],
[
  1444435200000,
          5050 
],
[
  1444521600000,
          8540 
],
[
  1444608000000,
          8240 
],
[
  1444694400000,
          5280 
],
[
  1444780800000,
          7000 
],
[
  1444867200000,
          5235 
],
[
  1444953600000,
          6500 
],
[
  1445040000000,
          5155 
],
[
  1445126400000,
          1822 
],
[
  1445212800000,
          4300 
],
[
  1445299200000,
          6017 
],
[
  1445385600000,
          4737 
],
[
  1445472000000,
          3767 
],
[
  1445558400000,
          4092 
],
[
  1445644800000,
          5841 
],
[
  1445731200000,
          7882 
],
[
  1445817600000,
         10784 
],
[
  1445904000000,
          9390 
],
[
  1445990400000,
          8336 
],
[
  1446076800000,
          8473 
],
[
  1446163200000,
          8302 
],
[
  1446249600000,
          7691 
],
[
  1446336000000,
          7887 
],
[
  1446422400000,
          8243 
],
[
  1446508800000,
          6900 
],
[
  1446595200000,
          9930 
],
[
  1446681600000,
          7478 
],
[
  1446768000000,
          7315 
],
[
  1446854400000,
          4648 
],
[
  1446940800000,
          3465 
],
[
  1447027200000,
          5962 
],
[
  1447113600000,
          6933 
],
[
  1447200000000,
          8169 
],
[
  1447286400000,
          8777 
],
[
  1447372800000,
          6351 
],
[
  1447459200000,
          7659 
],
[
  1447545600000,
          7632 
],
[
  1447632000000,
          6319 
],
[
  1447718400000,
          7026 
],
[
  1447804800000,
          7577 
],
[
  1447891200000,
          5635 
],
[
  1447977600000,
          5865 
],
[
  1448064000000,
          6836 
],
[
  1448150400000,
          5446 
],
[
  1448236800000,
          5546 
],
[
  1448323200000,
          6204 
],
[
  1448409600000,
          4122 
],
[
  1448496000000,
          2211 
],
[
  1448582400000,
          2120 
],
[
  1448668800000,
          3320 
],
[
  1448755200000,
          2407 
],
[
  1448841600000,
          4482 
],
[
  1448928000000,
          2821 
],
[
  1449014400000,
          2874 
],
[
  1449100800000,
          2935 
],
[
  1449187200000,
          3366 
],
[
  1449273600000,
          1493 
],
[
  1449360000000,
          1643 
],
[
  1449446400000,
          5035 
],
[
  1449532800000,
          5210 
],
[
  1449619200000,
          4714 
],
[
  1449705600000,
          3623 
],
[
  1449792000000,
          2000 
],
[
  1449878400000,
          3675 
],
[
  1449964800000,
          4754 
],
[
  1450051200000,
          4263 
],
[
  1450137600000,
          4193 
],
[
  1450224000000,
          2519 
],
[
  1450310400000,
          2717 
],
[
  1450396800000,
          3532 
],
[
  1450483200000,
          3305 
],
[
  1450569600000,
          3800 
] 
],
"type": "line",
"marker": {
 "radius":              3 
} 
} 
],
"legend": {
 "enabled": false 
},
"xAxis": [
 {
 "type": "datetime",
"labels": {
 "format": "{value:%Y-%m-%d}",
"rotation":            -45 
} 
} 
],
"subtitle": {
 "text": null 
},
"id": "chart1",
"chart": {
 "renderTo": "chart1" 
} 
});
        });
    })(jQuery);
</script>

From October 1 - Dezember 20, 2015 the total of refugees that have arrived at the Austrian border was:


```
## [1] 442211
```

--- .class #id 
 

## Recources
 * you can find the shiny app at: 
 
 https://sterrenzand.shinyapps.io/project

 * the source code and all other files are here on github:
 
 https://github.com/sterrenzand/project-DDP
 
 * the original data was found on this UNHCR website:
 
 http://data.unhcr.org/mediterranean/country.php?id=502





