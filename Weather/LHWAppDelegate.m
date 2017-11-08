//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController * tabBarController = [[UITabBarController alloc]init];
    
    self.window.rootViewController = tabBarController;
    
    // Don't forget to assign the window a rootViewController
    City* vancouver = [[City alloc]initWithWeather:@"Sunny" temperature:@"30 degrees" time:@"12:00" chanceOfPercipitation:@"25%" weatherSymbol:@"Sunny"];
    
    City* toronto = [[City alloc]initWithWeather:@"Rainy" temperature:@"15 degrees" time:@"4:45" chanceOfPercipitation:@"100%" weatherSymbol:@"rain"];
    
    City* newYork = [[City alloc]initWithWeather:@"Foggy" temperature:@"18 degrees" time:@"5:56" chanceOfPercipitation:@"50%" weatherSymbol:@"fog"];
    
    City* beijing = [[City alloc]initWithWeather:@"Windy" temperature:@"-15 degrees" time:@"9:30" chanceOfPercipitation:@"0%" weatherSymbol:@"wind"];
    
    City* paris = [[City alloc]initWithWeather:@"Cloudy" temperature:@"24 degrees" time:@"3:24" chanceOfPercipitation:@"20%" weatherSymbol:@"cloudy"];
    
    CityViewController *vancouverViewController = [[CityViewController alloc]initWithCity:vancouver];
    vancouverViewController.title = @"Vancouver";

    CityViewController *torontoViewController = [[CityViewController alloc]initWithCity:toronto];
    torontoViewController.title = @"Toronto";
    CityViewController *newYorkViewController = [[CityViewController alloc]initWithCity:newYork];
    newYorkViewController.title = @"New York";
    CityViewController *bejjingViewController = [[CityViewController alloc]initWithCity:beijing];
    bejjingViewController.title = @"Beijing";
    CityViewController *parisViewController = [[CityViewController alloc]initWithCity:paris];
    parisViewController.title = @"Paris";
    
    UINavigationController *vancouverNavController = [[UINavigationController alloc]initWithRootViewController:vancouverViewController];
//        UITabBarItem *vancouverTab = [UITabBarItem ] vancouverNavController;
    
    UINavigationController *torontoNavController = [[UINavigationController alloc]initWithRootViewController:torontoViewController];
    UINavigationController *newYorkNavController = [[UINavigationController alloc]initWithRootViewController:newYorkViewController];
    UINavigationController *beijingNavController = [[UINavigationController alloc]initWithRootViewController:bejjingViewController];
    UINavigationController *parisNavController = [[UINavigationController alloc]initWithRootViewController:parisViewController];
    
    NSArray *navControllers = @[torontoNavController, newYorkNavController, beijingNavController, parisNavController, vancouverNavController];
 
    tabBarController.viewControllers = navControllers;


//    [tabBarController setTabBarItem: ]
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
