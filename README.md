# react-native-document-controller
NativeModule to handle iOS UIDocumentInteractionController for *Copy To...* or *Open With...* behavior.

# Usage
```javascript
import { NativeModules } from 'react-native'; // or whatever flavor you prefer
var DocumentController = NativeModules.DocumentController;

DocumentController.show({
  file: 'file://<asset-library-uri>'
});
```
