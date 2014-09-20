#import "AppDelegate.h"
#import "DockDownloadProgressBar.h"
#import "DockCircularProgressBar.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [[self progressBarList] removeAllItems];
  NSArray* types_progress_bar = @[@"DownloadProgressBar",
                                  @"CircularProgressBar"];
  [[self progressBarList] addItemsWithTitles:types_progress_bar];
  [[self progressBarList] selectItemAtIndex:0];

  // Show percent.
  NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
  NSString* percentString =
     [formatter stringFromNumber: [NSNumber numberWithInt:
         [[self percentSlider] intValue]]];

  [[self percentField] setStringValue:percentString];
}

- (IBAction)showProgressBar:(id)sender {
  double progress = [[self percentSlider] intValue]/100.0;

  // Make sure the previous ProgressBar is clear before update.
  [[DockDownloadProgressBar sharedDockDownloadProgressBar] clear];
  [[DockCircularProgressBar sharedDockCircularProgressBar] clear];

  NSString* selected_title = [[[self progressBarList] selectedItem] title];
  if ([selected_title isEqual: @"DownloadProgressBar"]) {
    [[DockDownloadProgressBar sharedDockDownloadProgressBar]
        setProgress:progress];
    [[DockDownloadProgressBar sharedDockDownloadProgressBar] updateProgressBar];
  } else if ([selected_title isEqual: @"CircularProgressBar"]) {
    [[DockCircularProgressBar sharedDockCircularProgressBar]
        setProgress:progress];
    [[DockCircularProgressBar sharedDockCircularProgressBar] updateProgressBar];
  }
}

- (IBAction)hideProgressBar:(id)sender {
  NSString* title = [[[self progressBarList] selectedItem] title];
  if ([title isEqual: @"DownloadProgressBar"]) {
    [[DockDownloadProgressBar sharedDockDownloadProgressBar] clear];
  } else if ([title isEqual: @"CircularProgressBar"]) {
    [[DockCircularProgressBar sharedDockCircularProgressBar] clear];
  }
 }

- (IBAction)OnValueChange:(id)sender {
  // Show percent.
  NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
  NSString* percentString =
  [formatter stringFromNumber:[NSNumber numberWithInt:
      [[self percentSlider] intValue]]];

  [[self percentField] setStringValue:percentString];
}

@end
