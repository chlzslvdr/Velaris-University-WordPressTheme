<?php
    get_header();

    while(have_posts()) {
        the_post(); ?>
        <h1>This a page, not a post</h1>
        <h2>
            <a>
                <?php the_title(); ?>
            </a>
        <h2>
        <?php the_content(); ?>
        <?php }

    get_footer();
?>
