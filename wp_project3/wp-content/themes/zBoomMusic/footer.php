<footer>
	<div class="wrap-footer zerogrid">
		<div class="row block09">	
			<?php dynamic_sidebar('sidebar-2') ?>					
		</div>	
	</div>		
</footer>
<div class="row copyright">
			<p>Copyright © 2022 - <a href="https://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html" target="_blank">Free Html5 Templates</a> by <a href="https://www.zerotheme.com" target="_blank">Zerotheme.com</a></p>
</div>
<script src="<?php echo get_template_directory_uri() ?>/js/eocjs-newsticker.js"></script>
<script>
		$('#ticker').eocjsNewsticker({
			speed: 25
		});
</script>		
<?php wp_footer(); ?>
</body>
</html>