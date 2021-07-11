.class public Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$SmartActionsReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;
    }
.end annotation


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mActionsContainer:Landroid/widget/HorizontalScrollView;

.field private mActionsContainerBackground:Landroid/widget/ImageView;

.field private mBackgroundProtection:Landroid/widget/ImageView;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private final mContext:Landroid/content/Context;

.field private mDismissAnimation:Landroid/animation/Animator;

.field private mDismissButton:Landroid/widget/FrameLayout;

.field private mDismissDeltaY:F

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mLeftInset:I

.field private mNavMode:I

.field private mOnCompleteRunnable:Ljava/lang/Runnable;

.field private mRightInset:I

.field private mScreenshotAnimatedView:Landroid/widget/ImageView;

.field private final mScreenshotHandler:Landroid/os/Handler;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotPreview:Landroid/widget/ImageView;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 8

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 233
    new-instance p3, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    .line 256
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 258
    iput-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->reloadAssets()V

    .line 261
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 262
    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 263
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p4

    .line 264
    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x1

    .line 267
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7f4

    const v6, 0xe0520

    const/4 v7, -0x3

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p4, "ScreenshotAnimation"

    .line 277
    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p4, 0x3

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p4, 0x0

    .line 279
    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string/jumbo p3, "window"

    .line 280
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 281
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 282
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 283
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 285
    sget p1, Lcom/android/systemui/R$dimen;->global_screenshot_x_scale:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 286
    sget p1, Lcom/android/systemui/R$dimen;->screenshot_dismissal_height_delta:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissDeltaY:F

    .line 288
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    .line 289
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 292
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 293
    invoke-virtual {p1, p4}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->clearScreenshot()V

    return-void
.end method

.method private clearScreenshot()V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 716
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_preview_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 721
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private createScreenshotDismissAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1047
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 1048
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xb7

    .line 1049
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1050
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 1054
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1055
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 1056
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1057
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 1058
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 1059
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1067
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1068
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$createScreenshotDismissAnimation$16(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1051
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDismissAnimation$17(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1060
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissDeltaY:F

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    add-float/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1062
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1063
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 1064
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$reloadAssets$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 396
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setWindowFocusable(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$reloadAssets$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 401
    iget p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result p1

    .line 402
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 404
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    .line 405
    iget p1, p1, Landroid/graphics/Insets;->right:I

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 407
    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    .line 409
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$reloadAssets$2(Landroid/view/View;)V
    .locals 1

    .line 454
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string p1, "dismiss_button"

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 456
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private reloadAssets()V
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->global_screenshot:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 393
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$cjbBbqRWya3kStc4feynRVu5-_w;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$cjbBbqRWya3kStc4feynRVu5-_w;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 411
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 422
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 423
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 425
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_animated_view:I

    .line 426
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    .line 427
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 428
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 435
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_preview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 436
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 437
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 445
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_container_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 447
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 449
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 450
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    .line 452
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_dismiss_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    .line 453
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ivNcVUrtovF5MBU69iA0tYfbicU;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ivNcVUrtovF5MBU69iA0tYfbicU;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_flash:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 460
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 461
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 462
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 463
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 464
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 465
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 466
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setWindowFocusable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 484
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 485
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method dismissScreenshot(Ljava/lang/String;Z)V
    .locals 2

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearing screenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalScreenshot"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    if-nez p2, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDismissAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    .line 687
    new-instance p2, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->clearScreenshot()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$createScreenshotDismissAnimation$16$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDismissAnimation$17$GlobalScreenshot(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$17(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$reloadAssets$0$GlobalScreenshot(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$reloadAssets$1$GlobalScreenshot(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$reloadAssets$2$GlobalScreenshot(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$2(Landroid/view/View;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    const/4 v0, 0x3

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 299
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 301
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 303
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 304
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 305
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 306
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 307
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 308
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 309
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 311
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 315
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    sub-int p0, v3, p0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p0, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 320
    :cond_0
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method stopScreenshot()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 639
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    :cond_0
    return-void
.end method
