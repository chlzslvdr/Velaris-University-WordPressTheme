<?php

    while(have_posts()) {
        the_post(); ?>
        <h2>
            <a>
                <?php the_title(); ?>
            </a>
        <h2>
        <?php the_content(); ?>
        <?php }

?>
