/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "../src/js/pageModules/assets.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "../dist/img/favicon/apple-touch-icon.png":
/*!************************************************!*\
  !*** ../dist/img/favicon/apple-touch-icon.png ***!
  \************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"/img/100b93.png\";\n\n//# sourceURL=webpack:///../dist/img/favicon/apple-touch-icon.png?");

/***/ }),

/***/ "../dist/img/favicon/favicon-16x16.png":
/*!*********************************************!*\
  !*** ../dist/img/favicon/favicon-16x16.png ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"/img/b1fcc9.png\";\n\n//# sourceURL=webpack:///../dist/img/favicon/favicon-16x16.png?");

/***/ }),

/***/ "../dist/img/favicon/favicon-32x32.png":
/*!*********************************************!*\
  !*** ../dist/img/favicon/favicon-32x32.png ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"/img/a8ec23.png\";\n\n//# sourceURL=webpack:///../dist/img/favicon/favicon-32x32.png?");

/***/ }),

/***/ "../dist/img/favicon/safari-pinned-tab.svg":
/*!*************************************************!*\
  !*** ../dist/img/favicon/safari-pinned-tab.svg ***!
  \*************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"/img/358f33.svg\";\n\n//# sourceURL=webpack:///../dist/img/favicon/safari-pinned-tab.svg?");

/***/ }),

/***/ "../src/img/logo-min.webm":
/*!********************************!*\
  !*** ../src/img/logo-min.webm ***!
  \********************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"video/logo-min.mp4\";\n\n//# sourceURL=webpack:///../src/img/logo-min.webm?");

/***/ }),

/***/ "../src/img/logo.gif":
/*!***************************!*\
  !*** ../src/img/logo.gif ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"/img/ee75a7.gif\";\n\n//# sourceURL=webpack:///../src/img/logo.gif?");

/***/ }),

/***/ "../src/img/logo.webp":
/*!****************************!*\
  !*** ../src/img/logo.webp ***!
  \****************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("module.exports = __webpack_require__.p + \"/img/d3d748.webp\";\n\n//# sourceURL=webpack:///../src/img/logo.webp?");

/***/ }),

/***/ "../src/js/pageModules/assets.js":
/*!***************************************!*\
  !*** ../src/js/pageModules/assets.js ***!
  \***************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _img_logo_min_webm__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../img/logo-min.webm */ \"../src/img/logo-min.webm\");\n/* harmony import */ var _img_logo_min_webm__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_img_logo_min_webm__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _img_logo_gif__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../img/logo.gif */ \"../src/img/logo.gif\");\n/* harmony import */ var _img_logo_gif__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_img_logo_gif__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _img_logo_webp__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../img/logo.webp */ \"../src/img/logo.webp\");\n/* harmony import */ var _img_logo_webp__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_img_logo_webp__WEBPACK_IMPORTED_MODULE_2__);\n/* harmony import */ var _dist_img_favicon_apple_touch_icon_png__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../dist/img/favicon/apple-touch-icon.png */ \"../dist/img/favicon/apple-touch-icon.png\");\n/* harmony import */ var _dist_img_favicon_apple_touch_icon_png__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_dist_img_favicon_apple_touch_icon_png__WEBPACK_IMPORTED_MODULE_3__);\n/* harmony import */ var _dist_img_favicon_favicon_32x32_png__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../dist/img/favicon/favicon-32x32.png */ \"../dist/img/favicon/favicon-32x32.png\");\n/* harmony import */ var _dist_img_favicon_favicon_32x32_png__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_dist_img_favicon_favicon_32x32_png__WEBPACK_IMPORTED_MODULE_4__);\n/* harmony import */ var _dist_img_favicon_favicon_16x16_png__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../dist/img/favicon/favicon-16x16.png */ \"../dist/img/favicon/favicon-16x16.png\");\n/* harmony import */ var _dist_img_favicon_favicon_16x16_png__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_dist_img_favicon_favicon_16x16_png__WEBPACK_IMPORTED_MODULE_5__);\n/* harmony import */ var _dist_img_favicon_safari_pinned_tab_svg__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../../dist/img/favicon/safari-pinned-tab.svg */ \"../dist/img/favicon/safari-pinned-tab.svg\");\n/* harmony import */ var _dist_img_favicon_safari_pinned_tab_svg__WEBPACK_IMPORTED_MODULE_6___default = /*#__PURE__*/__webpack_require__.n(_dist_img_favicon_safari_pinned_tab_svg__WEBPACK_IMPORTED_MODULE_6__);\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\n\n//# sourceURL=webpack:///../src/js/pageModules/assets.js?");

/***/ })

/******/ });