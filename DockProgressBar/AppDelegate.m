#import "AppDelegate.h"
#import "DockDownloadProgressBar.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  DockDownloadProgressBar* progress_bar =
      [DockDownloadProgressBar sharedDockDownloadProgressBar];
  [progress_bar setProgress:0.3];
  [progress_bar updateProgressBar];
}

@end
