//
//  ViewController.h
//  GetGif
//
//  Created by Christopher Stark on 12/20/19.
//  Copyright © 2019 Christopher Stark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GiphyUISDK/GiphyUISDK.h>
#import <GiphyCoreSDK/GiphyCoreSDK.h>

@interface ViewController : UIViewController{
    
    __weak IBOutlet UITextField *txtGifName;
    __weak IBOutlet UIImageView *imgGif;
    
    
    
}

- (IBAction)cmdGifText:(id)sender;
- (IBAction)cmdGo:(id)sender;




@end

