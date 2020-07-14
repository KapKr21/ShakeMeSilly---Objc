//
//  ViewController.h
//  ShakeMeSilly
//
//  Created by Kapil Khatri on 15/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    NSTimer *timer;
    
    int timeInt;
    int scoreInt;
    int modeInt;
    int imageInt;
    
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *startGameOutlet;

- (IBAction)startButton:(id)sender;

@end

