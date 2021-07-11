.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final DEBUG_OVERFLOW:Z

.field private static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private mBatteryChange:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryPercentShow:Z

.field private mClockWidth:I

.field private mClockWidthChanged:Z

.field private mDotPadding:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconDotFrameWidth:I

.field private mIconSpacing:I

.field private mIgnoredSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsUnderflow:Z

.field private mOpTag:Ljava/lang/String;

.field private mReRequestLayout:Ljava/lang/Runnable;

.field private mReRequestLayoutTimes:I

.field private mShouldRestrictIcons:Z

.field private mStaticDotDiameter:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUnderflowStart:I

.field private mUnderflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "debug.status_icon_outline"

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DEBUG_OVERFLOW:Z

    .line 626
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    const-wide/16 v1, 0xc8

    .line 633
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 635
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;-><init>()V

    .line 642
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 644
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$4;-><init>()V

    .line 652
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 p2, 0x1

    .line 101
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    .line 115
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidth:I

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidthChanged:Z

    .line 232
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayout:Ljava/lang/Runnable;

    .line 256
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryPercentShow:Z

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mHandler:Landroid/os/Handler;

    .line 130
    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->initDimens()V

    .line 134
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DEBUG_OVERFLOW:Z

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Ljava/lang/Runnable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/StatusIconContainer;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method private addIgnoredSlotInternal(Ljava/lang/String;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private applyIconStates()V
    .locals 3

    const/4 v0, 0x0

    .line 524
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 525
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 526
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateIconTranslations()V
    .locals 13

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpWidth()I

    move-result v0

    int-to-float v0, v0

    .line 445
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 446
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    .line 447
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    .line 454
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 455
    move-object v8, v7

    check-cast v8, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 456
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v9

    .line 458
    invoke-interface {v8}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 459
    invoke-interface {v8}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 467
    :cond_0
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 468
    iput v6, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 469
    iput v1, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 470
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 473
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    goto :goto_2

    .line 460
    :cond_1
    :goto_1
    iput v5, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x46

    if-gt v1, v4, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x45

    .line 480
    :goto_3
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v8, v6

    :goto_4
    const/4 v9, -0x1

    if-ltz v1, :cond_6

    .line 484
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 486
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-eqz v11, :cond_4

    iget v11, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_7

    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v11, :cond_5

    if-lt v8, v4, :cond_5

    goto :goto_5

    .line 491
    :cond_5
    iget v9, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    move v1, v9

    :cond_7
    :goto_5
    if-eq v1, v9, :cond_9

    .line 498
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v2, v4

    .line 499
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v4, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    sub-int/2addr v4, v8

    move v8, v6

    :goto_6
    if-ltz v1, :cond_9

    .line 501
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 502
    sget v10, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->MAX_DOTS:I

    if-ge v8, v10, :cond_8

    int-to-float v10, v4

    .line 503
    iput v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 504
    iput v7, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    sub-int/2addr v4, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 508
    :cond_8
    iput v5, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 514
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_8
    if-ge v6, v3, :cond_a

    .line 516
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 517
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    .line 518
    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float v4, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method private getOpMaxWidth(I)I
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    const-string/jumbo v1, "status_icon_container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    const-string v1, "demo_status_icon_container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_1

    .line 179
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getSystemIconAreaMaxWidth(I)I

    move-result p0

    if-lez p0, :cond_2

    if-le p1, p0, :cond_2

    move p1, p0

    :cond_2
    return p1
.end method

.method private getOpWidth()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpMaxWidth(I)I

    move-result p0

    return p0
.end method

.method private static getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    .locals 1

    .line 548
    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    return-object p0
.end method

.method private static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getViewTotalWidth(Landroid/view/View;)I
    .locals 2

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private initDimens()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_icon_dot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_system_icon_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 157
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    .line 161
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->setUnderflowWidth(III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    return-void
.end method

.method private resetViewStates()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 534
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 535
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 536
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 542
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 543
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addIgnoredSlots(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlotInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public isRestrictingIcons()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 372
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->onAttachedToWindow()V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryPercentShow:Z

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 0

    const/4 p1, 0x1

    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryChange:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 378
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->onDetachedFromWindow()V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 265
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DEBUG_OVERFLOW:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 268
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, -0x10000

    .line 269
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v1, -0xff0100

    .line 275
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    int-to-float v2, v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    .line 277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    .line 276
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v1, -0xffff01

    .line 281
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_0

    .line 284
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 285
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    .line 286
    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 194
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 195
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 196
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 198
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->resetViewStates()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->calculateIconTranslations()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->applyIconStates()V

    .line 206
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez p1, :cond_1

    .line 207
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getMinWidthOfClock()I

    move-result p1

    .line 210
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidth:I

    if-eq p2, p1, :cond_2

    .line 211
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidth:I

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidthChanged:Z

    .line 217
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpWidth()I

    move-result p2

    if-gt p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryChange:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryPercentShow:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidthChanged:Z

    if-eqz p1, :cond_5

    .line 218
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout, last, getWidth() > getOpWidth(),  getWidth():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getMeasuredWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getOpWidth():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getParent().getParent():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_1

    :cond_4
    const-string p2, "Null"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusIconContainer"

    .line 218
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayout:Ljava/lang/Runnable;

    const-wide/16 p4, 0x64

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryChange:Z

    .line 225
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryPercentShow:Z

    .line 226
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockWidthChanged:Z

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 295
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 301
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 302
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpMaxWidth(I)I

    move-result p1

    .line 305
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 308
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 309
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 310
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x46

    if-gt v1, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/16 v4, 0x45

    .line 317
    :goto_1
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    .line 321
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 322
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-le v1, v3, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v3, v2

    move v7, v8

    :goto_3
    if-ge v3, v1, :cond_8

    .line 325
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v10, v1, v3

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 326
    invoke-virtual {p0, v9, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v10, v1, -0x1

    if-ne v3, v10, :cond_4

    move v10, v2

    goto :goto_4

    .line 327
    :cond_4
    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 328
    :goto_4
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v11, :cond_6

    if-ge v3, v4, :cond_5

    if-eqz v7, :cond_5

    .line 330
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v9

    goto :goto_5

    :cond_5
    if-eqz v7, :cond_7

    .line 333
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v5, v7

    move v7, v2

    goto :goto_6

    .line 337
    :cond_6
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v9

    :goto_5
    add-int/2addr v9, v10

    add-int/2addr v5, v9

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_a

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez v0, :cond_9

    if-le v5, p1, :cond_9

    .line 343
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 345
    :cond_9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_8

    :cond_a
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b

    if-le v5, p1, :cond_b

    .line 348
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    goto :goto_7

    :cond_b
    move p1, v5

    .line 351
    :goto_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :goto_8
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 357
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 358
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 360
    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 366
    sget p0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setOpTag(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    return-void
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return-void
.end method
