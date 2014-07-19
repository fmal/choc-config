/**
 * Module dependencies.
 */
var exec = require('child_process').exec;
var path = require('path');
var fs = require('fs');


Hooks.addMenuItem('Actions/Chocolat/Open App Support Folder…', '', function() {
	exec('open "' + path.join(process.env.HOME, "Library", "Application Support", "Chocolat") + '"');
});