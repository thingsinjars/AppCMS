      <div id="node<?php echo $node->nid; ?>" class="s-pane">
<?php if($title) { ?>
	      <div class="toolbar">
          <h1><?php echo $title; ?></h1>
          <?php // If this page has a parent that isn't level 1, draw a back button
							if (appcms_menu_depth() != 1) {?>          <a href="<?php print base_path(); ?>" class="back">Back</a><?php	}; ?>
        </div>
<?php } ?>
        <section id="content-<?php echo $node->nid; ?>" class="s-scrollwrapper">
          <div id="contentpane-<?php echo $node->nid; ?>" class="s-scrollpane">
            <article>
              <?php if($content) { echo $content; } ?>
            </article>
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