const path = require('path');

const resources = [
	'_variables.scss',
	'_reset.scss',
	'_colors.scss',
	'_breakpoints.scss',
	'_helpers.scss',
	'_mixins.scss',
	'../components/_block-3d.scss',
	// "_typography.scss",
];
module.exports = resources.map((file) => path.resolve(__dirname, file));
