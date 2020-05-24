<?php
    get_header();
    pageBanner(array(
        'title' => 'Past Events',
        'subtitle' => 'A recap of our past events.',
        'photo' => get_theme_file_uri('/images/grounds.png')
    ));
    ?>

    <div class="container container--narrow page-section">
    <?php
        $today = date('Ymd');
        $pastEvents = new WP_Query(array(
            'paged' => get_query_var('paged', 1),
            'post_type' => 'event',
            'meta_key' => 'event_date',
            'orderBy' => 'meta_value_num',
            'order' => 'ASC',
            'meta_query' => array(
                array(
                    'key' => 'event_date',
                    'compare' => '<',
                    'value' => $today,
                    'type' => 'numeric'
                )
            )
        ));

        while($pastEvents->have_posts()) {
            $pastEvents->the_post();
            get_template_part('template-parts/content-event');
        } wp_reset_postdata();

        echo paginate_links(array(
            'total' => $pastEvents->max_num_pages
        ));
    ?>
    </div>

    <?php get_footer();
?>