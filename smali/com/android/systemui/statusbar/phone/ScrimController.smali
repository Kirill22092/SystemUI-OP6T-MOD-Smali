.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;,
        Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG_END_ALPHA:I

.field static final TAG_KEY_ANIM:I

.field private static final TAG_START_ALPHA:I


# instance fields
.field private mAnimateChange:Z

.field private mAnimationDelay:J

.field private mAnimationDuration:J

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBehindAlpha:F

.field private mBehindTint:I

.field private mBlankScreen:Z

.field private mBlankingTransitionRunnable:Ljava/lang/Runnable;

.field private mBubbleAlpha:F

.field private mBubbleTint:I

.field private mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mDarkenWhileDragging:Z

.field private final mDefaultScrimAlpha:F

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mExpansionAffectsAlpha:Z

.field private mExpansionFraction:F

.field private mForceHideScrims:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAlpha:F

.field private mInFrontTint:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardOccluded:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

.field private mNeedsDrawableColorUpdate:Z

.field private mPendingFrameCallback:Ljava/lang/Runnable;

.field private mQSExpend:Z

.field private mScreenBlankingCallbackCalled:Z

.field private mScreenOn:Z

.field private mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimBehindAlphaKeyguard:F

.field private mScrimColor:I

.field private mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimVisibleListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimsVisibility:I

.field private mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mTracking:Z

.field private mUpdatePending:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeld:Z

.field private mWallpaperSupportsAmbientMode:Z

