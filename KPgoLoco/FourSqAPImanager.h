//
//  FourSqAPImanager.h
//  KPgoLoco
//
//  Created by MacMan on 9/25/15.
//  Copyright © 2015 MacManApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FourSqAPImanager : NSObject

+ (void)GETRequestWithURL:(NSURL *)URL
        completionHandler:(void(^)(NSData *data, NSURLResponse *response, NSError *error))completionBlock;

@end
