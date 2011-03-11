      <div id="node<?php echo $node->nid; ?>" class="s-pane">
        <section id="content-<?php echo $node->nid; ?>" class="s-scrollwrapper">
          <div id="contentpane-<?php echo $node->nid; ?>" class="s-scrollpane">
              <?php if($content) { echo $content; } ?>
            <?php if ($links): ?>
            <div class="links"><?php print $links; ?></div>
            <?php endif; ?>
            <nav>
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