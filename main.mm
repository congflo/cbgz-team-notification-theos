
#import <UIKit/UIKit.h>

#define UIColorFromHEX(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]



#import "main.h"

#import "SCLAlertView/SCLAlertView.h"

SCLAlertView *alert;


@implementation NguyenNamFramework




static NguyenNamFramework *active;

//-----------------//

+ (void)load
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

alert = [[SCLAlertView alloc] initWithNewWindow];  

        active =  [NguyenNamFramework new];
        [active start];

    });
}


-(void)start{

alert.shouldDismissOnTapOutside = YES;//Replace with NO if you want the user to force a button in the alert

alert.customViewColor = UIColorFromHEX(0x474747);
  

alert.showAnimationType = SCLAlertViewShowAnimationSlideInToCenter;   

alert.backgroundType = SCLAlertViewBackgroundBlur;

alert.cornerRadius = 20.0f;

alert.backgroundViewColor = UIColorFromHEX(0x0B2C5C);



//Button

//Demo Button
/*
[alert addButton:@"Name Button" actionBlock:^(void) {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"URL YOU WANT TO OPEN WHEN CLICK"] options:@{} completionHandler:nil];
}];
*/


//Example button
[alert addButton:@"discord CyberGangz" actionBlock:^(void) {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://discord.gg/X7pKkZE9kf"] options:@{} completionHandler:nil];
}];

[alert addButton:@"discord CongChu's Community" actionBlock:^(void) {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://discord.gg/nUpEeqRBqR"] options:@{} completionHandler:nil];
}];

//End example button




//You can replace any logo link with a direct image link
NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://img.upanh.tv/2025/03/14/F290681E-4097-4AF6-BAD6-BF88A0CE2360.jpg"]];

UIImage* customAlertImage = [UIImage imageWithData:data];  
 
[alert showCustom:alert image:customAlertImage color:[UIColor clearColor] title:@"CyberGangzTeam🪐" subTitle:@"Cảm ơn bạn đã sử dụng iPA file của CyberGangzTeam🪐.\nVui lòng không reup iPA file của chúng tôi nếu bạn không muốn gặp rắc rối về dữ liệu của bạn!\nThanks for using CyberGangzTeam's iPA files.\nPlease do not reup our iPA file if you do not want to get into trouble with your data!" closeButtonTitle:nil duration:9999999999.0f];



}



@end
