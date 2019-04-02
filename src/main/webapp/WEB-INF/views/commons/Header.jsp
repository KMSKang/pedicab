<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="header">
		<div id="stuck_container">
			<div class="container">
				<div class="row">
					<div class="grid_12">
						<h1>
							<a href="/">Team150<span>Pedicab Service</span></a>
						</h1>
						<nav>
							<ul class="sf-menu">
								<li class="current"><a>우리이야기</a>
									<ul>
										<li><a href="#">회사</a></li>
										<li><a href="/staff/slistAllU">직원</a></li>
										<li><a href="/staff/slistAll">직원리스트(매니저)</a></li>
									</ul></li>
								<li><a>코스</a>
									<ul>
										<li><a href="/course/uclistAll">리스트(유저)</a></li>
										<li><a href="/course/clistAll">리스트(매니저)</a></li>
									</ul></li>
								<li><a>예약</a>
									<ul>
										<li><a href="/reserve/Reserve_viewU?useq=${useq}">나의예약(유저)</a></li>
										<li><a href="/reserve/Reserve_listM">리스트(매니저)</a></li>
									</ul></li>
								<li><a>연락</a>
									<ul>
										<li><a href="/notice/noticeMain">공지사항</a></li>
										<li><a href="/question/questionMain">문의하기</a></li>
									</ul></li>
								<li><a>ETC</a>
									<ul>
										<li><a href="/review/reviewWrite">리뷰작성</a></li>
										<li><a href="/favorite/favorite">즐겨찾기</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>