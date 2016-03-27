//
//  MyCell.m
//  collectViewTest
//
//  Created by Wangguibin on 16/3/27.
//  Copyright © 2016年 DDYS. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell


- (void)awakeFromNib {
        self.myLabel.layer.cornerRadius = 4.f;
        self.myLabel.layer.masksToBounds = YES;
        self.myLabel.layer.borderColor = [UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1.0f].CGColor;
        self.myLabel.layer.borderWidth = 1.0f;
        // Initialization code
    }




@end
