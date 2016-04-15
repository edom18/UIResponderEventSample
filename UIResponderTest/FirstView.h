
@import UIKit;

@protocol AnyEvent <NSObject>
@optional
- (void)tappedButton1:(id)responder;
- (void)tappedButton2:(id)responder;
@end


@interface FirstView : UIView <AnyEvent>

@property (nonatomic, strong) NSString *uid;

@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UIButton *button2;

@end
