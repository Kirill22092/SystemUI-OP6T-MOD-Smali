.class public Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;
.super Lcom/android/systemui/statusbar/phone/PanelViewController;
.source "OpPanelViewController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mHighlightHintVisualWidth:I

.field protected mHighlightHintVisualX:I

.field private mHightHintIntercepting:Z

.field protected mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/PanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 81
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    .line 84
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p3}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 2

    .line 295
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v1, "mNotificationStackScroller"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method private getTrackingPointer()I
    .locals 2

    .line 215
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelViewController;

    const-string v1, "mTrackingPointer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isFingerprintAuthenticating()Z
    .locals 0

    .line 300
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$0l8g0MprKElc4TZRjhyoeov_yqY(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->run()V

    return-void
.end method

.method private synthetic lambda$initExpandButton$0()V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    if-eqz p0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    :cond_0
    return-void
.end method

.method private run()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpStatusBarView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpStatusBarView()Landroid/view/View;

    move-result-object v0

    .line 195
    sget v1, Lcom/android/systemui/R$id;->highlight_hint_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 201
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighlightHintInfo target[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    aget v0, v1, v3

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualX:I

    :cond_1
    return-void
.end method

.method private setTrackingPointer(I)V
    .locals 2

    .line 211
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mTrackingPointer"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private shouldHightHintIntercept(FF)Z
    .locals 9

    .line 155
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    .line 159
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v2}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v0

    if-nez v0, :cond_8

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    .line 161
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOrientation:I

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 162
    :goto_1
    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 163
    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualX:I

    sub-int/2addr v7, v5

    int-to-float v7, v7

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    .line 167
    :cond_2
    iget v8, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualX:I

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualWidth:I

    add-int/2addr v8, p0

    add-int/2addr v8, v5

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v6

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    move v7, p0

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    goto :goto_3

    :cond_5
    int-to-float p0, v8

    :cond_6
    :goto_3
    cmpl-float v0, p1, v7

    if-ltz v0, :cond_7

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_7

    :goto_4
    move p0, v4

    goto :goto_5

    :cond_7
    move p0, v3

    goto :goto_5

    .line 174
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_7

    goto :goto_4

    :goto_5
    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    move v3, v4

    :cond_9
    return v3
.end method


# virtual methods
.method protected createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
    .locals 10

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->opGetMaxClockY()I

    move-result v0

    int-to-float v0, v0

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->opGetClockY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float v2, v0, v2

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v3

    sub-float v0, v1, v0

    sub-float/2addr v3, v0

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v0, v1, v4

    .line 352
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 353
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v6, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 355
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v6

    .line 356
    const-class v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v7

    if-eqz v6, :cond_0

    const-wide/16 v8, 0x0

    .line 359
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_0
    new-array v8, v4, [I

    const/16 v9, 0x74

    aput v9, v8, v2

    .line 361
    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    const/16 v9, 0x5b

    if-nez v8, :cond_1

    new-array v8, v4, [I

    aput v9, v8, v2

    .line 362
    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x32

    .line 363
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v4, "animator.setDuration 50"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-array v4, v4, [I

    aput v9, v4, v2

    .line 370
    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    const/16 v8, 0x12c

    const/16 v9, 0x96

    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    goto :goto_0

    .line 373
    :cond_2
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v4

    if-nez v4, :cond_3

    move v9, v8

    :cond_3
    :goto_0
    const-string v4, "test.fling.enable"

    .line 377
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "test.fling.duration"

    .line 378
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_4
    int-to-long v8, v9

    .line 381
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    :goto_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createHeightAnimatorForBiometricUnlock startHeight:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " endHeight:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " isPreventViewShow:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isFacelockUnlocking:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v1
.end method

.method public abstract getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.end method

.method public abstract getPerf()Landroid/util/BoostFramework;
.end method

.method protected initExpandButton()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    .line 462
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$3;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->setmOnExpandButtonListener(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getmStatusBarCollapseListener()Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPanelViewController$ETHyd_pQqafCpVPaRSBqmkI8Ei0;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPanelViewController$ETHyd_pQqafCpVPaRSBqmkI8Ei0;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->setmStatusBarCollapseListener(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;)V

    :cond_1
    return-void
.end method

.method protected isWithinGameModeToolBoxRegion()Z
    .locals 6

    .line 498
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 503
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 506
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_port:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 513
    :goto_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toolboxRegionWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 516
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchActionDownY:F

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_4

    .line 517
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchActionDownX:F

    int-to-float v3, v2

    cmpg-float v3, p0, v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public synthetic lambda$initExpandButton$0$OpPanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->lambda$initExpandButton$0()V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 91
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->loadDimens()V

    .line 94
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->highlight_hint_icon_size_notch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_padding:I

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualWidth:I

    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 308
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 309
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->isFingerprintAuthenticating()Z

    move-result p1

    if-nez p1, :cond_0

    .line 311
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 312
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v0, "onDoubleTap to sleep"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onHightlightHintIntercept(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 104
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getTrackingPointer()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->setTrackingPointer(I)V

    move v1, v2

    .line 109
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 147
    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHightHintIntercepting:Z

    goto/16 :goto_1

    .line 121
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->shouldHightHintIntercept(FF)Z

    move-result p1

    if-nez p1, :cond_8

    .line 122
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHightHintIntercepting:Z

    goto :goto_1

    .line 128
    :cond_3
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHightlightHintIntercept / ACTION_UP / x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", mHighlightHintVisualWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mHighlightHintVisualX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHighlightHintVisualX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOrientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHightHintIntercepting:Z

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, v1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->shouldHightHintIntercept(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 136
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->launchCarModeAp(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->launchHighlightHintAp()V

    .line 143
    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHightHintIntercepting:Z

    goto :goto_1

    .line 114
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->shouldHightHintIntercept(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 115
    iput-boolean v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHightHintIntercepting:Z

    goto :goto_1

    .line 117
    :cond_7
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHightHintIntercepting:Z

    :cond_8
    :goto_1
    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected opFlingToHeightAnimatorForBiometricUnlock()V
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 343
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setUpHighlightHintInfo()V
    .locals 4

    .line 184
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    .line 185
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPanelViewController$0l8g0MprKElc4TZRjhyoeov_yqY;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPanelViewController$0l8g0MprKElc4TZRjhyoeov_yqY;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected showExpandButton()V
    .locals 3

    .line 490
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable panel expandButton is show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->isShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->show()V

    return-void
.end method

.method public stopTrackingAfterUnlock()V
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    :cond_0
    return-void
.end method

.method public updateScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    :cond_0
    return-void
.end method
