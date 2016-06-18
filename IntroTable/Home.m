//
//  HomeViewController.m
//  IntroTable
//
//  Created by Luis de Jesus Martin Castillo on 17/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import "Home.h"

@interface Home ()

@property NSMutableArray *avengerNames;
@property NSMutableArray *avengerImgs;

@end


@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initController{
    
    _avengerNames = [[NSMutableArray alloc] initWithObjects:@"Capitán América",@"Iron Man",@"Hulk",@"Hawk Eye",@"Thor",@"Spiderman", nil];
    
    _avengerImgs = [[NSMutableArray alloc] initWithObjects:@"capitan.png",@"ironman.png",@"hulk.png",@"hawkeye.png",@"thor.png",@"spiderman.png", nil];
}

#pragma  mark - Delegates

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_avengerNames count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    cellAvengers *cell = (cellAvengers*)[tableView dequeueReusableCellWithIdentifier:@"cellAvenger"];
    
    if (cell == nil) {
        
        [tableView registerNib:[UINib nibWithNibName:@"cellAvengers" bundle:nil] forCellReuseIdentifier:@"cellAvenger"];
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellAvenger"];
    }
    
    cell.nameAvenger.text = _avengerNames[indexPath.row];
    cell.imgAvenger.image = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
