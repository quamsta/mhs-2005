<!-- Header -->
<div id="header">
	<div class="container">
			
		<!-- Logo -->
			<h1><a href="{$BaseHref}" id="logo">$SiteConfig.Title</a></h1>
		
		<!-- Nav -->
			<nav id="nav">
				<ul>
					<% loop Menu(1) %>
						<li class="<% if $LinkingMode = current %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
					<% end_loop %>
				</ul>
			</nav>

	</div>
</div>