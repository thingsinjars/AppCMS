<!doctype html>
<html>
    <head>

    <title><?php print $head_title ?></title>
    <!-- These must come from a setting somewhere -->
    <!--57px at 163dpi - iPhone 3G / 3GS - iOS before 4.2, uses CSS Media Queries-->
    <link rel="apple-touch-icon-precomposed" media="screen and (resolution: 163dpi)" href="/templates/mobile/icon.png" />
    <!--72px at 132dpi for iPad v1, before 4.2-->
    <link rel="apple-touch-icon-precomposed" media="screen and (resolution: 132dpi)" href="/templates/mobile/icon-72.png" />
    <!--114px at 326dpi for iPhone 4, before 4.2-->
    <link rel="apple-touch-icon-precomposed" media="screen and (-webkit-min-device-pixel-ratio: 2)" href="/templates/mobile/icon@2x.png" />

    <link rel="apple-touch-startup-image" href="/templates/mobile/startup.png" />

    <?php print $styles ?>

  </head>
  <body>
    <div id="jqt">
      <div id="home" class="s-pane" style="background:url(<?php echo $logo; ?>) 0 0 no-repeat;">
<?php
if(!$logo) {
?>
        <section id="content-<?php echo $node->nid; ?>" class="s-scrollwrapper">
          <div id="contentpane-<?php echo $node->nid; ?>" class="s-scrollpane">
            <article class="info">
              <?php if($content) { echo $content; } ?>
            </article>
            <nav>
              <?php if($block_area) { echo $block_area; } ?>
            </nav>
          </div>
        </section>
<?php
}
?>      </div>
    </div>
    <div id="tabbar">
      <div id="tabbar-pane">
      <?php
        if(!empty($primary_links)) {
          $out = '<ul>'."\n";
          foreach($primary_links as $link_name => $link) {
						$this_item = menu_get_item($link['href']);
            $out .= '<li><a href="' . $link['href'] . '" mask="'. $this_item['page_arguments'][0]->field_icon[0]['filepath'] .'" animation="fade"><strong>' . $link['title']  . '</strong></a></li>'."\n";
          }
          $out .= '</ul>'."\n";
          echo $out;
        }
        ?>
      </div>
    </div>
    <?php if($footer) { echo $footer; } ?>
    <?php print $scripts ?>
</body>
</html>