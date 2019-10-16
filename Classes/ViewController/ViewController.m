//
//  ViewController.m
//  ModuleAProject
//
//  Created by little🐟 on 2019/10/15.
//  Copyright © 2019 little🐟. All rights reserved.
//

#import "ViewController.h"
#import "CustomModuleAView.h"

@interface ViewController ()

@property (nonatomic, strong) CustomModuleAView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}



- (void)setupUI{
    _customView = [[CustomModuleAView alloc] initWithFrame:CGRectMake(50, 100, 140, 44)];
    _customView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_customView];
}


@end
