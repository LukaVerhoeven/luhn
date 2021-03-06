/******/ (function(modules) { // webpackBootstrap
/******/ 	// install a JSONP callback for chunk loading
/******/ 	function webpackJsonpCallback(data) {
/******/ 		var chunkIds = data[0];
/******/ 		var moreModules = data[1];
/******/
/******/ 		var prefetchChunks = data[3] || [];
/******/ 		// add "moreModules" to the modules object,
/******/ 		// then flag all "chunkIds" as loaded and fire callback
/******/ 		var moduleId, chunkId, i = 0, resolves = [];
/******/ 		for(;i < chunkIds.length; i++) {
/******/ 			chunkId = chunkIds[i];
/******/ 			if(Object.prototype.hasOwnProperty.call(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 				resolves.push(installedChunks[chunkId][0]);
/******/ 			}
/******/ 			installedChunks[chunkId] = 0;
/******/ 		}
/******/ 		for(moduleId in moreModules) {
/******/ 			if(Object.prototype.hasOwnProperty.call(moreModules, moduleId)) {
/******/ 				modules[moduleId] = moreModules[moduleId];
/******/ 			}
/******/ 		}
/******/ 		if(parentJsonpFunction) parentJsonpFunction(data);
/******/ 		// chunk prefetching for javascript
/******/ 		prefetchChunks.forEach(function(chunkId) {
/******/ 			if(installedChunks[chunkId] === undefined) {
/******/ 				installedChunks[chunkId] = null;
/******/ 				var link = document.createElement('link');
/******/
/******/ 				if (__webpack_require__.nc) {
/******/ 					link.setAttribute("nonce", __webpack_require__.nc);
/******/ 				}
/******/ 				link.rel = "prefetch";
/******/ 				link.as = "script";
/******/ 				link.href = jsonpScriptSrc(chunkId);
/******/ 				document.head.appendChild(link);
/******/ 			}
/******/ 		});
/******/ 		while(resolves.length) {
/******/ 			resolves.shift()();
/******/ 		}
/******/
/******/ 	};
/******/
/******/
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// object to store loaded CSS chunks
/******/ 	var installedCssChunks = {
/******/ 		"global": 0
/******/ 	}
/******/
/******/ 	// object to store loaded and loading chunks
/******/ 	// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 	// Promise = chunk loading, 0 = chunk loaded
/******/ 	var installedChunks = {
/******/ 		"global": 0
/******/ 	};
/******/
/******/
/******/
/******/ 	// script path function
/******/ 	function jsonpScriptSrc(chunkId) {
/******/ 		return __webpack_require__.p + "js/" + ({"LLfooter":"LLfooter","LLhamburger":"LLhamburger","afterCritical":"afterCritical","colordrip":"colordrip"}[chunkId]||chunkId) + ".chunk.js"
/******/ 	}
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
/******/ 	// This file contains only the entry chunk.
/******/ 	// The chunk loading function for additional chunks
/******/ 	__webpack_require__.e = function requireEnsure(chunkId) {
/******/ 		var promises = [];
/******/
/******/
/******/ 		// mini-css-extract-plugin CSS loading
/******/ 		var cssChunks = {"LLfooter":1,"LLhamburger":1,"afterCritical":1};
/******/ 		if(installedCssChunks[chunkId]) promises.push(installedCssChunks[chunkId]);
/******/ 		else if(installedCssChunks[chunkId] !== 0 && cssChunks[chunkId]) {
/******/ 			promises.push(installedCssChunks[chunkId] = new Promise(function(resolve, reject) {
/******/ 				var href = "css/" + ({"LLfooter":"LLfooter","LLhamburger":"LLhamburger","afterCritical":"afterCritical","colordrip":"colordrip"}[chunkId]||chunkId) + "-chunk.css";
/******/ 				var fullhref = __webpack_require__.p + href;
/******/ 				var existingLinkTags = document.getElementsByTagName("link");
/******/ 				for(var i = 0; i < existingLinkTags.length; i++) {
/******/ 					var tag = existingLinkTags[i];
/******/ 					var dataHref = tag.getAttribute("data-href") || tag.getAttribute("href");
/******/ 					if(tag.rel === "stylesheet" && (dataHref === href || dataHref === fullhref)) return resolve();
/******/ 				}
/******/ 				var existingStyleTags = document.getElementsByTagName("style");
/******/ 				for(var i = 0; i < existingStyleTags.length; i++) {
/******/ 					var tag = existingStyleTags[i];
/******/ 					var dataHref = tag.getAttribute("data-href");
/******/ 					if(dataHref === href || dataHref === fullhref) return resolve();
/******/ 				}
/******/ 				var linkTag = document.createElement("link");
/******/ 				linkTag.rel = "stylesheet";
/******/ 				linkTag.type = "text/css";
/******/ 				linkTag.onload = resolve;
/******/ 				linkTag.onerror = function(event) {
/******/ 					var request = event && event.target && event.target.src || fullhref;
/******/ 					var err = new Error("Loading CSS chunk " + chunkId + " failed.\n(" + request + ")");
/******/ 					err.code = "CSS_CHUNK_LOAD_FAILED";
/******/ 					err.request = request;
/******/ 					delete installedCssChunks[chunkId]
/******/ 					linkTag.parentNode.removeChild(linkTag)
/******/ 					reject(err);
/******/ 				};
/******/ 				linkTag.href = fullhref;
/******/
/******/ 				var head = document.getElementsByTagName("head")[0];
/******/ 				head.appendChild(linkTag);
/******/ 			}).then(function() {
/******/ 				installedCssChunks[chunkId] = 0;
/******/ 			}));
/******/ 		}
/******/
/******/ 		// JSONP chunk loading for javascript
/******/
/******/ 		var installedChunkData = installedChunks[chunkId];
/******/ 		if(installedChunkData !== 0) { // 0 means "already installed".
/******/
/******/ 			// a Promise means "currently loading".
/******/ 			if(installedChunkData) {
/******/ 				promises.push(installedChunkData[2]);
/******/ 			} else {
/******/ 				// setup Promise in chunk cache
/******/ 				var promise = new Promise(function(resolve, reject) {
/******/ 					installedChunkData = installedChunks[chunkId] = [resolve, reject];
/******/ 				});
/******/ 				promises.push(installedChunkData[2] = promise);
/******/
/******/ 				// start chunk loading
/******/ 				var script = document.createElement('script');
/******/ 				var onScriptComplete;
/******/
/******/ 				script.charset = 'utf-8';
/******/ 				script.timeout = 120;
/******/ 				if (__webpack_require__.nc) {
/******/ 					script.setAttribute("nonce", __webpack_require__.nc);
/******/ 				}
/******/ 				script.src = jsonpScriptSrc(chunkId);
/******/
/******/ 				// create error before stack unwound to get useful stacktrace later
/******/ 				var error = new Error();
/******/ 				onScriptComplete = function (event) {
/******/ 					// avoid mem leaks in IE.
/******/ 					script.onerror = script.onload = null;
/******/ 					clearTimeout(timeout);
/******/ 					var chunk = installedChunks[chunkId];
/******/ 					if(chunk !== 0) {
/******/ 						if(chunk) {
/******/ 							var errorType = event && (event.type === 'load' ? 'missing' : event.type);
/******/ 							var realSrc = event && event.target && event.target.src;
/******/ 							error.message = 'Loading chunk ' + chunkId + ' failed.\n(' + errorType + ': ' + realSrc + ')';
/******/ 							error.name = 'ChunkLoadError';
/******/ 							error.type = errorType;
/******/ 							error.request = realSrc;
/******/ 							chunk[1](error);
/******/ 						}
/******/ 						installedChunks[chunkId] = undefined;
/******/ 					}
/******/ 				};
/******/ 				var timeout = setTimeout(function(){
/******/ 					onScriptComplete({ type: 'timeout', target: script });
/******/ 				}, 120000);
/******/ 				script.onerror = script.onload = onScriptComplete;
/******/ 				document.head.appendChild(script);
/******/ 			}
/******/ 		}
/******/ 		return Promise.all(promises);
/******/ 	};
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
/******/ 	__webpack_require__.p = "/wp-content/themes/luhn/dist/";
/******/
/******/ 	// on error function for async loading
/******/ 	__webpack_require__.oe = function(err) { console.error(err); throw err; };
/******/
/******/ 	var jsonpArray = window["webpackJsonp"] = window["webpackJsonp"] || [];
/******/ 	var oldJsonpFunction = jsonpArray.push.bind(jsonpArray);
/******/ 	jsonpArray.push = webpackJsonpCallback;
/******/ 	jsonpArray = jsonpArray.slice();
/******/ 	for(var i = 0; i < jsonpArray.length; i++) webpackJsonpCallback(jsonpArray[i]);
/******/ 	var parentJsonpFunction = oldJsonpFunction;
/******/
/******/
/******/ 	var startupResult = (function() {
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "../src/js/pageModules/global.js");
/******/ 	})();
/******/
/******/ 	webpackJsonpCallback([[], {}, 0, ["LLfooter","LLhamburger","afterCritical"]]);
/******/ 	return startupResult;
/******/ })
/************************************************************************/
/******/ ({

/***/ "../sass/components/_navigation.scss":
/*!*******************************************!*\
  !*** ../sass/components/_navigation.scss ***!
  \*******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("// extracted by mini-css-extract-plugin\n\n//# sourceURL=webpack:///../sass/components/_navigation.scss?");

/***/ }),

