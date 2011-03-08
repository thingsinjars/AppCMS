      <div id="node<?php echo $node->nid; ?>" class="s-pane">
        <section id="content-<?php echo $node->nid; ?>" class="s-scrollwrapper">
          <div id="contentpane-<?php echo $node->nid; ?>" class="s-scrollpane">
						<div id="calendar"> 
	<?php 
	$view = views_get_view('events_list');
  $view->execute();
	if(is_array($view->result)) {
		echo '<ul>'."\n";
		foreach ($view->result as $key => $value) {
			echo '<li><time datetime="' . $value->node_data_field_date_field_date_value . '">' . $value->node_title . '</time></li>'."\n";
		}
		echo '</ul>'."\n";
	}
?>
					</div> 
<script type="text/javascript" charset="utf-8"> 
	$(function() {
  	$('#calendar').getCalendar();
  });
</script>
            <?php if ($links): ?>
            <div class="links"><?php print $links; ?></div>
            <?php endif; ?>
            <nav>
              <!-- Section Nav? (ul class=rounded)-->
              <?php if($block_area) { echo $block_area; } ?>
            </nav>
          </div>
        </section>
      </div>
    </div>
<script type="text/javascript" charset="utf-8">
$(function(){
	if($('#node<?php echo $node->nid; ?>').height() > ($('#jqt').height() - 49)) {
	  jQT.init_iScroll($('#node<?php echo $node->nid; ?>'));
	}
});
</script>