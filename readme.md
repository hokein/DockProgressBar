#DockProgressBar

DockProgressBar provides different style progress bar on Mac OS X.
With it, developers can show dock progress bar in their application without much efforts.

##DockProgressBar Styles

DockProgressBar is designed as singleton, and provides simple APIs for developers: 

* `shareXXXProgressBar` : Get a ProgressBar instance.
* `setProgress` : Set progress value.
* `updateProgressBar` : Show the ProgressBar.

By default, the valid progress range is [0.0, 1.0].  


Below is a usage sample, refer to [AppDelegate.m](https://github.com/hokein/DockProgressBar/blob/master/DockProgressBar/AppDelegate.m)
for more details.

```
// Get a ProgressBar value.
DockCircularProgressBar* progress_bar =
    [DockCircularProgressBar sharedDockCircularProgressBar];
// set progress value
[progress_bar setProgress:0.3];
// Show progress bar in dock
[progress_bar updateProgressBar];
```

###DockDownloadProgressBar

The same style likes the original download bar on Mac OS X.

`DockDownloadProgressBar` is a subclass of `NSProgressIndicator`,
you can use any base class's method to custom your progress bar.


###DockCircularProgressBar

The circular style progress bar like Google Chrome download style.


##License

BSD
