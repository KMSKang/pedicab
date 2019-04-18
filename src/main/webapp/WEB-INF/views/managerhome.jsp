<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>


	<script>
	(function(w,d,s,g,js,fs){
	  g=w.gapi||(w.gapi={});g.analytics={q:[],ready:function(f){this.q.push(f);}};
	  js=d.createElement(s);fs=d.getElementsByTagName(s)[0];
	  js.src='https://apis.google.com/js/platform.js';
	  fs.parentNode.insertBefore(js,fs);js.onload=function(){g.load('analytics');};
	}(window,document,'script'));
	</script>

<!--↓ 이부분은 managerpage에 적용될 css가 담겨있는 iclude 태그입니다. 포함하셔야 됩니다. -->
<%@include file="commons/mh.jsp"%>

<!-- Include the ViewSelector2 component script. -->
<script src="${pageContext.request.contextPath }/resources/jsm/view-selector2.js"></script>

<!-- Include the DateRangeSelector component script. -->
<script src="/resources/jsm/date-range-selector.js"></script>

<!-- Include the ActiveUsers component script. -->
<script src="/resources/jsm/active-users.js"></script>

<!-- Include the CSS that styles the charts. -->
<link rel="stylesheet" href="/resources/cssm/chartjs-visualizations.css">

<style>

.info-box:hover{
	opacity: 0.8;
}

</style>

</head>
<body>

	
<!--↓아래에 있는 section id="container"는 꼭 만드서야 합니다 !  -->
<section id="container" class="">
<!--↓밑에 두개 include 파일은 복사 하셔서 만드시는 뷰단 페이지에다가 붙여넣기 하세요 꼭 이위치에 복사 하셔야 됩니다! -->
	<%@include file="commons/mhd.jsp"%>
	<%@include file="commons/mfj.jsp"%>
<!-- ↓id="main-content" section은 작성하시는 코드가 들어가는 부분입니다. 만드셔야지 되요!  -->
	<section id="main-content">
<!--      ↓여기있는 wrapper는 감싸주는거 같아요 저도 잘 모르겠어요 일단 만드셔야 됩니다. -->
		<section class="wrapper">
		  <!-- ↓ 하나의 코드를 작성 하실떄 div class="row"는  하나의 행을 의미합니다.  -->
		 <h3 class="page-header"><strong>management</strong></h3>
		 
		 <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/managerhome">Home</a></li>
              <li><i class="fa fa-laptop"></i>Dashboard</li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box blue-bg">
              <i class="fa fa-user"></i>
              <div class="count">${members }<small style="font-size:15px"> 명</small></div>
              <div class="title">의 회원이 함께합니다.</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box green-bg">
              <i class="fa fa-map-marker"></i>
              <div class="count">${cources }<small style="font-size:15px"> 개</small></div>
              <div class="title">의 코스를 제공합니다.</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->
          
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box dark-bg">
              <i class="fa fa-shopping-cart"></i>
              <div class="count">${order }<small style="font-size:15px"> 건</small></div>
              <div class="title">의 예약을 받았습니다.</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->
          
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box brown-bg">
              <i class="fa fa-credit-card"></i>
              <div class="count">${purchased }<small style="font-size:15px"> 건</small></div>
              <div class="title">의 결제가 완료되었습니다.</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

        </div>
        <!--/.row-->
        
            <div class="row text-center">
            	<div class="col-lg-12">
            	<section class="panel">
            		<header class="panel-heading" style="background-color:#fcf8e3; margin-bottom:10px;">
					  <div id="embed-api-auth-container" style="display:inline-block"></div>
            		<div style="display:none">
					  <div id="view-selector-container"></div>
					  <div id="view-name"></div>
					  </div>
					  <div id="active-users-container" class="badge-info badge" style="display:inline-block; margin-left:10px"></div>
					</header>
					<div class="row">
						<div class="Chartjs col-lg-6">
						<section class="panel">
						<header class="panel-heading">
						  <h3>지난 주 대비 방문자</h3>
						  </header>
						  <div class="panel-body">
						  <figure class="Chartjs-figure" id="chart-1-container"></figure>
						  </div>
						  <div class="panel-footer">
						  <ol class="Chartjs-legend" id="legend-1-container"></ol>
						  </div>
						</section>
						</div>
						<div class="Chartjs col-lg-6">
						<section class="panel">
						<header class="panel-heading">
						  <h3>작년 대비 사용자</h3></header>
						  <div class="panel-body">
						  <figure class="Chartjs-figure" id="chart-2-container"></figure></div>
						  <div class="panel-footer">
						  <ol class="Chartjs-legend" id="legend-2-container"></ol></div>
						  </section>
						</div>
					</div>
					<div class="row">
						<div class="Chartjs col-lg-6">
						<section class="panel">
						<header class="panel-heading">
						  <h3>페이지 방문 통계</h3></header>
						  <div class="panel-body">
						  <figure class="Chartjs-figure" id="chart-3-container"></figure></div>
						  <div class="panel-footer">
						  <ol class="Chartjs-legend" id="legend-3-container"></ol></div>
						  </section>
						</div>
						<div class="Chartjs col-lg-6">
						<section class="panel">
						<header class="panel-heading">
						  <h3>방문 현황</h3></header>
						  <div class="panel-body">
						  <figure class="Chartjs-figure" id="chart-4-container"></figure></div>
						  <div class="panel-footer">
						  <ol class="Chartjs-legend" id="legend-4-container"></ol></div>
						  </section>
						</div>
					</div>
			</section>
            	</div>
            </div>
		</section>
	</section>
