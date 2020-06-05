// PRELOAD CSS
// Create Chunks for Preloading (once generated ==> you can comment then in the constructor and load them in fucntions.php)
// reset
// typo
// header
// navigation
import '../../../sass/pages/_cathegory.scss';

// const genPageChunk = () =>
// 	import(
// 		/* webpackChunkName: "PLcategory"*/ /* webpackPrefetch: true*/ '../../../sass/pages/_cathegory.scss'
// 	);

// LazyLoaded CSS
const getSingleCss = () =>
    import(
        /* webpackChunkName: "LLsingle"*/
        /* webpackPrefetch: true*/
        '../../../sass/pages/_single.scss'
    );
const getFooterCss = () =>
    import(
        /* webpackChunkName: "LLfooter"*/
        /* webpackPrefetch: true*/
        '../../../sass/layout/_footer.scss'
    );

const getGlitchCss = () =>
    import(
        /* webpackChunkName: "LLglitch"*/
        /* webpackPrefetch: true*/
        '../../../sass/components/_glitch-hover.scss'
    );

const getCubeTitleCss = () =>
    import(
        /* webpackChunkName: "LLcubeTitle"*/
        /* webpackPrefetch: true*/
        '../../../sass/components/_title-cube.scss'
    );

// TODO: remove Preloader on other pages

class Single {
    constructor() {
        // You can comment the generators once you've got the chunks
        // genPageChunk();

        // Lazy load css
        getFooterCss();
        getSingleCss();
        getGlitchCss();
        getCubeTitleCss();

        import( /* webpackChunkName: "hover-glitch"*/ /* webpackPrefetch: true*/ '../modules/hover-glitch').then(
            ({
                default: hoverEffect
            }) => {
                // imagesLoaded(document.querySelectorAll('img'), () => {
                //     document.body.classList.remove('loading');
                // });
                // hoverEffect();
                Array.from(document.querySelectorAll('.grid__item-img')).forEach((el) => {
                    const imgs = Array.from(el.querySelectorAll('img'));
                    new hoverEffect({
                        parent: el,
                        intensity: el.dataset.intensity || undefined,
                        speedIn: el.dataset.speedin || undefined,
                        speedOut: el.dataset.speedout || undefined,
                        easing: el.dataset.easing || undefined,
                        hover: el.dataset.hover || undefined,
                        image1: imgs[0].getAttribute('src'),
                        image2: imgs[1].getAttribute('src'),
                        displacementImage: el.dataset.displacement
                    });
                });
            }
        );
    }
}

(() => {
    const single = new Single();
})();