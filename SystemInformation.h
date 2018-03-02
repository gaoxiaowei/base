//
//  SystemInformation.h
//

#import <Foundation/Foundation.h>

@interface SystemInformation : NSObject
+(NSString*)getOSVersion;

+(float)systemVersion; // e.g. 8.100000

@end
