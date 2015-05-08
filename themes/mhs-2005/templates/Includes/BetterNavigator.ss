<% if $ID > 0 %><%-- Only show on 'real' pages --%>

	<% require javascript("betternavigator/javascript/betternavigator.js") %>
	<% require css("betternavigator/css/betternavigator.css") %>
	
	<div id="BetterNavigator">
		
		<% with $BetterNavigator %>
			<div id="BetterNavigatorStatus" class="$Stage">
				<span class="bn-icon-cog"></span>
				<% if $LiveLink.Active %>Published<% end_if %>
				<% if $StageLink.Active %>Draft<% end_if %>
				<% if $ArchiveLink.Active %>Archived<% end_if %>
				<span class="bn-icon-close"></span>
			</div>
		<% end_with %>
		
		<div id="BetterNavigatorContent">
		
			<div class="bn-links">
				
				<% with $BetterNavigator %>
					<% if not $LiveLink.Active %>
						<% if $LiveLink.Link %>
							<a href="$LiveLink.Link"><span class="bn-icon-view"></span>View Published</a>
						<% else %>
							<span class="bn-disabled"><span class="bn-icon-view"></span>Not yet published</span>
						<% end_if %>
					<% end_if %>
					<% if not $StageLink.Active %>
						<% if $StageLink.Link %>
							<a href="$StageLink.Link"><span class="bn-icon-view"></span>View Draft</a>
						<% else %>
							<span class="bn-disabled"><span class="bn-icon-view"></span>Deleted from draft site</span>
						<% end_if %>
					<% end_if %>
					<a href="$CMSLink.Link" target="_blank"><span class="bn-icon-edit"></span>Edit in CMS</a>
					
					<% if $Member %>
						<a href="$LogoutLink"><span class="bn-icon-user"></span>Log out<% if $Member.FirstName %><span class="light"> ($Member.FirstName)</span><% end_if %></a>
					<% else %>
						<a href="$LoginLink"><span class="bn-icon-user"></span>Log in</a>
					<% end_if %>
				<% end_with %>
				
			</div>
				
			<% include BetterNavigatorExtraContent %>
			
			<% if $BetterNavigator.Mode=='dev' || $BetterNavigator.IsDeveloper %>
			
				<div class="bn-heading">Developer Tools</div>
				
				<div class="bn-links">
					
					<% if $BetterNavigator.Mode='dev' %>
						<span class="bn-disabled" title="Log out to end Dev Mode"><span class="bn-icon-tick"></span>Dev Mode On</span>
					<% else %>
						<a href="$Link?isDev=1"><span class="bn-icon-devmode"></span>Dev Mode</a>
					<% end_if %>
					
					<a href="$Link?flush=1" title="Flush templates and manifest, and regenerate images for this page (behaviour varies by Framework version)"><span class="bn-icon-flush"></span>Flush Caches</a>
					<a href="dev/build/?flush=1" target="_blank" title="Build database and flush caches (excludes template caches pre SS-3.1.7)"><span class="bn-icon-db"></span>Build Database</a>
					<a href="dev" target="_blank"><span class="bn-icon-tools"></span>Dev Menu</a>
					
				</div>
				
				<% include BetterNavigatorExtraDevTools %>
			
				<div class="bn-heading">Debugging</div>
				
				<div class="bn-links">
					
					<a href="$Link?showtemplate=1"><span class="bn-icon-info"></span>Show Template</a>
					<a href="$Link?debug=1&isDev=1"><span class="bn-icon-info"></span>Debug Page</a>
					<a href="$Link?debugmethods=1"><span class="bn-icon-info"></span>Debug Methods</a>
					<a href="$Link?debug_request=1&isDev=1"><span class="bn-icon-info"></span>Debug Request</a>
					<a href="$Link?debugfailover=1&isDev=1"><span class="bn-icon-info"></span>Debug Failover</a>
					<a href="$Link?showqueries=1&isDev=1"><span class="bn-icon-info"></span>Show Queries</a>
					<a href="$Link?previewwrite=1&isDev=1"><span class="bn-icon-info"></span>Preview write</a>
					
				</div>
				
				<% include BetterNavigatorExtraDebugging %>
			
			<% end_if %>
			
		</div>
		
	</div>
<% end_if %>