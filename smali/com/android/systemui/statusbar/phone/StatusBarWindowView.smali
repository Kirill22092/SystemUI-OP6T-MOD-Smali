.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mLeftInset:I

.field protected mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mRightInset:I

.field private mTopInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 64
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 65
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTopInset:I

    .line 74
    sput-object p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyMargins()V
    .locals 6

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTopInset:I

    if-eq v4, v5, :cond_1

    .line 100
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 101
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 102
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTopInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->statusBarCornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;II)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static paddingNeededForCutoutAndRoundedCorner(Landroid/view/DisplayCutout;Landroid/util/Pair;I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 122
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    if-eqz p1, :cond_1

    .line 129
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 130
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 130
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 134
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 135
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 136
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static statusBarCornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 164
    :cond_2
    sget-object p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {p2, p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 161
    :cond_3
    sget-object p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {p2, p0, v3, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 167
    :cond_4
    sget-object p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    const/16 v2, 0x30

    invoke-static {p2, p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    :goto_0
    if-ltz p3, :cond_5

    .line 174
    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p3, :cond_5

    return-object v0

    .line 178
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 p2, 0x0

    if-gtz p0, :cond_6

    .line 179
    new-instance p0, Landroid/util/Pair;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 182
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p3, v1, Landroid/graphics/Point;->x:I

    if-lt p0, p3, :cond_7

    .line 183
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 80
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 81
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 82
    iget v0, v0, Landroid/graphics/Insets;->right:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTopInset:I

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTopInset:I

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 192
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    return v2

    .line 195
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7

    .line 196
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 205
    :cond_2
    const-class v1, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {v1}, Lcom/oneplus/battery/OpChargingAnimationController;->isAnimationStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 209
    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getFpAnimationCtrl()Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 210
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getFpAnimationCtrl()Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 217
    :cond_4
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v1

    if-nez v1, :cond_5

    .line 218
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->onHightlightHintIntercept(Landroid/view/MotionEvent;)Z

    .line 223
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v2
.end method

.method public setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method
