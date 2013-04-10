LEDownloadProgressCell
======================

A custom UITableViewCell subclass to be used with grouped UITableViews to present a download progress using the cell's default background image as a progress bar.

Use a CADisplayLink (or an NSTimer if you're into living dagerously) to update the progress value (ranging from 0.0 to 1.0).
You'll need the UIView+Image category to create the background color. Or feel free to implement your own, and if it performs better, open a Pull Request!
