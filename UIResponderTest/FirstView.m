
#import "FirstView.h"

#import "Macro.h"

@implementation FirstView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupButtons];
    }
    return self;
}

- (void)setupButtons
{
    const NSInteger buttonWidth  = 150;
    const NSInteger buttonHeight = 44;
    const NSInteger x = (self.bounds.size.width / 2) - (buttonWidth / 2);
    
    
    // Button1
    self.button1 = [[UIButton alloc] initWithFrame:CGRectMake(x, 100, buttonWidth, buttonHeight)];
    self.button1.backgroundColor = UIColor.redColor;
    [self.button1 setTitle:@"Button1"
                  forState:UIControlStateNormal];
    [self.button1 addTarget:nil
                     action:@selector(tappedButton1:)
           forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.button1];
    
    
    // Button2
    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(x, 200, buttonWidth, buttonHeight)];
    self.button2.backgroundColor = UIColor.blueColor;
    [self.button2 setTitle:@"Button2"
                  forState:UIControlStateNormal];
    [self.button2 addTarget:nil
                     action:@selector(tappedButton2:)
           forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.button2];
}

- (void)tappedButton1:(UIResponder *)responder
{
    NSLog(@"============== Tapped button1 on FirstView from %@", responder);
    
    PassResponderChain(tappedButton1:, self, AnyEvent);
}

- (void)tappedButton2:(UIResponder *)responder
{
    NSLog(@"============== Tapped button2 on FirstView from %@", responder);
    
    PassResponderChain(tappedButton2:, self, AnyEvent);
}

@end
