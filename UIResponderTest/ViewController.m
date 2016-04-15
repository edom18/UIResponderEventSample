
#import "ViewController.h"

#import "FirstView.h"
#import "SecondView.h"
#import "Macro.h"


@interface ViewController () <AnyEvent>

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** -------------------------------------------
     *   Make a hierarchy like below.
     *   Start actions from first view to VC view.
     *
     *   [ViewController view]
     *     ^
     *   [SecondView]
     *     ^
     *   [FirstView]
     * ------------------------------------------- */
    
    FirstView *first = [[FirstView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 300)];
    first.uid = @"hoge";
    
    SecondView *second = [[SecondView alloc] initWithFrame:first.bounds];
    [second addSubview:first];
    
    [self.view addSubview:second];
}

- (void)tappedButton1:(id)sender
{
    NSLog(@"============== Tapped button1 on ViewController from %@", sender);
    
    if ([sender respondsToSelector:@selector(uid)]) {
        NSString *uid = [sender uid];
        NSLog(@"UID: %@", uid);
    }
    
    PassResponderChain(tappedButton1:, sender, AnyEvent);
}

- (void)tappedButton2:(id)sender
{
    NSLog(@"============== Tapped button2 on ViewController from %@", sender);
    
    if ([sender respondsToSelector:@selector(uid)]) {
        NSString *uid = [sender uid];
        NSLog(@"UID: %@", uid);
    }
    
    PassResponderChain(tappedButton2:, sender, AnyEvent);
}

@end
