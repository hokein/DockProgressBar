#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSPopUpButton *progressBarList;
@property (weak) IBOutlet NSTextField *percentField;
@property (weak) IBOutlet NSSlider *percentSlider;

- (IBAction)showProgressBar:(id)sender;
- (IBAction)hideProgressBar:(id)sender;
- (IBAction)OnValueChange:(id)sender;

@end
