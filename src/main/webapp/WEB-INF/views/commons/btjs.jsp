<script>
		jQuery(function() {
			jQuery('#camera_wrap').camera({
				height : '68.125%',
				thumbnails : false,
				pagination : true,
				fx : 'simpleFade',
				loader : 'none',
				hover : false,
				navigation : false,
				playPause : false,
				minHeight : "975px",
			});
		});
	</script>
	<script>
		$(document).ready(function() {
			if ($('html').hasClass('desktop')) {
				$.stellar({
					horizontalScrolling : false,
					verticalOffset : 20,
					resposive : true,
					hideDistantElements : true,
				});
			}
		});
	</script>
	<script>
		$(function() {
			$('.isotope a').touchTouch();
		});
	</script>