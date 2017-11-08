//
//  DetailedViewController.m
//  Weather
//
//  Created by Javier Xing on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"

@interface DetailedViewController ()
@property (nonatomic,strong)UILabel *weatherState;
@property (nonatomic,strong)UILabel *temperature;
@property (nonatomic,strong)UILabel *chanceForPercipitation;
@property (nonatomic,strong)UILabel *currentTime;
@property (nonatomic,strong)City *city;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.weatherState = [[UILabel alloc]initWithFrame:CGRectMake(170, 150, 100, 100)];
    self.weatherState.text = self.city.weatherState;
//    self.weatherState.textColor = [UIColor whiteColor];
    [self.view addSubview:self.weatherState];
    
    self.temperature = [[UILabel alloc]initWithFrame:CGRectMake(170, 200, 100, 100)];
    self.temperature.text = self.city.currentTemperature;
    [self.view addSubview:self.temperature];
    
    self.chanceForPercipitation = [[UILabel alloc]initWithFrame:CGRectMake(170, 250, 100, 100)];
    self.chanceForPercipitation.text = self.city.chanceOfPercipitation;
    [self.view addSubview:self.chanceForPercipitation];
    
    self.currentTime = [[UILabel alloc]initWithFrame:CGRectMake(170, 300, 100, 100)];
    self.currentTime.text = self.city.currentTime;
    [self.view addSubview:self.currentTime];
}

- (instancetype)initWithCity:(City*)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
