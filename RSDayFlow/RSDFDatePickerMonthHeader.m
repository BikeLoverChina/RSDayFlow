#import "RSDFDatePickerMonthHeader.h"

@implementation RSDFDatePickerMonthHeader

@synthesize dateLabel = _dateLabel;

- (UILabel *)dateLabel
{
	if (!_dateLabel) {
		_dateLabel = [[UILabel alloc] initWithFrame:self.bounds];
		_dateLabel.textAlignment = NSTextAlignmentLeft;
		_dateLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:16.0f];
		_dateLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        _dateLabel.frame = CGRectMake(10, _dateLabel.frame.origin.y, _dateLabel.frame.size.width - 10, _dateLabel.frame.size.height);
        
		[self addSubview:_dateLabel];

    
    
    _weekView = [[UIView alloc] initWithFrame: CGRectMake (0, 35, 320, 20)];
    _weekView.backgroundColor = [UIColor clearColor];
    [self addSubview:_weekView];
    
    
    // Layout day names e.g Mon, Tues, Wed.
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSArray *shortWeekdaySymbols = [dateFormatter shortStandaloneWeekdaySymbols];
    
    NSMutableArray *dayHeaderLabels = [@[] mutableCopy];
    
    for (int i = 0; i < shortWeekdaySymbols.count; i++) {
        
        UILabel *label = [UILabel new];
        
        label.frame = CGRectMake(i * 46, 0, 40, 40);
        
        label.text = [shortWeekdaySymbols[i] uppercaseString];
        label.textAlignment = NSTextAlignmentCenter;
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.textColor = [UIColor colorWithRed:0.474 green:0.47 blue:0.474 alpha:1];
        label.opaque = NO;
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:10.0f];
        
        [self.weekView addSubview:label];
        [dayHeaderLabels addObject:label];
        
        
        
        CALayer *bottomBorder = [CALayer layer];
        
        bottomBorder.frame = CGRectMake(0.0f, 29.0f, self.weekView.frame.size.width, 0.4f);
        
        bottomBorder.backgroundColor = [UIColor colorWithWhite:0.9f
                                                         alpha:1.0f].CGColor;
        
        [self.weekView.layer addSublayer:bottomBorder];
    
    
    
    }
    
    
    
    }
    
    return _dateLabel;

}

- (void)setDate:(RSDFDatePickerDate)date
{
    _date = date;
}

- (void)setCurrentMonth:(BOOL)currentMonth
{
    _currentMonth = currentMonth;
//    if (_currentMonth) {
//        self.dateLabel.textColor = [UIColor colorWithRed:32/255.0f green:135/255.0f blue:252/255.0f alpha:1.0f];
//    } else {
//        self.dateLabel.textColor = [UIColor darkGrayColor];
//    }
    
    self.dateLabel.textColor = [UIColor colorWithRed:0.474 green:0.47 blue:0.474 alpha:1];

}

@end