/***/ "../sass/critical-loaders/preCritical.scss":
/*!*************************************************!*\
  !*** ../sass/critical-loaders/preCritical.scss ***!
  \*************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("// extracted by mini-css-extract-plugin\n\n//# sourceURL=webpack:///../sass/critical-loaders/preCritical.scss?");

/***/ }),

/***/ "../sass/layout/_header.scss":
/*!***********************************!*\
  !*** ../sass/layout/_header.scss ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("// extracted by mini-css-extract-plugin\n\n//# sourceURL=webpack:///../sass/layout/_header.scss?");

/***/ }),

/***/ "../sass/utils/_reset.scss":
/*!*********************************!*\
  !*** ../sass/utils/_reset.scss ***!
  \*********************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("// extracted by mini-css-extract-plugin\n\n//# sourceURL=webpack:///../sass/utils/_reset.scss?");

/***/ }),

/***/ "../sass/utils/_typography.scss":
/*!**************************************!*\
  !*** ../sass/utils/_typography.scss ***!
  \**************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("// extracted by mini-css-extract-plugin\n\n//# sourceURL=webpack:///../sass/utils/_typography.scss?");

/***/ }),

/***/ "../src/js/pageModules/global.js":
/*!***************************************!*\
  !*** ../src/js/pageModules/global.js ***!
  \***************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _sass_critical_loaders_preCritical_scss__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../sass/critical-loaders/preCritical.scss */ \"../sass/critical-loaders/preCritical.scss\");\n/* harmony import */ var _sass_critical_loaders_preCritical_scss__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_sass_critical_loaders_preCritical_scss__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _sass_utils_reset_scss__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../sass/utils/_reset.scss */ \"../sass/utils/_reset.scss\");\n/* harmony import */ var _sass_utils_reset_scss__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_sass_utils_reset_scss__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _sass_utils_typography_scss__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../sass/utils/_typography.scss */ \"../sass/utils/_typography.scss\");\n/* harmony import */ var _sass_utils_typography_scss__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_sass_utils_typography_scss__WEBPACK_IMPORTED_MODULE_2__);\n/* harmony import */ var _sass_layout_header_scss__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../sass/layout/_header.scss */ \"../sass/layout/_header.scss\");\n/* harmony import */ var _sass_layout_header_scss__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_sass_layout_header_scss__WEBPACK_IMPORTED_MODULE_3__);\n/* harmony import */ var _sass_components_navigation_scss__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../sass/components/_navigation.scss */ \"../sass/components/_navigation.scss\");\n/* harmony import */ var _sass_components_navigation_scss__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_sass_components_navigation_scss__WEBPACK_IMPORTED_MODULE_4__);\n// Bundle of Critical css used on all pages (enqueue in functions.php)\r\n\r\n\r\n\r\n\r\n\r\n// import '../../css/hamburger.css';\r\n\r\n// Chunks of less important css used on all pages\r\nconst getFooterCss = () =>\r\n\t__webpack_require__.e(/*! import() | LLfooter */ \"LLfooter\").then(__webpack_require__.t.bind(null, /*! ../../../sass/layout/_footer.scss */ \"../sass/layout/_footer.scss\", 7));\r\n\r\nconst getHamburgerCss = () =>\r\n\t__webpack_require__.e(/*! import() | LLhamburger */ \"LLhamburger\").then(__webpack_require__.t.bind(null, /*! ../../css/hamburger.css */ \"../src/css/hamburger.css\", 7));\r\nconst showChunkCss = () =>\r\n\t__webpack_require__.e(/*! import() | afterCritical */ \"afterCritical\").then(__webpack_require__.t.bind(null, /*! ../../../sass/critical-loaders/afterCritical.scss */ \"../sass/critical-loaders/afterCritical.scss\", 7));\r\n\r\nclass Global {\r\n\tconstructor() {\r\n\t\t// Lazy load css\r\n\t\tgetFooterCss();\r\n\t\tgetHamburgerCss();\r\n\t\tshowChunkCss().then(() => {\r\n\t\t\tsetTimeout(function () {\r\n\t\t\t\tconst items = document.querySelectorAll('.global-menu__item');\r\n\t\t\t\titems.forEach(item => {\r\n\t\t\t\t\titem.classList.remove('disabled-transition');\r\n\t\t\t\t});\r\n\t\t\t}, 500)\r\n\r\n\t\t});\r\n\t\t// this.lazyLoadingHamburger(this.hamburger);\r\n\t\t__webpack_require__.e(/*! import() | colordrip */ \"colordrip\").then(__webpack_require__.bind(null, /*! ../hamburger/colordrip */ \"../src/js/hamburger/colordrip.js\")).then(\r\n\t\t\t({\r\n\t\t\t\tdefault: instance\r\n\t\t\t}) => {\r\n\t\t\t\tnew instance();\r\n\t\t\t}\r\n\t\t);\r\n\t}\r\n\r\n\t// lazyLoadingHamburger(variable) { // not working on mobile ==> more used for libraries\r\n\t// \tlet buttons = document.querySelectorAll('.hamburger-menu');\r\n\t// \tfor (let i = 0; i < buttons.length; i++) {\r\n\t// \t\tconst button = buttons[i];\r\n\t// \t\tconst events = ['click', 'mouseover'];\r\n\t// \t\tfor (let j = 0; j < events.length; j++) {\r\n\t// \t\t\tbutton.addEventListener(events[j], () => {\r\n\t// \t\t\t\tif (variable == undefined) {\r\n\t// \t\t\t\t\timport(\r\n\t// \t\t\t\t\t\t/* webpackChunkName: \"hamburger\"*/ /* webpackPrefetch: true*/ '../hamburger/colordrip'\r\n\t// \t\t\t\t\t).then(({ default: instance }) => {\r\n\t// \t\t\t\t\t\tvariable = new instance();\r\n\t// \t\t\t\t\t});\r\n\t// \t\t\t\t}\r\n\t// \t\t\t});\r\n\t// \t\t}\r\n\t// \t}\r\n\t// }\r\n}\r\n\r\n(() => {\r\n\tconst global = new Global();\r\n})();\n\n//# sourceURL=webpack:///../src/js/pageModules/global.js?");

/***/ })

/******/ });