
#import "SecondView.h"

#import "FirstView.h"
#import "Macro.h"


@implementation SecondView

- (void)tappedButton1:(id)responder
{
    // Never call this method, so this class do not implement the protocol <AnyEvent>.
    NSLog(@"============== Tapped button1 on SecondView from %@", responder);
    
    PassResponderChain(tappedButton1:, responder, AnyEvent);
}

- (void)tappedButton2:(id)responder
{
    // Never call this method, so this class do not implement the protocol <AnyEvent>.
    NSLog(@"============== Tapped button2 on SecondView from %@", responder);
    
    PassResponderChain(tappedButton2:, responder, AnyEvent);
}


@end
