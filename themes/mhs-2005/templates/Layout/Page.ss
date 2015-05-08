<div id="main" class="wrapper style4">
	<div class="container">
		<div class="row">

		<!-- Sidebar -->
			<% if $SidebarTitle %>
			<div id="sidebar" class="4u">
				<section>
					<header class="major">
						<h2>$SidebarTitle</h2>
					</header>
                    $SidebarContent
				</section>
			</div>
			<% end_if %>

			<!-- Content -->
			<div id="content" class="8u skel-cell-important">
				<section>
					<header class="major">
						<h2>$Title</h2>
						<span class="byline">$Byline</span>
					</header>
					$Content
					$Form
				</section>
			</div>
		</div>
	</div>
</div>
