//
//  City.m
//  Weather
//
//  Created by Javier Xing on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithWeather:(NSString*)state temperature: (NSString*)temperature time:(NSString*)time chanceOfPercipitation:(NSString*)chance  weatherSymbol: (NSString*)symbol
{
    self = [super init];
    if (self) {
        _weatherState = state;
        _currentTemperature = temperature;
        _currentTime = time;
        _chanceOfPercipitation = chance;
        _weatherStateSymbol = symbol;
    }
    return self;
}

@end
