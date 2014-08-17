//
//  ViewController.h
//  imageSwiperiOSApp
//
//  Created by 0xack13 on 8/16/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender;

@end
