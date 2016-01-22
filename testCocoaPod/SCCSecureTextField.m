
#import <UIKit/UIKit.h>

#import "SCCSecureTextField.h"
#import "TDBadgedCell.h"


@implementation SCCSecureTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self commonInit];
        
        
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        [self commonInit];
    }
    
    return self;
}

//Darren - Disables the Menu when selecting text
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return NO;
}

#pragma mark - Private

- (void)commonInit
{
    self.autocorrectionType = UITextAutocorrectionTypeNo;
    
    [self removeCopyPasteFromKeyboardOptionsIfNeeded];
    
    TDBadgedCell *cell = [[TDBadgedCell alloc] init];
    
    //Change
}

- (void)removeCopyPasteFromKeyboardOptionsIfNeeded
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        if ([self respondsToSelector:@selector(inputAssistantItem)])
        {
            UITextInputAssistantItem* item = [self inputAssistantItem];
            item.leadingBarButtonGroups = @[];
            item.trailingBarButtonGroups = @[];
        }
    }
}

@end
