<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dobble" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!--  >%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%-->
<%@ attribute name="name" required="true" rtexprvalue="true"
	description="Name of the active menu: home, owners, vets or error"%>

<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="<spring:url value="/" htmlEscape="true" />"><span></span></a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#main-navbar">
				<span class="sr-only"><os-p>Toggle navigation</os-p></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse" id="main-navbar">
			<ul class="nav navbar-nav">
				<dobble:menuItem active="${name eq 'home'}" url="/"
					title="home page">
					<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
					<span class="menuItemSpan">Home</span>
				</dobble:menuItem>
				<dobble:menuItem active="${name eq 'games'}" url="/games"
					title="find games">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					<span class="menuItemSpan">Find games</span>
				</dobble:menuItem>
				<dobble:menuItem active="${name eq 'tournaments'}" url="/tournaments"
					title="tournaments">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					<span class="menuItemSpan">Find tournaments</span>
				</dobble:menuItem>
				<dobble:menuItem active="${name eq 'users'}" url="/users"
					title="users">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					<span class="menuItemSpan">List users</span>
				</dobble:menuItem>
				

			</ul>

			<style>
				.menuItemSpan {
					margin-top: 50px;
					font-size: 185%;
				}
				.circulo {
					position: relative;
					margin-top: auto;
					margin-left: 34%;
					width: 50px;
					height: 50px;
					border-radius: 50%;
					border: 2px solid #000;
					display: flex;
					align-items: center;
					justify-content: center;
					background-color: #808080;
  				}
				.glyphicon-user {
    				color: #fff;
  				}
			</style>


			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="!isAuthenticated()">
					<li><a href="<c:url value="/login" />">Login</a></li>
					<li><a href="<c:url value="/users/new" />">Register</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li class="dropdown"><a href="#" class="dropdown-toggle"

						data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>

							<strong><sec:authentication property="name" /></strong> <span
							class="glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul class="dropdown-menu">
							<li>
								<div class="navbar-login">
									<div class="row">
										<div class="col-lg-12">
											<div class="circulo">
												<span class="glyphicon glyphicon-user icon-size" style="font-size: 24px;"></span>
											</div>
											<p class="text-center">
												<strong><sec:authentication property="name"/></strong>
											</p>
											<li class="divider"></li>
											<p class="text-left">
												<a href="<c:url value="/statistics/achievements/byUser/"/><sec:authentication property="name"/>"
													class="btn btn-primary btn-block btn-sm">My profile</a>
											</p>
											<p class="text-left">
												<a href="<c:url value="/users/edit/"/><sec:authentication property="name"/>"
													class="btn btn-primary btn-block btn-sm">Change Password</a>
											</p>
											<p class="text-left">
												<a href="<c:url value="/friends/" />"
													class="btn btn-primary btn-block btn-success btn-sm">Friends</a>
											</p>
											<p class="text-left">
												<a href="<c:url value="/logout" />"
													class="btn btn-primary btn-block btn-danger btn-sm">Logout</a>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
						</ul>
					</li>
				</sec:authorize>
			</ul>
		</div>



	</div>
</nav>