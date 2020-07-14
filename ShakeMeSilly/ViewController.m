//
//  ViewController.m
//  ShakeMeSilly
//
//  Created by Kapil Khatri on 15/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeInt = 10;
    scoreInt = 0;
    
    modeInt = 0;
    
    imageInt = 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
     self.scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
    
    
}


- (IBAction)startButton:(id)sender {
    
    if(timeInt == 10)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
        
        modeInt = 1;
        
        self.startGameOutlet.enabled = NO;
        self.startGameOutlet.alpha = 0.5;
        
    }
    
    if(timeInt == 0)
    {
        timeInt = 10;
        scoreInt = 0;
        imageInt = 1;
        
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
        
        self.imageView.image = [UIImage imageNamed:@"Maracas.png"];
        [self.startGameOutlet setTitle:@"Start Game" forState:UIControlStateNormal];
        
    }
    
    
}

-(void)updateCounter
{
    timeInt -= 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
    
    if(timeInt == 0)
    {
        [timer invalidate];
        
        modeInt = 0;
        
        self.startGameOutlet.enabled = YES;
        self.startGameOutlet.alpha = 1;
        [self.startGameOutlet setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(event.subtype == UIEventSubtypeMotionShake)
    {
        if(modeInt ==1)
        {
            scoreInt += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i",scoreInt];
            
            imageInt += 1;
            if(imageInt == 5)
            {
                imageInt=1;
            }
            
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Maracas%i.png",imageInt]];
        }
    }
}




@end
