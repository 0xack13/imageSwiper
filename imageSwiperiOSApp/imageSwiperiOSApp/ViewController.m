//
//  ViewController.m
//  imageSwiperiOSApp
//
//  Created by 0xack13 on 8/16/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;
int imageCount = 2;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender {
    NSArray *images=[[NSArray alloc] initWithObjects:
                     @"1.png",
                     @"2.png",
                     @"3.png", nil];
    UISwipeGestureRecognizerDirection direction =
    [(UISwipeGestureRecognizer *) sender direction];
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            imageCount++;
            break;
        case UISwipeGestureRecognizerDirectionRight:
            imageCount--;
            break;
        default:
            break;
    }
    imageCount = (imageCount < 0) ? ([images count] -1):
    imageCount % [images count];
    imageView.image = [UIImage imageNamed:[images objectAtIndex:imageCount]];
}
@end
