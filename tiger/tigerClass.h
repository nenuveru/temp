//
//  tigerClass.h
//  tiger
//
//  Created by Parimala Gollapudi on 11/11/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface tigerClass : NSObject

@property (nonatomic) int age;
@property (nonatomic,weak) NSString *myTigerName;
@property (nonatomic,strong) UIImage *myTigerImage;

- (int)trueAge:(int)age ;


@end
