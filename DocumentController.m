#import "DocumentController.h"
#import "RCTBridge.h"

@implementation DocumentController

@synthesize bridge = _bridge;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSDictionary *)args)
{
    NSURL *file = [NSURL fileURLWithPath:args[@"file"]];
    
    self.documentController = [UIDocumentInteractionController interactionControllerWithURL:file];
    self.documentController.delegate = self;
    
    UIViewController *topController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }

    if (![self.documentController presentOpenInMenuFromRect:topController.view.bounds inView:topController.view animated:YES]) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:nil message:@"There are no installed apps that can open this file." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
}

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller {
    return self;
}

@end
