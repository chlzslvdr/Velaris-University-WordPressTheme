<?php
    get_header();
    pageBanner(array(
        'title' => 'All Programs',
        'subtitle' => 'There is something for everyone. Have a look around.',
        'photo' => 'https://images.unsplash.com/photo-1484914440268-8d352fe4db95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    ));
    ?>

    <div class="container container--narrow page-section">

    <ul class="link-list min-list">
        <?php
            while(have_posts()) {
                the_post(); ?>
                <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
            <?php } wp_reset_postdata();
            echo paginate_links();
        ?>
    </ul>
    </div>

    <?php get_footer();
?>