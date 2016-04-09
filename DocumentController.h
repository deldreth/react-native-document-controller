#import "RCTBridgeModule.h"

@import UIKit;

@interface DocumentController : NSObject <RCTBridgeModule>;

@property (nonatomic) UIDocumentInteractionController * documentController;

@end
