//
//  City.h
//  Weather
//
//  Created by Javier Xing on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString* weatherState;
@property (nonatomic, strong) NSString* currentTemperature;
@property (nonatomic, strong) NSString* currentTime;
@property (nonatomic, strong) NSString* chanceOfPercipitation;
@property (nonatomic, strong) NSString * weatherStateSymbol;


- (instancetype)initWithWeather:(NSString*)state temperature: (NSString*)temperature time:(NSString*)time chanceOfPercipitation:(NSString*)chance weatherSymbol: (NSString*)symbol;

@end
