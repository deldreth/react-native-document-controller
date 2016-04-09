/**
 * @providesModule DocumentController
 * @flow
 */
'use strict';

var NativeDocumentController = require('NativeModules').DocumentController;

/**
 * High-level docs for the DocumentController iOS API can be written here.
 */

var DocumentController = {
  show: function () {
    NativeDocumentController.show();
  }
};

module.exports = DocumentController;