.field private mWallpaperVisibilityTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    .line 158
    sget v0, Lcom/android/systemui/R$id;->scrim:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    .line 159
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_start:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    .line 160
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_end:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/BlurUtils;)V
    .locals 3

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v0, 0x3e4ccccd    # 0.2f

    .line 181
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 185
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    const-wide/16 v1, -0x1

    .line 192
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 195
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, -0x40800000    # -1.0f

    .line 197
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 198
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 199
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    const/high16 v1, -0x1000000

    .line 229
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColor:I

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$v3pYAGeeZEy0j9LKp92o1adNfrk;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$v3pYAGeeZEy0j9LKp92o1adNfrk;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    .line 240
    invoke-virtual {p10}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f0a3d71    # 0.54f

    goto :goto_0

    :cond_0
    const p1, 0x3f266666    # 0.65f

    .line 241
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    .line 243
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 244
    invoke-interface {p4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 245
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 246
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    const/4 p7, 0x0

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    .line 247
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    .line 248
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p6, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;

    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    const-string p10, "hide_aod_wallpaper"

    invoke-direct {p1, p3, p6, p10, p7}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p5, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setHandler(Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    const-string p1, "Scrims"

    invoke-virtual {p5, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    invoke-virtual {p5}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 253
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 254
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 255
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 263
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 264
    invoke-virtual {p8, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 265
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 266
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ScrimController;ZJ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardFadingAway(ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQSExpend:Z

    return p1
.end method

.method private applyAndDispatchExpansion()V
    .locals 1

    .line 583
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 584
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 594
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 596
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$qcAzw93VG0gxAU1AfapPWpIf3aU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$qcAzw93VG0gxAU1AfapPWpIf3aU;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private applyExpansionToAlpha()V
    .locals 5

    .line 549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 559
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_5

    .line 562
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    .line 564
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v3, :cond_3

    .line 565
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    goto :goto_0

    .line 569
    :cond_3
    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 573
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 574
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v2

    .line 573
    invoke-static {v1, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    goto :goto_2

    .line 555
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    .line 556
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 557
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 558
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 576
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 577
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrim opacity is NaN for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", front: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blankDisplay()V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 1032
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$ag-08GXJhpSWypcA8-hrLE9y1Zo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$ag-08GXJhpSWypcA8-hrLE9y1Zo;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 1054
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->doOnTheNextFrame(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1023
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private dispatchScrimState(F)V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchScrimsVisible()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 762
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eq v1, v0, :cond_3

    .line 763
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    .line 764
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 870
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    return p0

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 872
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    return p0

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_2

    .line 874
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    return p0

    .line 876
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCurrentScrimTint(Landroid/view/View;)I
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 882
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    return p0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 884
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    return p0

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_2

    .line 886
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    return p0

    .line 888
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInterpolatedFraction()F
    .locals 8

    .line 769
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v0

    const v0, 0x3e4ccccd    # 0.2f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x400921fa00000000L    # 3.141590118408203

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 776
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    mul-double/2addr v2, v0

    sub-double/2addr v4, v2

    double-to-float p0, v4

    return p0
.end method

.method private getScrimName(Lcom/android/systemui/statusbar/ScrimView;)Ljava/lang/String;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    const-string p0, "front_scrim"

    return-object p0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    const-string p0, "back_scrim"

    return-object p0

    .line 795
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, p0, :cond_2

    const-string p0, "bubble_scrim"

    return-object p0

    :cond_2
    const-string/jumbo p0, "unknown_scrim"

    return-object p0
.end method

.method private holdWakeLock()V
    .locals 3

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v1, "ScrimController"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 485
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    .line 486
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Cannot hold wake lock, it has not been set yet"

    .line 488
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private isAnimating(Landroid/view/View;)Z
    .locals 0

    .line 956
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$applyAndDispatchExpansion$1()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method private synthetic lambda$blankDisplay$3()V
    .locals 1

    const/4 v0, 0x0

    .line 1039
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 1040
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1041
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method private synthetic lambda$blankDisplay$4()V
    .locals 4

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 1034
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 1038
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$naUAB1OlntOHTCtGQlLQ0dSkAuw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$naUAB1OlntOHTCtGQlLQ0dSkAuw;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 1048
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    .line 1049
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fading out scrims with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrimController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$startScrimAnimation$2(Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 5

    .line 828
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 829
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 830
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v2

    .line 831
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v3

    .line 832
    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 833
    invoke-static {v0, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 834
    invoke-static {p2, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    .line 835
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 836
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    .line 839
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQSExpend:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, p1, :cond_0

    .line 840
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$transitionTo$0()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method private onFinished()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method private onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 914
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    .line 915
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 923
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v1, "ScrimController"

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 925
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    :cond_2
    if-eqz p1, :cond_3

    .line 929
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 932
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 938
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_4

    const/high16 p1, -0x1000000

    .line 945
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    .line 946
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    .line 947
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 950
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 951
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 916
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p1, p0, :cond_6

    .line 919
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_6
    return-void
.end method

.method private setKeyguardFadingAway(ZJ)V
    .locals 3

    .line 1203
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1204
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimState;->setKeyguardFadingAway(ZJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setOrAdaptCurrentAnimation(Landroid/view/View;)V
    .locals 3

    .line 520
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v0

    .line 521
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    .line 524
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 525
    sget v2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v1, v0, v1

    add-float/2addr v2, v1

    .line 528
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 529
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 530
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    goto :goto_1

    .line 539
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    :goto_1
    return-void
.end method

.method private setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 782
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 787
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private shouldFadeAwayWallpaper()Z
    .locals 3

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 440
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private shouldUpdateFrontScrimAlpha()Z
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 633
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 637
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 821
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 825
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 827
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$pQ1ZzyQHHAbZJylpLDQQk40ggTo;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$pQ1ZzyQHHAbZJylpLDQQk40ggTo;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 844
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 845
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 846
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 847
    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 861
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 862
    sget p2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 864
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 865
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 6

    .line 965
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    .line 967
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 973
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    return-void

    .line 979
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-eqz v1, :cond_2

    .line 981
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->blankDisplay()V

    return-void

    .line 983
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 986
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_3

    .line 987
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 988
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 992
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_4

    .line 993
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    :cond_4
    cmpl-float v1, p2, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 997
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v5

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    if-nez v1, :cond_7

    if-eqz v2, :cond_d

    .line 1004
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v3, :cond_8

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v3, :cond_9

    :cond_8
    if-nez v2, :cond_a

    .line 1006
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    goto :goto_4

    .line 1013
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_b

    goto :goto_2

    .line 1014
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    :cond_c
    :goto_2
    const/high16 v0, -0x1000000

    .line 1015
    :goto_3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    :cond_d
    :goto_4
    return-void
.end method

.method private updateScrimColor(Landroid/view/View;FI)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 802
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 803
    instance-of v0, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v0, :cond_0

    .line 804
    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/statusbar/ScrimView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_alpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/statusbar/ScrimView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 809
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 812
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 813
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 817
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method


# virtual methods
.method public attachViews(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 7

    .line 274
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 275
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 276
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    .line 278
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 279
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 280
    aget-object v1, p1, p3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ScrimState;->init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dock/DockManager;)V

    .line 282
    aget-object v0, p1, p3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setScrimBehindAlphaKeyguard(F)V

    .line 283
    aget-object v0, p1, p3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setDefaultScrimAlpha(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected doOnTheNextFrame(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1066
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, " ScrimController: "

    .line 1092
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  state: "

    .line 1093
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  frontScrim:"

    .line 1096
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " viewAlpha="

    .line 1097
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(F)V

    const-string p3, " alpha="

    .line 1099
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " tint=0x"

    .line 1101
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  backScrim:"

    .line 1104
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1107
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  bubbleScrim:"

    .line 1112
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 1115
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 1117
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mTracking="

    .line 1120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDefaultScrimAlpha="

    .line 1122
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    const-string p1, "  mExpansionFraction="

    .line 1124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    const-string p1, " BackgroundColor:"

    .line 1128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getBackgroundColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public forceHideScrims(ZZ)V
    .locals 0

    .line 1254
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    .line 1255
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 1257
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->shouldForceHideWallpaper(Z)V

    .line 1259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    .line 1071
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 1072
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 1071
    invoke-static {p0, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public synthetic lambda$applyAndDispatchExpansion$1$ScrimController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$applyAndDispatchExpansion$1()V

    return-void
.end method

.method public synthetic lambda$blankDisplay$3$ScrimController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$blankDisplay$3()V

    return-void
.end method

.method public synthetic lambda$blankDisplay$4$ScrimController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$blankDisplay$4()V

    return-void
.end method

.method public synthetic lambda$startScrimAnimation$2$ScrimController(Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$startScrimAnimation$2(Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$transitionTo$0$ScrimController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$transitionTo$0()V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 1085
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/4 p1, 0x1

    .line 1086
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 1087
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    return-void
.end method

.method protected onHideWallpaperTimeout()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 477
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperFadeOutDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 895
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 897
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onStart()V

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 1156
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    .line 1145
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    const-string v1, "Shorter blanking because screen turned on. All good."

    .line 1148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    return-void
.end method

.method public resetForceHide()V
    .locals 2

    .line 1264
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->shouldForceHideWallpaper(Z)V

    .line 1266
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    return-void
.end method

.method protected scheduleUpdate()V
    .locals 1

    .line 666
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 671
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 961
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 1

    .line 622
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->shouldUpdateFrontScrimAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 627
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    .line 628
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    return-void
.end method

.method public setExpansionAffectsAlpha(Z)V
    .locals 2

    .line 1160
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 1163
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    .line 1165
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    .line 1166
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->unlockedByWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ScrimController"

    const-string p1, "setExpansionAffectsAlpha: skip because we are unlocked by wake and unlock."

    .line 1167
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchExpansion()V

    :cond_1
    return-void
.end method

.method public setHasBackdrop(Z)V
    .locals 4

    .line 1183
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1184
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setHasBackdrop(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 1190
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 1191
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1195
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 1196
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    :cond_2
    return-void

    .line 1192
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    .line 1178
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .locals 3

    .line 1209
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1210
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setLaunchingAffordanceWithPreview(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 1

    .line 502
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 506
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    .line 508
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 512
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez p1, :cond_2

    goto :goto_2

    .line 515
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchExpansion()V

    nop

    :cond_3
    :goto_2
    return-void

    .line 503
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fraction should not be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1076
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 1272
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColor:I

    return-void
.end method

.method setScrimVisibleListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .locals 4

    .line 648
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 649
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWakeLockScreenSensorActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 654
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 655
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 656
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    goto :goto_1

    .line 657
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 2

    .line 1134
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    .line 1135
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    const/4 v0, 0x0

    .line 1136
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1137
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWallpaperSupportsAmbientMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 8

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p0, p2, :cond_0

    .line 305
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_0
    return-void

    .line 312
    :cond_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_13

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 322
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v1, 0x1000

    .line 323
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "scrim_state"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_3

    .line 326
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onCancelled()V

    .line 328
    :cond_3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 330
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const/4 p2, 0x0

    .line 331
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    const-wide/16 v1, 0x0

    .line 332
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 333
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBlanksScreen()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 334
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 335
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimationDuration()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 337
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontTint()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    .line 338
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    .line 339
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBubbleTint()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    .line 341
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 342
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 343
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBubbleAlpha()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    .line 344
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_12

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_12

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 356
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 357
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v6, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 360
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 361
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 367
    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v3, :cond_6

    move p1, v5

    goto :goto_0

    :cond_6
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 373
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    .line 379
    :cond_7
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->shouldFadeAwayWallpaper()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 381
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$YQJRwwTLFgaOweq9aHvS8f9csz8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$YQJRwwTLFgaOweq9aHvS8f9csz8;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 386
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$0ZxUFLvlsGlm9ET2o7nSDW8wc5w;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$0ZxUFLvlsGlm9ET2o7nSDW8wc5w;-><init>(Lcom/android/systemui/util/AlarmTimeout;)V

    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 389
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v3, :cond_d

    const-string p1, "debug.reboot.scrim.anim"

    .line 398
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-wide/16 v3, 0x64

    const-wide/16 v6, 0x10

    if-eqz p1, :cond_c

    if-ne p1, v5, :cond_9

    .line 402
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    goto :goto_2

    :cond_9
    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 404
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {p1, p2, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 405
    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    goto :goto_2

    :cond_a
    const/4 p2, 0x3

    if-ne p1, p2, :cond_b

    .line 407
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {p1, p2, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_b
    const/4 p2, 0x4

    if-ne p1, p2, :cond_11

    .line 409
    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    goto :goto_2

    .line 412
    :cond_c
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz p1, :cond_11

    .line 413
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {p1, p2, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 414
    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 417
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_11

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    goto :goto_2

    .line 421
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, p1, :cond_f

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 422
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-nez p1, :cond_10

    .line 426
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    goto :goto_2

    .line 428
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 431
    :cond_11
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    return-void

    .line 345
    :cond_12
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", front: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", back: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 318
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot change to UNINITIALIZED."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected updateScrims()V
    .locals 9

    .line 676
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "ScrimController"

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScrims: , mState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", anim = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mTracking = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Force = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDarkenWhileDragging = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mColors = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 687
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    .line 690
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v4

    .line 691
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v6

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v6, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v4

    .line 693
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v7, v5}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x1000000

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    .line 699
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v5

    const/high16 v6, 0x40900000    # 4.5f

    .line 700
    invoke-static {v0, v5, v6}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumBackgroundAlpha(IIF)I

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v5, :cond_6

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v5, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v4

    .line 710
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v5, v6, :cond_8

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v5, v6, :cond_9

    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move v2, v4

    :goto_5
    if-nez v0, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 713
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 724
    :cond_b
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_c

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScrims: inFrontAlpha= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", behindAlpha= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", bubbleAlpha= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    if-eqz v0, :cond_d

    .line 733
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    goto :goto_6

    .line 738
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 744
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    .line 745
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method
