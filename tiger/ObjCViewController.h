//
//  ObjCViewController.h
//  tiger
//
//  Created by Parimala Gollapudi on 11/11/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjCViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *tigerNameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *tigerImageView;

@property (weak, nonatomic) IBOutlet UILabel *tigerAgeLabel;
@property (nonatomic,strong) NSMutableArray *myTigerList;

@property(nonatomic) int currentIndex;


- (IBAction)randomButtonClick:(UIButton *)sender;

- (IBAction)nextButtonClick:(UIBarButtonItem *)sender;



@end
