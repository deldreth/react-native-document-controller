/**
 * @providesModule DocumentController
 * @flow
 */
'use strict';

var React = require('react-native');
var {
  NativeModules
} = React;

var NativeDocumentController = NativeModules.DocumentController;

/**
 * High-level docs for the DocumentController iOS API can be written here.
 */

var DocumentController = {
  show: function () {
    NativeDocumentController.show();
  }
};

module.exports = DocumentController;
