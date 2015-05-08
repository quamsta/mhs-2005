<div id="sidebar" class="4u">
	<% with $Page(events) %>
      <% loop UpcomingEvents %>
      	<% if Event %>
			<section>
				<header class="major">
					<h2><a href="schedule/show/{$StartDate.Format('Ymd')}">{$StartDate.Day}, {$StartDate.Month} {$StartDate.DayOfMonth}</a></h2>
				</header>									
				<ul class="default">
					<li><a href="$Event.Link">$Event.Title</a></li>
				</ul>
			</section>
        <% end_if %>
      <% end_loop %>
    <% end_with %>
</div>