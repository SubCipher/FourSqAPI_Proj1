//
//  FourSqPost.m
//  KPgoLoco
//
//  Created by MacMan on 9/25/15.
//  Copyright © 2015 MacManApp. All rights reserved.
//

#import "FourSqPost.h"

@implementation FourSqPost

- (instancetype)initWithJSON:(NSDictionary *)json {
    
    if (self = [super init]) {
        
        self.tags = json[@"tags"];
        self.commentCount = [json[@"comments"][@"count"] integerValue];
        //        self.commentCount = [[[json objectForKey:@"comments"] objectForKey:@"count"] integerValue];
        self.likeCount = [json[@"likes"][@"count"] integerValue];
        self.caption = json[@"caption"];
        self.username = json[@"user"][@"username"];
        self.fullName = json[@"user"][@"full_name"];
        
        return self;
    }
    return nil;
}


@end
