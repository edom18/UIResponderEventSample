
#ifndef UIResponderTest_Macro_h
#define UIResponderTest_Macro_h

#define PassResponderChain(sel, sender, proto) \
id next = self;\
do {\
    next = [((UIResponder*)next).nextResponder targetForAction:@selector(sel)\
                                                    withSender:sender];\
    if (next) {\
        if ([next conformsToProtocol:@protocol(proto)]) {\
            [next sel sender];\
            break;\
        }\
    }\
} while (next)

#endif
