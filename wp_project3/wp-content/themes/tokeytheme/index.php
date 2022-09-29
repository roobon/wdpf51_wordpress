<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purple Blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" media="screen" />
</head>
<body>
<div id="container">
  <div id="logo">
    <h1><a href="#">Purple</a></h1>
    <h2 id="tagline">By Henry Jorge, and TemplateFusion.</h2>
  </div>
  <div id="menu"> <a href="#" id="login">login</a> <a href="#" id="rss-entries">rss entries</a> <a href="#" id="rss-comments">rss comments</a> </div>
  <div class="clearing">&nbsp;</div>
  <ul id="nav">
    <li><a href="#">&nbsp;&nbsp;Home&nbsp;</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Services</a></li>
    <li><a href="#">Portfolio</a></li>
    <li><a href="#">Contact</a></li>
    <li><a href="#">Henry</a></li>
    <li><a href="#">Tf</a></li>
  </ul>
  <div id="search">
    <form method="get" id="searchform" action="#">
      <div id="s-text">
        <input value="Search" name="s" id="s" type="text" />
        <label for="s">Search</label>
      </div>
      <div id="s-submit">
        <input id="searchsubmit" value="" type="submit" />
      </div>
    </form>
  </div>
  <div id="posts">
    <?php if(have_posts()):  
        while(have_posts()): the_post();
    ?>   
    <div class="post">
      <h2><a href="<?php the_permalink(); ?>"><?php the_title() ?></a></h2>
      <p class="date"><?php the_time('F j, Y') ?></p>
      <div class="entry">
        <p><img src="images/money.jpg" alt="" height="104" width="512" /></p>
        <?php the_content(); ?>
      </div>
      <div class="postmetadata"> <span class="tags">
      <?php the_category(); ?>
      <br>  
      </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comments-no"><a href="#">1 Comment</a></span> <br />
      </div>
    </div>
    <?php 
         endwhile;
          endif; 
    ?>
    
  </div>
  <div id="sidebar">
    <ul>
      <li>
        <h2>Pages</h2>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#" title="About">About</a></li>
          <li><a href="#" title="Services">Services</a></li>
          <li><a href="#" title="Portfolio">Portfolio</a></li>
          <li><a href="#" title="Contact">Contact</a></li>
          <li><a href="#">Henry Jorge</a></li>
          <li><a href="#">TemplateFusion</a></li>
        </ul>
      </li>
      <li>
        <h2>Archives</h2>
        <ul>
          <li><a href="#">September 2008</a></li>
          <li><a href="#">October 2008</a></li>
          <li><a href="#">November 2008</a></li>
          <li><a href="#">December 2008</a></li>
        </ul>
      </li>
      <li>
        <h2>Categories</h2>
        <ul>
          <li><a href="#">Uncategorized</a></li>
        </ul>
      </li>
      <li>
        <h2>Blogroll</h2>
        <ul>
          <li><a href="#">TemplateFusion</a></li>
          <li><a href="#">Henry Jorge</a></li>
        </ul>
      </li>
      <li>
        <h2>Meta</h2>
        <ul>
          <li><a href="#">Login</a></li>
          <li><a href="#">WordPress</a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>
<div id="footer" class="clearfix">
  <div class="wrapper">
    <div id="footer-recent-posts">
      <h2>Recent Posts</h2>
      <ul>
        <li> <a href="#">Purple - A Free CSS Template by Henry Jorge and TF. <br />
          <span>March 15, 2008</span></a> </li>
        <li> <a href="#">Purple - A Free CSS Template by Henry Jorge and TF. <br />
          <span>March 15, 2008</span></a> </li>
        <li> <a href="#">Purple - A Free CSS Template by Henry Jorge and TF. <br />
          <span>March 15, 2008</span></a> </li>
      </ul>
    </div>
    <div id="footer-recent-comments">
      <h2>Recent Comments</h2>
      <ul>
        <li><a href="#">Wow, great template! Good job both to Templatefusion and Henry Jorge! <br />
          <span>Happy Camper</span></a></li>
        <li><a href="#">Wow, great template! Good job both to Templatefusion and Henry Jorge! <br />
          <span>Happy Camper</span></a></li>
        <li><a href="#">Wow, great template! Good job both to Templatefusion and Henry Jorge! <br />
          <span>Happy Camper</span></a></li>
      </ul>
    </div>
    <div id="about">
      <h2>About</h2>
      <p id="info">This template was created by Henry Jorge, then recoded, touched up, and released by TemplateFusion.org</p>
      <p id="copyright"> Copyright &copy; 2007 <a href="#logo">My Site</a>&nbsp;<br />
        Designed by <a href="http://HenryJ.org">Henry Jorge</a><br />
        Released by <a href="http://templatefusion.org">TemplateFusion</a> </p>
      <p id="valid"> <span><a href="http://validator.w3.org/check?uri=referer">XHTML</a></span>&nbsp;&nbsp; <span><a href="#">CSS</a></span> </p>
    </div>
    <div class="clearing">&nbsp;</div>
  </div>
</div>
</body>
</html>
