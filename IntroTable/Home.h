//
//  HomeViewController.h
//  IntroTable
//
//  Created by Luis de Jesus Martin Castillo on 17/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellAvengers.h"

@interface Home : UIViewController <UITableViewDelegate,UITableViewDataSource>


@property (strong, nonatomic) IBOutlet UITableView *tableAvengers;

@end
