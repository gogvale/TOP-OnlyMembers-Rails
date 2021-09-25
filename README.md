<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<meta name="generator" content="LibreOffice 7.2.0.4 (Linux)"/>
	<meta name="created" content="2021-09-24T21:26:14.754860146"/>
	<meta name="changed" content="2021-09-24T21:27:11.854781325"/>
</head>
<body lang="en-US" link="#000080" vlink="#800000" dir="ltr"><h4 class="western">
Basic Setup</h4>
<ol>
	<li><p style="margin-bottom: 0in">Think about and spec out how to
	set up your data models for this application. You’ll need users
	with the usual simple identification attributes like name, email and
	password. They’ll need to create posts as well.</p>
	<li><p style="margin-bottom: 0in">Create your new&nbsp;<code class="western">members-only</code>&nbsp;Rails
	app and GitHub repo. Update your README.</p>
	<li><p>Add devise to your Gemfile and install it in your app using
	set up instructions on the devise&nbsp;<a href="https://github.com/heartcombo/devise" target="_blank">README</a></p>
</ol>
<h4 class="western"><a name="authentication-and-posts"></a>Authentication
and Posts</h4>
<p>Let’s build those secrets! We’ll need to make sure only signed
in users can see the author of each post. We’re not going to worry
about editing or deleting posts.</p>
<ol>
	<li><p style="margin-bottom: 0in">Create a Post model and a Posts
	controller and a corresponding resource in your Routes file which
	allows the&nbsp;<code class="western">[:new, :create,
	:index]</code>&nbsp;methods.</p>
	<li><p style="margin-bottom: 0in">Atop your Posts Controller, use
	a&nbsp;<code class="western">#before_action</code>&nbsp;to restrict
	access to the&nbsp;<code class="western">#new</code>&nbsp;and&nbsp;<code class="western">#create</code>&nbsp;methods
	to only users who are signed in.</p>
	<li><p style="margin-bottom: 0in">For your Posts Controller, prepare
	your&nbsp;<code class="western">#new</code>&nbsp;action.</p>
	<li><p style="margin-bottom: 0in">Write a very simple form in
	the&nbsp;<code class="western">app/views/posts/new.html.erb</code>&nbsp;view
	which will create a new Post.</p>
	<li><p style="margin-bottom: 0in">Make your
	corresponding&nbsp;<code class="western">#create</code>&nbsp;action
	build a post where the foreign key for the author (e.g.&nbsp;<code class="western">user_id</code>)
	is automatically populated based on whichever user is signed in.
	Redirect to the Index view if successful.</p>
	<li><p style="margin-bottom: 0in">Fill out the&nbsp;<code class="western">#index</code>&nbsp;action
	of the PostsController and create the corresponding view. The view
	should show a list of every post.</p>
	<li><p style="margin-bottom: 0in">Now add logic in your Index view
	to display the author’s name, but only if a user is signed in.</p>
	<li><p style="margin-bottom: 0in">Sign in and create a few secret
	posts.</p>
	<li><p>Test it out – sign out and go to the index page. You should
	see a list of the posts but no author names. Sign in and the author
	names should appear. Your secrets are safe!</p>
</ol>
<p style="line-height: 100%; margin-bottom: 0in"><br/>

</p>
</body>
</html>