//
//  MakeItRainViewController.h
//  storm
//
//  Created by Zack Pajka on 6/16/15.
//  Copyright (c) 2015 Swerve. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeItRainViewController : UIViewController

@property(nonatomic, retain) IBOutlet UIImageView *m_currentCoinImageView;
@property (nonatomic, retain) IBOutlet UIImageView *m_nextCoinImageView;
@property (weak, nonatomic) IBOutlet UIView *walletView;
@property (weak, nonatomic) IBOutlet UIImageView *m_walletFrontImageView;
@property (weak, nonatomic) IBOutlet UIImageView *m_walletBackImageView;

@end