</section>




   <!-- ↓ 이부분은 자바스크립트가 작성된 include 태그입니다. 포함 하셔야됩니다 ! -->
	<%@include file="commons/mjs.jsp"%>
	

	
	<!-- This demo uses the Chart.js graphing library and Moment.js to do date
     formatting and manipulation. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>


<script>

// == NOTE ==
// This code uses ES6 promises. If you want to use this code in a browser
// that doesn't supporting promises natively, you'll have to include a polyfill.

gapi.analytics.ready(function() {

  /**
   * Authorize the user immediately if the user has already granted access.
   * If no access has been created, render an authorize button inside the
   * element with the ID "embed-api-auth-container".
   */
  gapi.analytics.auth.authorize({
    container: 'embed-api-auth-container',
    clientid: '248908516122-8oeoe3gufkf6ki1md6k7grbcmlqv9p0q.apps.googleusercontent.com'
  });
	
  setTimeout(() => {
	  if($('#embed-api-auth-container').text().indexOf('logged in') == -1){
		  var check = confirm('관리자로 등록된 구글 계정으로 로그인 하시면 실시간 데이터를 확인할 수 있습니다. 로그인 하시겠습니까?');
		  if(check == true) $('.gapi-analytics-auth-styles-signinbutton').click()
	  }
	}, 1000);
  
  /**
   * Create a new ActiveUsers instance to be rendered inside of an
   * element with the id "active-users-container" and poll for changes every
   * five seconds.
   */
  var activeUsers = new gapi.analytics.ext.ActiveUsers({
    container: 'active-users-container',
    pollingInterval: 5
  });


  /**
   * Add CSS animation to visually show the when users come and go.
   */
  activeUsers.once('success', function() {
    var element = this.container.firstChild;
    var timeout;

    this.on('change', function(data) {
      var element = this.container.firstChild;
      var animationClass = data.delta > 0 ? 'is-increasing' : 'is-decreasing';
      element.className += (' ' + animationClass);

      clearTimeout(timeout);
      timeout = setTimeout(function() {
        element.className =
            element.className.replace(/ is-(increasing|decreasing)/g, '');
      }, 3000);
    });
  });


  /**
   * Create a new ViewSelector2 instance to be rendered inside of an
   * element with the id "view-selector-container".
   */
  var viewSelector = new gapi.analytics.ext.ViewSelector2({
    container: 'view-selector-container',
  })
  .execute();


  /**
   * Update the activeUsers component, the Chartjs charts, and the dashboard
   * title whenever the user changes the view.
   */
  viewSelector.on('viewChange', function(data) {
    var title = document.getElementById('view-name');
    title.textContent = data.property.name + ' (' + data.view.name + ')';

    // Start tracking active users for this view.
    activeUsers.set(data).execute();

    // Render all the of charts for this view.
    renderWeekOverWeekChart(data.ids);
    renderYearOverYearChart(data.ids);
    renderTopBrowsersChart(data.ids);
    renderTopCountriesChart(data.ids);
  });


  /**
   * Draw the a chart.js line chart with data from the specified view that
   * overlays session data for the current week over session data for the
   * previous week.
   */
  function renderWeekOverWeekChart(ids) {

    // Adjust `now` to experiment with different days, for testing only...
    var now = moment(); // .subtract(3, 'day');

    var thisWeek = query({
      'ids': ids,
      'dimensions': 'ga:date,ga:nthDay',
      'metrics': 'ga:sessions',
      'start-date': moment(now).subtract(1, 'day').day(0).format('YYYY-MM-DD'),
      'end-date': moment(now).format('YYYY-MM-DD')
    });

    var lastWeek = query({
      'ids': ids,
      'dimensions': 'ga:date,ga:nthDay',
      'metrics': 'ga:sessions',
      'start-date': moment(now).subtract(1, 'day').day(0).subtract(1, 'week')
          .format('YYYY-MM-DD'),
      'end-date': moment(now).subtract(1, 'day').day(6).subtract(1, 'week')
          .format('YYYY-MM-DD')
    });

    Promise.all([thisWeek, lastWeek]).then(function(results) {

      var data1 = results[0].rows.map(function(row) { return +row[2]; });
      var data2 = results[1].rows.map(function(row) { return +row[2]; });
      var labels = results[1].rows.map(function(row) { return +row[0]; });

      labels = labels.map(function(label) {
        return moment(label, 'YYYYMMDD').format('ddd');
      });

      var data = {
        labels : labels,
        datasets : [
          {
            label: 'Last Week',
            fillColor : 'rgba(220,220,220,0.5)',
            strokeColor : 'rgba(220,220,220,1)',
            pointColor : 'rgba(220,220,220,1)',
            pointStrokeColor : '#fff',
            data : data2
          },
          {
            label: 'This Week',
            fillColor : 'rgba(151,187,205,0.5)',
            strokeColor : 'rgba(151,187,205,1)',
            pointColor : 'rgba(151,187,205,1)',
            pointStrokeColor : '#fff',
            data : data1
          }
        ]
      };

      new Chart(makeCanvas('chart-1-container')).Line(data);
      generateLegend('legend-1-container', data.datasets);
    });
  }


  /**
   * Draw the a chart.js bar chart with data from the specified view that
   * overlays session data for the current year over session data for the
   * previous year, grouped by month.
   */
  function renderYearOverYearChart(ids) {

    // Adjust `now` to experiment with different days, for testing only...
    var now = moment(); // .subtract(3, 'day');

    var thisYear = query({
      'ids': ids,
      'dimensions': 'ga:month,ga:nthMonth',
      'metrics': 'ga:users',
      'start-date': moment(now).date(1).month(0).format('YYYY-MM-DD'),
      'end-date': moment(now).format('YYYY-MM-DD')
    });

    var lastYear = query({
      'ids': ids,
      'dimensions': 'ga:month,ga:nthMonth',
      'metrics': 'ga:users',
      'start-date': moment(now).subtract(1, 'year').date(1).month(0)
          .format('YYYY-MM-DD'),
      'end-date': moment(now).date(1).month(0).subtract(1, 'day')
          .format('YYYY-MM-DD')
    });

    Promise.all([thisYear, lastYear]).then(function(results) {
      var data1 = results[0].rows.map(function(row) { return +row[2]; });
      var data2 = results[1].rows.map(function(row) { return +row[2]; });
      var labels = ['Jan','Feb','Mar','Apr','May','Jun',
                    'Jul','Aug','Sep','Oct','Nov','Dec'];

      // Ensure the data arrays are at least as long as the labels array.
      // Chart.js bar charts don't (yet) accept sparse datasets.
      for (var i = 0, len = labels.length; i < len; i++) {
        if (data1[i] === undefined) data1[i] = null;
        if (data2[i] === undefined) data2[i] = null;
      }

      var data = {
        labels : labels,
        datasets : [
          {
            label: 'Last Year',
            fillColor : 'rgba(220,220,220,0.5)',
            strokeColor : 'rgba(220,220,220,1)',
            data : data2
          },
          {
            label: 'This Year',
            fillColor : 'rgba(151,187,205,0.5)',
            strokeColor : 'rgba(151,187,205,1)',
            data : data1
          }
        ]
      };

      new Chart(makeCanvas('chart-2-container')).Bar(data);
      generateLegend('legend-2-container', data.datasets);
    })
    .catch(function(err) {
      console.error(err.stack);
    });
  }


  /**
   * Draw the a chart.js doughnut chart with data from the specified view that
   * show the top 5 browsers over the past seven days.
   */
  function renderTopBrowsersChart(ids) {
	  var now = moment();

    query({
      'ids': ids,
      'dimensions': 'ga:pagePath',
      'metrics': 'ga:pageviews',
      'sort': '-ga:pageviews',
      'max-results': 5,
      'start-date' : '2019-04-01',
      'end-date' : moment(now).format('YYYY-MM-DD')
    })
    .then(function(response) {
    	
      var data = [];
      var colors = ['#f3d70c','#00ccb3','#D4CCC5','#E2EAE9','#F7464A'];

      response.rows.forEach(function(row, i) {
        data.push({ value: +row[1], color: colors[i], label: row[0] });
      });

      new Chart(makeCanvas('chart-3-container')).Doughnut(data);
      generateLegend('legend-3-container', data);
    });
  }


  /**
   * Draw the a chart.js doughnut chart with data from the specified view that
   * compares sessions from mobile, desktop, and tablet over the past seven
   * days.
   */
  function renderTopCountriesChart(ids) {
	  
	  var now = moment();
	  
    query({
      'ids': ids,
      'dimensions': 'ga:userType',
      'metrics': 'ga:sessions',
      'sort': '-ga:sessions',
      'max-results': 2,
      'start-date' : '2019-04-01',
      'end-date' : moment(now).format('YYYY-MM-DD')
    })
    .then(function(response) {

      var data = [];
      var colors = ['#f39241','#6abbff'];

      response.rows.forEach(function(row, i) {
        data.push({
          label: row[0] === 'Returning Visitor' ? '재 방문자' : '신규 방문자',
          value: +row[1],
          color: colors[i]
        });
      });

      new Chart(makeCanvas('chart-4-container')).Pie(data);
      generateLegend('legend-4-container', data);
    });
  }


  /**
   * Extend the Embed APIs `gapi.analytics.report.Data` component to
   * return a promise the is fulfilled with the value returned by the API.
   * @param {Object} params The request parameters.
   * @return {Promise} A promise.
   */
  function query(params) {
    return new Promise(function(resolve, reject) {
      var data = new gapi.analytics.report.Data({query: params});
      data.once('success', function(response) { resolve(response); })
          .once('error', function(response) { reject(response); })
          .execute();
    });
  }


  /**
   * Create a new canvas inside the specified element. Set it to be the width
   * and height of its container.
   * @param {string} id The id attribute of the element to host the canvas.
   * @return {RenderingContext} The 2D canvas context.
   */
  function makeCanvas(id) {
    var container = document.getElementById(id);
    var canvas = document.createElement('canvas');
    var ctx = canvas.getContext('2d');

    container.innerHTML = '';
    canvas.width = container.offsetWidth;
    canvas.height = container.offsetHeight;
    container.appendChild(canvas);

    return ctx;
  }


  /**
   * Create a visual legend inside the specified element based off of a
   * Chart.js dataset.
   * @param {string} id The id attribute of the element to host the legend.
   * @param {Array.<Object>} items A list of labels and colors for the legend.
   */
  function generateLegend(id, items) {
    var legend = document.getElementById(id);
    legend.innerHTML = items.map(function(item) {
      var color = item.color || item.fillColor;
      var label = item.label;
      return '<li><i style="background:' + color + '"></i>' +
          escapeHtml(label) + '</li>';
    }).join('');
  }


  // Set some global Chart.js defaults.
  Chart.defaults.global.animationSteps = 60;
  Chart.defaults.global.animationEasing = 'easeInOutQuart';
  Chart.defaults.global.responsive = true;
  Chart.defaults.global.maintainAspectRatio = false;


  /**
   * Escapes a potentially unsafe HTML string.
   * @param {string} str An string that may contain HTML entities.
   * @return {string} The HTML-escaped string.
   */
  function escapeHtml(str) {
    var div = document.createElement('div');
    div.appendChild(document.createTextNode(str));
    return div.innerHTML;
  }

});
</script>

</body>
</html>
