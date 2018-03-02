//
//  SystemInformation.m
//  base


#import "SystemInformation.h"
#import <UIKit/UIKit.h>


@implementation SystemInformation


+(float)systemVersion{
    static float version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        version = [UIDevice currentDevice].systemVersion.floatValue;
    });
    return version;
}

@end
