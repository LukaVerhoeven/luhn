const path = require('path');
// const fs = require("fs");
const BrowserSyncPlugin = require('browser-sync-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
// const HtmlWebpackExcludeAssetsPlugin = require('html-webpack-exclude-assets-plugin');
const ScriptExtHtmlWebpackPlugin = require('script-ext-html-webpack-plugin');
// const MiniCssExtractPlugin = require('extract-css-chunks-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const BundleAnalyzerPlugin = require('webpack-bundle-analyzer')
	.BundleAnalyzerPlugin;
const PreloadWebpackPlugin = require('preload-webpack-plugin');

const {
	CleanWebpackPlugin
} = require('clean-webpack-plugin');
const webpack = require('webpack'); //to access built-in plugins
const fs = require('fs');
const {
	resolve
} = require('path');
// const HtmlWebpackPlugin = require('html-webpack-plugin'); //installed via npm
// Our function that generates our html plugins

// HTML FILES NAMES should be equal to JS BUNDLE filenames
let filenames = []; //leave this empty
let jsEntryPath = '../src/js/pageModules/';
let htmlPath = null; //set to null if no html files
let destPath = '../dist/';
let sassUtils = '../sass/utils/utils.js';
let publicPath = '/wp-content/themes/luhn/dist/';

function generateHtmlPlugins(templateDir) {
	// Read files in template directory
	const templateFiles = fs.readdirSync(path.resolve(__dirname, templateDir));

	return templateFiles.map((item) => {
		// Split names and extension
		const parts = item.split('.');
		if (parts.length > 1) {
			const name = parts[0];
			const extension = parts[1];
			// Create new HTMLWebpackPlugin with options
			// if (extension == 'html') {
			filenames.push(name);
			return new HtmlWebpackPlugin({
				chunks: [`${name}`],
				filename: `${name}.html`,
				template: path.resolve(
					__dirname,
					`${templateDir}/${name}.${extension}`
				),
			});
			// } else {
			// 	return undefined;
			// }
		} else {
			return undefined;
		}
	});
}

let htmlPlugins = htmlPath != null ? generateHtmlPlugins(htmlPath) : [];
htmlPlugins = htmlPlugins.filter((plugin) => plugin != undefined); //remove files which are not a directory

let createEntries = () => {
	entry = {};
	filenames.forEach((name) => {
		entry[name] = jsEntryPath + name + '.js';
	});
	return entry;
};

function findEntries() {
	const templateFiles = fs.readdirSync(path.resolve(__dirname, jsEntryPath));
	console.log('Js-path:', path.resolve(__dirname, jsEntryPath));

	return templateFiles.map((item) => {
		const parts = item.split('.');
		if (parts.length > 1) {
			filenames.push(parts[0]);
		}
	});
}

// use entryNames of html files OR get names by js files if not HTML is given.

if (filenames.length != 0) {
	entries = createEntries();
} else {
	findEntries();
	entries = createEntries();
}

// Call our function on our views directory.
// const htmlPlugins = generateHtmlPlugins('./src/html')
// console.log('!!!!!!!!!' + htmlPlugins[0].filename);

// const pages = ['index', 'page2'];
console.log('FILE_NAMES:', filenames);

const esConfig = {
	// mode: process.env.NODE_ENV,
	mode: 'development',
	// entry: './src/main.js',
	entry: {
		app: './src/app.js',
		page2: './src/page2.js',
	},
	entry: entries,
	output: {
		filename: 'js/[name].bundle.mjs',
		chunkFilename: 'js/[name].chunk.js',
		path: path.resolve(__dirname, destPath),
		publicPath: publicPath,
	},
	// externals: {
	// 	jquery: 'jQuery'
	// },
	plugins: [
		// new CleanWebpackPlugin(['./dist/css']),
		// new CleanWebpackPlugin({
		// 	cleanOnceBeforeBuildPatterns: [
		// 		resolve('build/**/*'),
		// 		resolve('debug/**/*'),
		// 		resolve('bundlesize/**/*'),
		// 	],

		// 	verbose: true,
		// 	dry: true, // remove after testing
		// }),
		new BrowserSyncPlugin({
			// host: 'localhost',
			port: 3000,
			files: ['*.html', '*.css', '*.js'],
			// server: {
			// 	baseDir: ['./dist/'],
			// },
			proxy: 'http://luhn-portfolio.wordpress/', //<== php server
		}),

		new ScriptExtHtmlWebpackPlugin({
			// give bundle.mjs a type="module"
			// custom: [{
			// 		test: /\.mjs$/,
			// 	},
			// 	{
			// 		test: 'ui.js',
			// 		attribute: 'id',
			// 		value: '12345'
			// 	}
			// ],
			// preload: /\.mjs$/,
			module: 'bundle.mjs',
			defaultAttribute: 'async',
		}),

		new MiniCssExtractPlugin({
			// Options similar to the same options in webpackOptions.output
			// both options are optional.
			hot: process.env.NODE_ENV === 'development',
			// filename: 'css/[name].[hash:4].css',
			// chunkFilename: 'css/[name]-chunk.[hash:4].css',
			filename: 'css/[name]-critical.css',
			chunkFilename: 'css/[name]-chunk.css',
			// chunkFilename: '[id].[hash:4].css',
			// moduleFilename: ({ name }) => `css/${name}.[hash:4].css`,
		}),

		// new BundleAnalyzerPlugin({
		// 	analyzerPort: 8881,
		// }),

		// Load Jquery inside webpack (no more import $ inside modules)
		// new webpack.ProvidePlugin({
		// 	$: 'jquery',
		// 	jQuery: 'jquery',
		// 	"window.jQuery": "jquery"
		// })
	].concat(htmlPlugins),
	module: {
		rules: [{
				test: /\.(sa|sc|c)ss$/,
				use: [{
						loader: MiniCssExtractPlugin.loader,
						options: {
							publicPath: publicPath, //path for urls in css
							// hot: process.env.NODE_ENV === 'development',
							hmr: process.env.NODE_ENV === 'development',
							reloadAll: true,
						},
					},
					{
						loader: 'css-loader',
						options: {
							sourceMap: true,
							importLoaders: 1
						},
					},
					// 'postcss-loader',
					{
						loader: 'sass-loader',
						options: {
							sourceMap: true
						}
					},
					{
						loader: 'sass-resources-loader',
						options: {
							resources: require(path.join(process.cwd(), sassUtils)),
						},
					},
				],
			},
			{
				test: /\.(html)$/,
				use: {
					// loader: "html-loader?attrs[]=video:src"
					loader: 'html-loader',
					options: {
						// attrs: [':data-src', 'img:src', 'link:href'],
						// attrs: [, 'video:src'],
						root: path.resolve(__dirname, 'dist'),
						// minimize: process.env.NODE_ENV === 'production'
					},
				},
			},
			// {
			//   test: /\.(html)$/,
			//   use: {
			//     loader: "file-loader",
			//     options: {
			//       name: "[name].[ext]"
			//       // attrs: [':data-src'],
			//       // minimize: process.env.NODE_ENV === 'production'
			//     }
			//   },
			//   exclude: path.resolve(__dirname, "./index.html")
			// },
			// {
			// 	test: /\.(png|jpe?g|gif|svg)$/i,
			// 	loader: 'file-loader',
			// 	options: {
			// 		name: '[name][hash:6].[ext]',
			// 		outputPath: '/img',
			// 	},
			// },
			// {
			//   test: /\.(mp4)$/,
			//   // loader: "file-loader"
			//   // loader: "url?limit=10000&mimetype=video/mp4"
			//   loader: "url-loader"
			//   // loader: 'url-loader?limit=100000'
			//   // loader: 'file-loader'
			//   // loader: 'file-loader?name=videos/[name].[ext]'
			// },
			{
				test: /\.(mov|mp4|webm)$/,
				// 'use' instead of 'loader' => chain multiple loaders (bottom to Top) or (right to Left)
				use: [{
						loader: 'file-loader',
						options: {
							name: '[name].[ext]',
							outputPath: 'video/',
						},
					},
					{
						loader: 'handbrake-loader',
						options: {
							// enable: process.env.NODE_ENV === "production",
							enable: true,
							format: 'mp4',
							preset: 'Very Fast 1080p30',
							optimize: true,
						},
					},
				],
			},
			// {
			//   test: /\.(mov|mp4|ogv|webm)$/,
			//   // 'use' instead of 'loader' => chain multiple loaders (bottom to Top) or (right to Left)
			//   loader: [
			//     {
			//       loader: "file-loader",
			//       options: {
			//         name: "video/[name].[ext]"
			//       }
			//     },
			//     {
			//       loader: "handbrake-loader",
			//       options: {
			//         // enable: process.env.NODE_ENV === "production",
			//         enable: true,
			//         format: "mp4",
			//         preset: "Very Fast 1080p30",
			//         optimize: true
			//       }
			//     }
			//   ]
			// },
			{
				test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
				use: [{
					loader: 'url-loader',
					options: {
						name: 'fonts/[name].[ext]',
						limit: 10000,
						minetype: 'application/font-woff',
						// outputPath: 'fonts/',
					},
				}, ],
			},
			{
				test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
				exclude: [/img/],
				use: [{
					loader: 'file-loader',
					options: {
						name: '[name].[ext]',
						outputPath: 'fonts/',
					},
				}, ],
			},
			// {
			// 	test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
			// 	exclude: [/img/], //Ignore svg that are in images folder

			// 	use: [
			// 		{
			// 			loader: 'file-loader',
			// 			options: {
			// 				name: '[name].[ext]',
			// 				outputPath: 'fonts/',
			// 			},
			// 		},
			// 	],
			// },

			{
				test: /\.(png|jpe?g|gif|svg|webp)$/,
				loaders: [{
						loader: 'file-loader',
						options: {
							name: 'img/[hash:6].[ext]',
						},
					},
					{
						loader: 'img-loader',
						options: {
							plugins: [
								require('imagemin-gifsicle')({
									interlaced: false,
									optimizationLevel: 2,
									Buffer,
								}),
								require('imagemin-pngquant')({
									floyd: 0.5,
									speed: 2,
								}),
							],
						},
					},
				],
			},
		],
	},
	optimization: {
		splitChunks: {
			chunks: 'async',
			// minSize: 30000,
			maxSize: 0,
			minChunks: 1,
			maxAsyncRequests: 5,
			maxInitialRequests: 3,
			automaticNameDelimiter: '~',
			automaticNameMaxLength: 30,
			name: true,
			cacheGroups: {
				vendors: {
					test: /[\\/]node_modules[\\/]/,
					priority: -10,
				},
				default: {
					minChunks: 2,
					priority: -20,
					reuseExistingChunk: true,
				},
				// styles: { //=> combine all css files into 1 file
				// 	name: 'styles',
				// 	test: /\.(sa|sc|c)ss$/,
				// 	chunks: 'all',
				// 	enforce: true,
				// },
			},
		},
	},
};

//clean out dist file en put new compiled files into dist (removes all previous hash-files)

const legacyConfig = {
	mode: process.env.NODE_ENV,
	entry: './src/app.js',
	output: {
		filename: 'legacy.js',
		path: path.resolve(__dirname, 'dist'),
	},
	module: {
		rules: [{
				test: /\.(sa|sc|c)ss$/,
				use: ['css-loader', 'sass-loader'],
			},
			{
				test: /\.(html)$/,
				use: {
					loader: 'html-loader',
					options: {
						// minimize: process.env.NODE_ENV === 'production'
					},
				},
			},
			{
				test: /\.(png|jpe?g|gif|svg|eot|ttf|woff|woff2)$/,
				loaders: [{
					loader: 'file-loader',
				}, ],
			},
		],
	},
	plugins: [],
};

// module.exports = [esConfig, legacyConfig];

// module.exports = [esConfig];
module.exports = esConfig;
// module.exports.plugins.push(new CleanWebpackPlugin());

// if (process.env.NODE_ENV === "production") {
//   module.exports[1].plugins.push(new CleanWebpackPlugin());
//   // push plugin to both configs
//   // module.exports.forEach(function (element) {
//   // 	element.plugins.push(
//   // 		new CleanWebpackPlugin()
//   // 	);
//   // });
// } else {
//   module.exports[0].plugins
//     .push
//     // new webpack.optimize.LimitChunkCountPlugin({
//     // 	maxChunks: 1
//     // })
//     ();
// }

// module.exports[0].plugins.push(
//   new HtmlWebpackPlugin(
//     {
//       chunks: ["index"],
//       inject: true,
//       filename: `./index.html`,
//       template: `./src/html/index.html`
//     }
//     // new HtmlWebpackInjector()
//   )
// );
// module.exports[0].entry["page2"] = `./src/page2.js`;
// module.exports[0].plugins.push(
//   new HtmlWebpackPlugin(
//     {
//       chunks: ["page2"],
//       inject: true,
//       filename: `./page2.html`,
//       template: `./src/html/page2.html`
//     },
//     new PreloadWebpackPlugin()
//   )
// );

// pages.forEach(page => {
//   module.exports[0].entry[page] = `./src/${page}.js`;
//   console.log("!!!!" + JSON.stringify(module.exports[0].entry));

//   module.exports[0].plugins.push(
//     new HtmlWebpackPlugin({
//       // inject: true,
//       chunks: [`${page}`],
//       // named per-page output
//       filename: `${page}.html`,

//       // shared head scripts
//       // headScripts: [
//       //   {
//       //     src: 'scripts/jQuery.js'
//       //   },
//       //   {
//       //     content: `
//       //       console.log('hello world');
//       //       alert('huzah!');
//       //     `
//       //   }
//       // ],
//       // per-page html content
//       // pageContent: fs.readFileSync(`./src/pages/${ page }.html`, 'utf8'),
//       // one template for all pages
//       template: `./src/html/${page}.html`,
//       prefetch: [`**/*.*`],
//       preload: [`${page}.chunk.js`]
//     })
//   );

//   module.exports[0].plugins.push(new PreloadWebpackPlugin());
// });
// let HtmlWebpackPlugins = [];

// context.keys().forEach((filename) => {
// 	if (NODE_ENV === 'development') {
// 		HtmlWebpackPlugins.push(
// 			new HtmlWebpackPlugin({
// 				inject: true,
// 				template: paths.appHtml,
// 				filename: `${fileName}.html`,
// 			})
// 		);
// 		return;
// 	}

// 	HtmlWebpackPlugins.push(
// 		new HtmlWebpackPlugin({
// 			inject: true,
// 			template: paths.appHtml,
// 			filename: `${fileName}.html`,
// 			minify: {
// 				removeComments: true,
// 				collapseWhitespace: true,
// 				removeRedundantAttributes: true,
// 				useShortDoctype: true,
// 				removeEmptyAttributes: true,
// 				removeStyleLinkTypeAttributes: true,
// 				keepClosingSlash: true,
// 				minifyJS: true,
// 				minifyCSS: true,
// 				minifyURLs: true,
// 			},
// 		})
// 	);
// });

// module.exports = HtmlWebpackPlugins;