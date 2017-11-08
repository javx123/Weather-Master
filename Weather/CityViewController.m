//
//  CityViewController.m
//  Weather
//
//  Created by Javier Xing on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"
#import "City.h"

@interface CityViewController ()
@property (nonatomic, strong)City * city;
@property (nonatomic, strong) UILabel * weatherState;
@property (nonatomic, strong)UIImageView *weatherImage;
@property (nonatomic, strong)UIButton * detailButton;

@end

@implementation CityViewController

- (instancetype)initWithCity:(City*)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor whiteColor];
    self.weatherState = [[UILabel alloc]initWithFrame:CGRectMake(170, 130, 100, 100)];
    self.weatherState.text = self.city.weatherState;
    self.weatherState.textColor = [UIColor whiteColor];
    [self.view addSubview:self.weatherState];
    
    self.weatherImage = [[UIImageView alloc]initWithFrame:CGRectMake(120, 250, 150, 150)];
    self.weatherImage.image = [UIImage imageNamed:self.city.weatherStateSymbol];
    [self.view addSubview:self.weatherImage];

    self.detailButton = [[UIButton alloc]initWithFrame:CGRectMake(145, 450, 100, 100)];

    [self.detailButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.detailButton setTitle:@"Details" forState:UIControlStateNormal];
    
    [self.detailButton addTarget:self action:@selector(tapButton) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:self.detailButton];
    
}

-(void)tapButton{
    [self showWeatherDetails];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showWeatherDetails {
    DetailedViewController *cityDetails = [[DetailedViewController alloc]initWithCity:self.city];
    [self.navigationController pushViewController:cityDetails animated:YES];
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
