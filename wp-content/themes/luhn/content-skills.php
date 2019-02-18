<div class="skill-cube-container">
    <div class="skill-block wp">
        <div class="shape"></div>
        <div class="shape"><div class="skill-logo" role="img" aria-label="The logo of Wordpress framework" title="Wordpress logo"></div></div>
        <div class="shape"></div>
    </div>

    <?php if(wp_is_mobile()):?>
        <!-- Creative Cloud  -->
        <div class="skill-block cc">
            <div class="shape"></div>
            <div class="shape"><div class="skill-logo" role="img" aria-label="The logo of adobe creative cloud" title="Adobe Creative cloud"></div></div>
            <div class="shape"></div>
        </div>
    <?php else: ?>
        <div class="skill-block laravel">
            <div class="shape"></div>
            <div class="shape"><div class="skill-logo" role="img" aria-label="The logo of adobe creative cloud" title="Adobe Creative cloud"></div></div>
            <div class="shape"></div>
        </div>
        <div class="skill-block angular">
            <div class="shape"></div>
            <div class="shape"><div class="skill-logo" role="img" aria-label="The logo of adobe creative cloud" title="Adobe Creative cloud"></div></div>
            <div class="shape"></div>
        </div>
        <div class="skill-block psd">
            <div class="shape"></div>
            <div class="shape"><div class="skill-logo" role="img" aria-label="The logo of adobe creative cloud" title="Adobe Creative cloud"></div></div>
            <div class="shape"></div>
        </div>
        <div class="skill-block ae">
            <div class="shape"></div>
            <div class="shape"><div class="skill-logo" role="img" aria-label="The logo of adobe creative cloud" title="Adobe Creative cloud"></div></div>
            <div class="shape"></div>
        </div>              
    <?php endif; ?>
</div>