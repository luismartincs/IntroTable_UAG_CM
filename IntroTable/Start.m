//
//  ViewController.m
//  IntroTable
//
//  Created by Luis de Jesus Martin Castillo on 17/06/16.
//  Copyright © 2016 Luis de Jesus Martin Castillo. All rights reserved.
//

#import "Start.h"

@interface Start ()

@end

@implementation Start


#pragma mark - Initialization

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController{
    maIntroTitles = [[NSMutableArray alloc] initWithObjects:@"Este verano",@"Conoce los Avengers",@"Directamente desde tu iPhone", nil];
    maIntroImgs = [[NSMutableArray alloc] initWithObjects:@"summer.png",@"avengers.jpg",@"iphone.png", nil];
    
    [self createPageViews];
}

#pragma mark - Page view

-(void)createPageViews{

    _pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageIntroController"];
    _pageViewController.dataSource = self;
    
    Intro *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    
    [_pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    _pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [_pageViewController didMoveToParentViewController:self];
}


-(Intro*)viewControllerAtIndex:(NSInteger)index{
    
    if (([maIntroTitles count] == 0) || (index >= [maIntroTitles count])) {
        
    }
    
    Intro *pageIntro = [self.storyboard instantiateViewControllerWithIdentifier:@"Intro"];
    pageIntro.lblIntro = maIntroTitles[index];
    pageIntro.imgIntro.image = [UIImage imageNamed:maIntroImgs[index]];
    pageIntro.pageIndex = index;
    
    return pageIntro;
}


-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    NSUInteger index = ((Intro*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound))
    {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
    
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    NSUInteger index = ((Intro*) viewController).pageIndex;
    if (index == NSNotFound)
    {
        return nil;
    }
    index++;
    if (index == [maIntroTitles count])
    {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [maIntroTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}




- (IBAction)btnIntroPressed:(id)sender {
}
@end
