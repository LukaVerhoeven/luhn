(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["active-category"],{

/***/ "../src/js/modules/active-category.js":
/*!********************************************!*\
  !*** ../src/js/modules/active-category.js ***!
  \********************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\nconst activeCategory = class {\r\n    constructor() {\r\n        this.isCathegoryPage = document.querySelector('.category') !== null;\r\n        this.init();\r\n    }\r\n    init() {\r\n        // load this script on the cathegory page\r\n        if (this.isCathegoryPage) {\r\n            // toggle active class on hover\r\n            var Activepage = $('#category-nav .active');\r\n\r\n            $('#category-nav a').on(\"mouseover\", function () {\r\n                $('#category-nav .active').removeClass(\"active\");\r\n                $(this).parent().addClass(\"active\")\r\n            });\r\n\r\n            $('#category-nav a').on(\"mouseleave\", function () {\r\n                $('#category-nav .active').removeClass(\"active\");\r\n                Activepage.addClass(\"active\")\r\n            });\r\n        }\r\n    }\r\n}\r\n\r\n/* harmony default export */ __webpack_exports__[\"default\"] = (activeCategory);\n\n//# sourceURL=webpack:///../src/js/modules/active-category.js?");

/***/ })

}]);