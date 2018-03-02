//
//  SystemInformation.m
//  base


#import "SystemInformation.h"
#import "VVDeviceUniqueId.h"
#import <GBDeviceInfo.h>
#import <UIKit/UIKit.h>


@implementation SystemInformation


+(NSString*)getOSVersion{
    static NSString *version = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSUInteger major = [GBDeviceInfo deviceInfo].osVersion.major;
        NSUInteger minor = [GBDeviceInfo deviceInfo].osVersion.minor;
        NSUInteger patch = [GBDeviceInfo deviceInfo].osVersion.patch;
        
        version = [NSString stringWithFormat:@"%lu.%lu.%lu", (unsigned long)major, (unsigned long)minor, (unsigned long)patch];
    });
    return version;
}

+(float)systemVersion{
    static float version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        version = [UIDevice currentDevice].systemVersion.floatValue;
    });
    return version;
}

@end
