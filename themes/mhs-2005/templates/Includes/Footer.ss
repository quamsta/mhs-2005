<div id="footer">
	<section class="container">
		<header class="major">
			<h2>Connect with us</h2>
			<span class="byline"><a href="https://www.facebook.com/groups/656588271082303/" target="_blank">Visit our class Facebook group page</a> to keep up-to-date with our Reunion details</span>
		</header>
		<ul class="icons">
			<li class="active"><a href="https://www.facebook.com/groups/656588271082303/" class="fa fa-facebook" target="_blank"><span>Facebook</span></a></li>
		</ul>
		<% if CurrentMember %>
			<p><a href="admin/" target="_blank">Admin</a> <a href="Security/Logout">Logout</a></p>
		<% else %>
			<p><a href="Security/login?BackURL=home%2F" target="_blank">Login</a></p>
		<% end_if %>
	</section>
</div>