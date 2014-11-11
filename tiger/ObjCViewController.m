//
//  ObjCViewController.m
//  tiger
//
//  Created by Parimala Gollapudi on 11/11/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

#import "ObjCViewController.h"
#import "tigerClass.h"


@interface ObjCViewController ()

@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    tigerClass *tiger1 = [[tigerClass alloc] init];
    tigerClass *tiger2 = [[tigerClass alloc] init];
    tigerClass *tiger3 = [[tigerClass alloc] init];
   
    
    tiger1.age = 2;
    tiger2.age = 3;
    tiger3.age = 4 ;
    
    tiger1.myTigerName = @"IamTiger1";
    tiger2.myTigerName  = @"IamTiger2";
    tiger3.myTigerName  = @"IamTiger3";
    
    
    tiger1.myTigerImage = [UIImage imageNamed:@"unknown.jpg" ];
    tiger2.myTigerImage = [UIImage imageNamed:@"unknown-2.jpg" ];
    tiger3.myTigerImage = [UIImage imageNamed:@"unknown-3.jpg" ];
    
    self.myTigerList = [[NSMutableArray alloc] init];
    
    [self.myTigerList addObject:tiger1];
   
    [self.myTigerList addObject:tiger2];
    [self.myTigerList addObject:tiger3];
    
    
    tigerClass *currentTiger = [self.myTigerList objectAtIndex:0];
    self.currentIndex = 0;
    
    
 
    self.tigerAgeLabel.text = [NSString stringWithFormat:@"%i", [currentTiger trueAge:currentTiger.age ]];
     self.tigerNameLabel.Text = currentTiger.myTigerName;
    self.tigerImageView.image = currentTiger.myTigerImage;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)randomButtonClick:(UIButton *)sender {
    
    
    int randomNum = arc4random() % [self.myTigerList count];
    
    self.currentIndex = randomNum;
    
    tigerClass *randomTiger = [self.myTigerList objectAtIndex:randomNum];
    
    [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.tigerAgeLabel.text = [NSString stringWithFormat:@"%i", [randomTiger trueAge:randomTiger.age ]];
        self.tigerNameLabel.Text = randomTiger.myTigerName;
        self.tigerImageView.image = randomTiger.myTigerImage;
    } completion:^(BOOL finished) {
    
    }];
    
    
    
    randomTiger = nil;
    
}

- (IBAction)nextButtonClick:(UIBarButtonItem *)sender {

    
    
    int nextNum = self.currentIndex +1;
    if (nextNum > [self.myTigerList count]- 1){
        self.currentIndex = 0 ;
        nextNum = 0;
    }
    else {
        self.currentIndex += 1;
    }
    
    tigerClass *nextTiger = [self.myTigerList objectAtIndex:nextNum];
    
    
    
    self.tigerAgeLabel.text = [NSString stringWithFormat:@"%i", [nextTiger trueAge:nextTiger.age ]];
    self.tigerNameLabel.Text = nextTiger.myTigerName;
    self.tigerImageView.image = nextTiger.myTigerImage;
    
    nextTiger = nil;

}
@end
