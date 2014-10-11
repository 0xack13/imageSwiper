//
//  ViewController.m
//  touchDrawing
//
//  Created by 0xack13 on 10/11/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Initialize Drawing Code
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    drawImage.image = [defaults objectForKey:@"drawImageKey"];
    drawImage = [[UIImageView alloc] initWithImage:nil];
    drawImage.frame = self.view.frame;
    [self.view addSubview:drawImage];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    
    if([touch tapCount] == 2) {
        drawImage.image = nil;
    }
    
    location = [touch locationInView:touch.view];
    lastClick = [NSDate date];
    
    lastPoint = [touch locationInView:self.view];
    lastPoint.y -= 0;
    
    [super touchesBegan:touches withEvent:event];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
