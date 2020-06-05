const activeCategory = class {
    constructor() {
        this.isCathegoryPage = document.querySelector('.category') !== null;
        this.init();
    }
    init() {
        // load this script on the cathegory page
        if (this.isCathegoryPage) {
            // toggle active class on hover
            var Activepage = $('#category-nav .active');

            $('#category-nav a').on("mouseover", function () {
                $('#category-nav .active').removeClass("active");
                $(this).parent().addClass("active")
            });

            $('#category-nav a').on("mouseleave", function () {
                $('#category-nav .active').removeClass("active");
                Activepage.addClass("active")
            });
        }
    }
}

export default activeCategory;