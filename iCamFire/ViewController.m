//
//  ViewController.m
//  iCamFire
//
//  Created by Bui Duc Khanh on 9/2/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIImageView * imgViewCamfire;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self burnFire];
}


- (void)burnFire {
    imgViewCamfire = [[UIImageView alloc] initWithFrame:self.view.bounds];
    
    NSMutableArray * images= [[NSMutableArray alloc] initWithCapacity:17];
    
    for (int i = 1; i < 18; i++)
    {
        NSString * img = [NSString stringWithFormat:@"campFire%02d.gif", i];
        [images addObject:[UIImage imageNamed:img]];
    }
    
    imgViewCamfire.animationImages = images;
    imgViewCamfire.animationDuration = 1;
    imgViewCamfire.animationRepeatCount = 0;
    
    [self.view addSubview:imgViewCamfire];
    
    [imgViewCamfire startAnimating];
}


@end
