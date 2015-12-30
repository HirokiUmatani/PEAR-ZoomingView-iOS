### PEAR-ZoomingView-iOS [![GitHub license](https://img.shields.io/badge/LICENSE-MIT%20LICENSE-blue.svg)](https://github.com/HirokiUmatani/PEAR-ZoomingView-iOS/LICENSE) [![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://cocoapods.org/pods/PEAR-ZoomingView-iOS) [![CocoaPods](https://img.shields.io/cocoapods/v/PEAR-ZoomingView-iOS.svg)](https://cocoapods.org/pods/PEAR-ZoomingView-iOS)  

====
### Overview
Full screen to display when touch the view .

### Installation
```
pod 'PEAR-ZoomingView-iOS'
```
### Demo Screen
![Zooming view demo](http://pear.chat/image/zoomingDemo.gif)


### Usage

#### □ import header file
```
#import "ZoomingView.h"
```


#### □ set delegate
```
_zoomingView.delegate = self;
```

#### □ set delegate method
```
- (void)touchView:(UIView *)view
{
    [self.view bringSubviewToFront:view];
}
```

#### □shadow property
```
_zoomingView.isShadow = YES; // default:NO
```

#### □ margin property
```
// default : 0
_zoomingView.topMargin = 100;
_zoomingView.bottomMargin = 60;
_zoomingView.leftMargin = 40;
_zoomingView.rightMargin = 20;

```

### Documents
[library document](http://cocoadocs.org/docsets/PEAR-ZoomingView-iOS)

### Licence
[MIT](https://github.com/HirokiUmatani/PEAR-ZoomingView-iOS/blob/master/LICENSE)

### Author
[GitHub](https://github.com/HirokiUmatani)
[FaceBook](https://www.facebook.com/hiroki.umatani)
[Twitter](https://twitter.com/pearchatHU)
