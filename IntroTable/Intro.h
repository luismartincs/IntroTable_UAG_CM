//
//  Intro.h
//  IntroTable
//
//  Created by Luis de Jesus Martin Castillo on 17/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface Intro : UIViewController

@property (nonatomic) NSInteger pageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lblIntro;

@end
