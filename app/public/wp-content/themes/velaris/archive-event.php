<?php
    get_header();
    pageBanner(array(
        'title' => 'All Events',
        'subtitle' => 'See what is going on in our world.',
        'photo' => get_theme_file_uri('/images/grounds.png')
    ));
    ?>

    <div class="container container--narrow page-section">
    <?php
        while(have_posts()) {
            the_post();
            get_template_part('template-parts/content-event');
        } wp_reset_postdata();
        echo paginate_links();
    ?>

        <hr class="section-break"/>

        <p>Looking for a recap of past events?
            <a href="<?php echo site_url('/past-events') ?>">Check out our past event archive.</a>
        </p>
    </div>

    <?php get_footer();
?>