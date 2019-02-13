

<?php wp_footer(); ?>
<?php if(! wp_is_mobile() &&is_page("home")):?>
    <script>
        // init custom parallax
        var scene = document.getElementById('parallax');
        var parallax = new Parallax(scene);
    </script>
<?php endif; ?>

</body>
</html>