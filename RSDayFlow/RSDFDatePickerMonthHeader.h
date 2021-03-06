#import <UIKit/UIKit.h>
#import "RSDayFlow.h"

@interface RSDFDatePickerMonthHeader : UICollectionReusableView

@property (nonatomic, readwrite, assign)    RSDFDatePickerDate date;
@property (nonatomic, readonly, strong)     UILabel *dateLabel;
@property (nonatomic, readonly, strong)     UIView *weekView;
@property (nonatomic, getter = isCurrentMonth) BOOL currentMonth;

@end
