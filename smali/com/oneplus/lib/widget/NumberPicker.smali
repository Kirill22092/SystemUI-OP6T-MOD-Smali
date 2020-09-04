.class public Lcom/oneplus/lib/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$CustomEditText;,
        Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;,
        Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;,
        Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;,
        Lcom/oneplus/lib/widget/NumberPicker$Formatter;,
        Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;,
        Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;,
        Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

.field private mPaintColor:I

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectMiddleCount:I

.field private mSelectedValueColor:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionDividerWidth:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_number_picker:I

    sput v0, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 196
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/NumberPicker;->sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    .line 2088
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 584
    sget v0, Lcom/oneplus/commonctrl/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v2, 0x12c

    .line 298
    iput-wide v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 303
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 308
    iput-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v2, -0x80000000

    .line 328
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    .line 437
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 488
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 499
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    .line 599
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 601
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalLayout:I

    sget v3, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 604
    sget v3, Lcom/oneplus/lib/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    if-eq p3, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 606
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_hideWheelUntilFocused:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 609
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_opsolidColor:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSolidColor:I

    .line 611
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 614
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 615
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 616
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 618
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 622
    :cond_2
    iput-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40000000    # 2.0f

    .line 626
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 624
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 627
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 630
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividerWidth:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    const/high16 v3, 0x42400000    # 48.0f

    .line 635
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 633
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 636
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 639
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMinHeight:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    .line 642
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    .line 644
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    if-eq v3, v2, :cond_4

    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    if-eq v4, v2, :cond_4

    if-gt v3, v4, :cond_3

    goto :goto_1

    .line 646
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 649
    :cond_4
    :goto_1
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    .line 652
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    .line 654
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    if-eq v3, v2, :cond_6

    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-eq v4, v2, :cond_6

    if-gt v3, v4, :cond_5

    goto :goto_2

    .line 656
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 659
    :cond_6
    :goto_2
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-ne v3, v2, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 661
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 663
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->NumberPicker_selectionOtherNumberColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 664
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    new-instance p2, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    .line 673
    iget-boolean p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 675
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 677
    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 679
    new-instance p2, Lcom/oneplus/lib/widget/NumberPicker$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/NumberPicker$1;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 691
    new-instance p3, Lcom/oneplus/lib/widget/NumberPicker$2;

    invoke-direct {p3, p0}, Lcom/oneplus/lib/widget/NumberPicker$2;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 705
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v5, 0x0

    if-nez v4, :cond_8

    .line 706
    sget v4, Lcom/oneplus/commonctrl/R$id;->increment:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 707
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 710
    :cond_8
    iput-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 714
    :goto_4
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_9

    .line 715
    sget v4, Lcom/oneplus/commonctrl/R$id;->decrement:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 716
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 719
    :cond_9
    iput-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 723
    :goto_5
    sget p2, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 724
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 725
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance p3, Lcom/oneplus/lib/widget/NumberPicker$3;

    invoke-direct {p3, p0}, Lcom/oneplus/lib/widget/NumberPicker$3;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 735
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array p3, v1, [Landroid/text/InputFilter;

    new-instance v4, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    aput-object v4, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 739
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 740
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 743
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 744
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    .line 745
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 746
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 748
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    .line 751
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectedValueColor:I

    .line 752
    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPaintColor:I

    .line 753
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 754
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 755
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 756
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 757
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 761
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v5, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 762
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 764
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 767
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 768
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1280(Lcom/oneplus/lib/widget/NumberPicker;I)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1480(Lcom/oneplus/lib/widget/NumberPicker;I)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/NumberPicker;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 99
    sget-object v0, Lcom/oneplus/lib/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1768
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1769
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1773
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1779
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1782
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1784
    :cond_3
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1888
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1889
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1891
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1892
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1893
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1895
    aput v0, p1, v1

    .line 1896
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1904
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1905
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1909
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 1914
    aget-object p0, v2, p0

    goto :goto_1

    .line 1916
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 1919
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2188
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2190
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2191
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 2194
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2195
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1844
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1847
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1849
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1852
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 1923
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 2834
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2045
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2047
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2052
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2054
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2055
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2056
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2065
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 2071
    :catch_0
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method public static final getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;
    .locals 1

    .line 202
    sget-object v0, Lcom/oneplus/lib/widget/NumberPicker;->sTwoDigitFormatter:Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 1859
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1860
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 1861
    :cond_0
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    .line 1862
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1292
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1293
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1296
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1297
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1872
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1873
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1875
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1876
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1877
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    .line 1879
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1880
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1807
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 1808
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1790
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1791
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1792
    array-length v1, v0

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1793
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1794
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1795
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1796
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTextSize:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1799
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1800
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1802
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1803
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1720
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1721
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1722
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1723
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1724
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1725
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1726
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1728
    :cond_0
    aput v3, v0, v2

    .line 1729
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1681
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1682
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1691
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1689
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1687
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 838
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 839
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 840
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 841
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 843
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 851
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1967
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    .line 1969
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1971
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1974
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_1

    .line 1975
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V

    :cond_1
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1831
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1834
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    .line 1835
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnScrollListener:Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1836
    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/oneplus/lib/widget/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1816
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1819
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1821
    :cond_1
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1822
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2008
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2009
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2011
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2013
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1985
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1986
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1988
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1990
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1991
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2

    .line 2079
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2080
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    .line 2082
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->post(II)V

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSetSelectionCommand:Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2033
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2035
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2036
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2038
    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2021
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1998
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1708
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1709
    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1740
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1744
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1745
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1747
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1748
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1750
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1751
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1752
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1754
    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->notifyChange(II)V

    .line 1756
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1757
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1278
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 1280
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1284
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1306
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    .line 1313
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1319
    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1322
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    .line 1326
    :cond_4
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1328
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1334
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1335
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1336
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1337
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1339
    :cond_7
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    .line 1341
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1952
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1953
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1954
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1955
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1387
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1388
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1927
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1928
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 1933
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 1934
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1097
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1098
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1100
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1104
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1105
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1106
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1107
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1109
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 1110
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1111
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1112
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1114
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 1174
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 1164
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1169
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1047
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1048
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1050
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_6

    .line 1051
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1054
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 1056
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 1061
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1063
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 1086
    :cond_3
    invoke-virtual {v1, v0, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1088
    iput v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1066
    :cond_4
    invoke-virtual {v1, v0, v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1068
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1069
    invoke-virtual {v1, v0, v6, v5}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1073
    :cond_5
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    .line 1075
    invoke-virtual {v1, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1078
    invoke-virtual {v1, v0, v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1080
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1081
    invoke-virtual {v1, v0, v6, v5}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 998
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1006
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 1009
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 1023
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    .line 1024
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1011
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-ne v0, v2, :cond_5

    .line 1012
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    .line 1030
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1013
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1014
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1015
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1016
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    if-ne v0, v2, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1017
    :goto_2
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 993
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 1042
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1556
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1558
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1559
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1560
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1561
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1661
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1662
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1665
    new-instance v0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/oneplus/lib/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1667
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1457
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1420
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method public getSolidColor()I
    .locals 0

    .line 1179
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSolidColor:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1411
    iget p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1353
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 1568
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1570
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 1571
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1550
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1551
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1578
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1579
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1582
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1583
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1584
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1587
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez v6, :cond_3

    .line 1589
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v6, :cond_2

    .line 1590
    sget-object v6, Landroid/widget/LinearLayout;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1591
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1592
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1594
    :cond_2
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v5, :cond_3

    .line 1595
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/LinearLayout;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1596
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    .line 1597
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v8

    .line 1596
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1598
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1603
    :cond_3
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    move v6, v3

    move v3, v4

    .line 1604
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_8

    .line 1605
    aget v7, v5, v3

    .line 1606
    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1612
    iget v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v3, v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v3, v8, :cond_7

    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1613
    invoke-virtual {v8}, Landroid/widget/EditText;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1614
    :cond_5
    iget v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    if-ne v3, v8, :cond_6

    .line 1615
    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectedValueColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1616
    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 1618
    :cond_6
    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPaintColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1619
    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1621
    :goto_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1623
    :cond_7
    iget v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_b

    .line 1627
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1629
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1630
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1631
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v5, v1, v3

    add-int/2addr v1, v3

    .line 1637
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v3, v0

    if-nez v2, :cond_9

    .line 1639
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    invoke-virtual {v2, v4, v0, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 1641
    :cond_9
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1644
    :goto_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1647
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1648
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v2, v0, v2

    .line 1649
    iget v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerWidth:I

    if-nez v3, :cond_a

    .line 1650
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1652
    :cond_a
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1654
    :goto_4
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 859
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 866
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventTime:J

    .line 869
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 870
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 872
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 873
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 874
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 877
    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 878
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 879
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 884
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 885
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 886
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 887
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 888
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 889
    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 890
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 891
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 892
    :cond_5
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 893
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    .line 895
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 894
    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 896
    :cond_6
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 897
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->hideSoftInput()V

    .line 899
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 898
    invoke-direct {p0, v2, v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 901
    :cond_7
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 902
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 784
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 785
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 788
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 789
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 792
    iget-object p4, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 793
    iget-object p5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 794
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 795
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 798
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheel()V

    .line 803
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeFadingEdges()V

    .line 804
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 806
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 813
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 814
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 818
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 819
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 820
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 822
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 824
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/oneplus/lib/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 826
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 912
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 916
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 922
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 925
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 926
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 927
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 928
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 929
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeAllCallbacks()V

    .line 930
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 933
    :cond_4
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 934
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->scrollBy(II)V

    .line 935
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 937
    :cond_5
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 941
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 942
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 943
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 944
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 945
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 946
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 947
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 948
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->fling(I)V

    .line 949
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 951
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 952
    iget v5, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 954
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 955
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 956
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 957
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->performClick()Z

    goto :goto_1

    .line 959
    :cond_8
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 962
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 963
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 966
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->changeValueByOne(Z)V

    .line 967
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mPressedStateHelper:Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 972
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 974
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->onScrollStateChange(I)V

    .line 976
    :goto_2
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 977
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1255
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0

    .line 1256
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->showSoftInput()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1264
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1265
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result p0

    return p0

    .line 1266
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1267
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->showSoftInput()V

    .line 1268
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIgnoreMoveEvents:Z

    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1132
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorIndices:[I

    .line 1133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v0, p1, v0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-gt v0, v1, :cond_0

    .line 1135
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1138
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget v0, p1, v0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v1, :cond_1

    .line 1140
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1143
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1144
    :cond_2
    :goto_0
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_3

    .line 1145
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1146
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1147
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1148
    iget-boolean p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1149
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1152
    :cond_3
    :goto_1
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 1153
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1154
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1155
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1156
    iget-boolean p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1157
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1510
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1511
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1513
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1516
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1518
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1519
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1520
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1121
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1127
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1215
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mFormatter:Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    .line 1216
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1217
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1471
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1477
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    .line 1478
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1479
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1481
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1482
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1483
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1484
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1485
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1475
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1434
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1440
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    .line 1441
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1442
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mValue:I

    .line 1444
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1445
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1446
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateInputTextView()Z

    .line 1447
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1448
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1438
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1402
    iput-wide p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mOnValueChangeListener:Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setSelectNumberCount(I)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1249
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1374
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1375
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
