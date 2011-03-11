    if(count($element['#node']->field_images)) {
    $output = '<script type="text/javascript">'."\n";
    $output .= 'jQT.generateGallery("gallery' . $element['#node']->nid . '", ['."\n";
    foreach ($element['#node']->field_images as $image) {
       $output .='{src:"' . $image['filepath'] . '", width:100, height:100},'."\n";
    }
    $output .= '],{defaultIndex:1});';
    $output .= '</script>'."\n";
    $output .= '<ul class="edgetoedge"><li><a href="#gallery' . $element['#node']->nid . '">Launch gallery</a></li></ul>'."\n";
    $output .= '</script>'."\n";
    return $output;
    }
