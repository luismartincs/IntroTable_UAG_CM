//
//  ViewController.h
//  IntroTable
//
//  Created by Luis de Jesus Martin Castillo on 17/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController <UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (nonatomic,strong) UIPageViewController *pageViewController;


@property (strong, nonatomic) IBOutlet UIButton *btnSpeed;

- (IBAction)btnIntroPressed:(id)sender;

@end

