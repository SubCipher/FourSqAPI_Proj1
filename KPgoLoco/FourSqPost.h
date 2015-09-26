//
//  FourSqPost.h
//  KPgoLoco
//
//  Created by MacMan on 9/25/15.
//  Copyright © 2015 MacManApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FourSqPost : NSObject



@property (nonatomic) NSArray *tags;
@property (nonatomic) NSInteger commentCount;
@property (nonatomic) NSInteger likeCount;
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *fullName;
@property (nonatomic) NSDictionary *caption;

- (instancetype)initWithJSON:(NSDictionary *)json;


@end
