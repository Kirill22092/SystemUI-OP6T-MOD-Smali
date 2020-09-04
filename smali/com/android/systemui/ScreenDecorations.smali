.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$SettingsObserver;,
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field private static final DEBUG_SCREEN_DECORATIONS:Z

.field private static mOpCustRegionRight:I

.field private static mOpCustRegionleft:I


# instance fields
.field private MAX_BLOCK_INTERVAL:I

.field private mAssistHintBlocked:Z

.field private mAssistHintVisible:Z

.field private mBottomOverlay:Landroid/view/View;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasRoundedCorner:Z

.field private mInGesturalMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReceivingNavBarColor:Z

.field private mLastLockTime:J

.field private mOpPendingMaxTimeRunnable:Ljava/lang/Runnable;

.field private mOpPendingRotationChange:Z

.field private mOpPendingRotationChangeBottom:Z

.field private mOverlay:Landroid/view/View;

.field private mPendingRotationChange:Z

.field mResizeRatio:F

.field private mRotation:I

.field protected mRoundedDefault:I

.field protected mRoundedDefaultBottom:I

.field mRoundedDefaultBottomResize:I

.field protected mRoundedDefaultBottomWidth:I

.field mRoundedDefaultBottomWidthResize:I

.field protected mRoundedDefaultTop:I

.field mRoundedDefaultTopResize:I

.field protected mRoundedDefaultTopWidth:I

.field mRoundedDefaultTopWidthResize:I

.field mScreenResolution:I

.field mSettingsObserver:Lcom/android/systemui/ScreenDecorations$SettingsObserver;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

.field private mTempDisableInversion:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "debug.screenshot_rounded_corners"

    .line 131
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    const-string v1, "debug.screen_decorations"

    .line 172
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/16 v0, 0x5dc

    .line 161
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->MAX_BLOCK_INTERVAL:I

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsReceivingNavBarColor:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 190
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    const/high16 v0, 0x3f400000    # 0.75f

    .line 198
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mResizeRatio:F

    .line 579
    new-instance v0, Lcom/android/systemui/ScreenDecorations$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 692
    new-instance v0, Lcom/android/systemui/ScreenDecorations$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$6;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    .line 732
    new-instance v0, Lcom/android/systemui/ScreenDecorations$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$7;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingMaxTimeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/ScreenDecorations;)J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/android/systemui/ScreenDecorations;->mLastLockTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/ScreenDecorations;J)J
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/android/systemui/ScreenDecorations;->mLastLockTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->MAX_BLOCK_INTERVAL:I

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 123
    sget v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionleft:I

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 123
    sget v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionRight:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->postOpPendingMaxTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;)Lcom/oneplus/util/SystemSetting;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/ScreenDecorations;I)I
    .locals 0

    .line 123
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result p0

    return p0
.end method

.method private fade(Landroid/view/View;ZZ)V
    .locals 15

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 284
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 285
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v5, 0x2ee

    .line 291
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ee66666    # 0.45f

    const v12, 0x3f2b851f    # 0.67f

    invoke-direct {v7, v9, v0, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    .line 293
    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-direct {v14, v0, v9, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f7851ec    # 0.97f

    const-wide/16 v5, 0x190

    move-object v0, p0

    move-object v7, v14

    .line 294
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    const v2, 0x3f7851ec    # 0.97f

    const v3, 0x3f828f5c    # 1.02f

    .line 296
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v10

    const v2, 0x3f828f5c    # 1.02f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 298
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 300
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 301
    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 302
    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 303
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ScreenDecorOverlayBottom"

    .line 1056
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1057
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x55

    .line 1061
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x33

    .line 1059
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .locals 0

    .line 979
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    return p0
.end method

.method private hideAssistHandles()V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 751
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 755
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    :cond_0
    return-void
.end method

.method private initRoundCornerView()V
    .locals 5

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1642
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1643
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1644
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1647
    sget v4, Lcom/android/systemui/R$drawable;->rounded_top:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1648
    sget v0, Lcom/android/systemui/R$drawable;->rounded_top:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1649
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1650
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mResizeRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopResize:I

    .line 1656
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomResize:I

    .line 1658
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidthResize:I

    .line 1659
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidthResize:I

    .line 1663
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    const/high16 p0, 0x43340000    # 180.0f

    .line 1669
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1670
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setRotationY(F)V

    return-void
.end method

.method private isLandscape(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isRectangleBottom()Z
    .locals 1

    .line 1784
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRectangleTop()Z
    .locals 1

    .line 1780
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method public static synthetic lambda$aq1MVJyy_LkZ11q5t5cPVZOqbG0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method private postOpPendingMaxTime()V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingMaxTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingMaxTimeRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->MAX_BLOCK_INTERVAL:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postShow()V
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 212
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static rotaingbitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1765
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 1766
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1770
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 1769
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 1771
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p0
.end method

.method private setSize(Landroid/view/View;I)V
    .locals 0

    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1108
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1109
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1110
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSize(Landroid/view/View;II)V
    .locals 0

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1116
    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1117
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1118
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupDecorations()V
    .locals 12

    .line 478
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners:I

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    .line 480
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 482
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners:I

    .line 484
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    .line 485
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v3, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 487
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->initRoundCornerView()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 509
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 511
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$80y3DVvpOo5hQVD-W3EJlUKhPsU;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$80y3DVvpOo5hQVD-W3EJlUKhPsU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    new-instance v0, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v1, v3, v6}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 522
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 525
    new-instance v0, Lcom/android/systemui/ScreenDecorations$3;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v10, "temp_disable_inversion"

    const/4 v11, 0x1

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    .line 533
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, v4}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, v5}, Lcom/oneplus/util/SystemSetting;->onChange(Z)V

    .line 536
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {v1, p0, v2, v5}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 573
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x100

    .line 574
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    :cond_0
    return-void
.end method

.method private setupStatusBarPadding(I)V
    .locals 3

    .line 1005
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1008
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "sysui_rounded_content_padding"

    invoke-static {v0, v2, p1, v1}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    .line 1011
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 1012
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->status_bar:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string v1, "CollapsedStatusBarFragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1014
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string p1, "QS"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    :cond_1
    return-void
.end method

.method private setupStatusBarPaddingIfNeeded()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPadding(I)V

    :cond_0
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 1

    .line 988
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110081

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldHostHandles()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return p0
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 401
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 410
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_cust_statusbar_cutout_show_region_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionleft:I

    .line 411
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_cust_statusbar_cutout_show_region_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionRight:I

    .line 416
    new-instance v0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$SettingsObserver;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsObserver:Lcom/android/systemui/ScreenDecorations$SettingsObserver;

    .line 417
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldHostHandles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 425
    :cond_1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 473
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateAssistantHandleViews()V
    .locals 12

    .line 876
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 878
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 879
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 881
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 883
    :goto_0
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v6, 0xb4

    const/16 v7, 0x55

    const/16 v8, 0x10e

    const/16 v9, 0x53

    const/16 v10, 0x8

    if-nez v5, :cond_1

    .line 884
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 885
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 886
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 887
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 888
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 889
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    .line 891
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 892
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 893
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 894
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 895
    invoke-direct {p0, v1, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 896
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    const/4 v11, 0x3

    if-ne v5, v11, :cond_3

    .line 898
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 899
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 900
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 901
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 902
    invoke-direct {p0, v0, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 903
    invoke-direct {p0, v1, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    if-ne v5, v11, :cond_4

    .line 905
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 906
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 907
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 908
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 909
    invoke-direct {p0, v0, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 910
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateColorInversion(I)V
    .locals 3

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 600
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    if-eqz v1, :cond_1

    move p1, v0

    .line 604
    :cond_1
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_2

    const/16 p1, -0x100

    .line 608
    :cond_2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 610
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 612
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 613
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 614
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    return-void
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOrientation()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must call on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 650
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    .line 661
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    :cond_2
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 664
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 670
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->postShow()V

    .line 677
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v0, :cond_3

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hideAssistHandles()V

    .line 681
    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_3
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 7

    .line 760
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 769
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 771
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 774
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 776
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 782
    sget-boolean v5, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v5, :cond_0

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newRoundedDefaultTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "newRoundedDefaultBottom:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newRoundedDefaultBottomWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ScreenDecorations"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v5, v0, :cond_2

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v5, v2, :cond_2

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v5, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_3

    .line 792
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 793
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 794
    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 796
    iput v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 797
    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    const/4 v0, 0x0

    const-string v1, "sysui_rounded_size"

    .line 799
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .locals 0

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float p0, p3

    .line 916
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updateViewByBitmap(ILandroid/widget/ImageView;II)V
    .locals 1

    .line 939
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    goto :goto_1

    .line 943
    :cond_1
    :goto_0
    sget p1, Lcom/android/systemui/R$drawable;->rounded_top:I

    .line 947
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 948
    invoke-static {p4, p0}, Lcom/android/systemui/ScreenDecorations;->rotaingbitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateViewDetermination(ILandroid/view/View;II)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 929
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    check-cast p2, Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/ScreenDecorations;->updateViewByBitmap(ILandroid/widget/ImageView;II)V

    goto :goto_1

    .line 932
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    .line 923
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    check-cast p2, Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/ScreenDecorations;->updateViewByBitmap(ILandroid/widget/ImageView;II)V

    goto :goto_1

    .line 926
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateViews()V
    .locals 15

    .line 804
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 806
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 807
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 841
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v5, 0x55

    const/16 v6, 0x53

    const/16 v7, 0x35

    const/16 v8, 0x33

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v4, :cond_0

    .line 842
    invoke-direct {p0, v12, v0, v8, v12}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 843
    invoke-direct {p0, v11, v1, v7, v12}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 844
    invoke-direct {p0, v10, v2, v6, v12}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 845
    invoke-direct {p0, v9, v3, v5, v12}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    goto :goto_0

    :cond_0
    const/16 v13, 0x5a

    const/16 v14, 0x10e

    if-ne v4, v11, :cond_1

    .line 847
    invoke-direct {p0, v12, v0, v6, v14}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 848
    invoke-direct {p0, v11, v1, v8, v13}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 849
    invoke-direct {p0, v10, v2, v5, v14}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 850
    invoke-direct {p0, v9, v3, v7, v13}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    goto :goto_0

    :cond_1
    if-ne v4, v9, :cond_2

    const/16 v4, 0xb4

    .line 852
    invoke-direct {p0, v12, v0, v5, v4}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 853
    invoke-direct {p0, v11, v1, v6, v4}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 854
    invoke-direct {p0, v10, v2, v7, v4}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 855
    invoke-direct {p0, v9, v3, v8, v4}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    goto :goto_0

    :cond_2
    if-ne v4, v10, :cond_3

    .line 857
    invoke-direct {p0, v12, v0, v7, v13}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 858
    invoke-direct {p0, v11, v1, v5, v14}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 859
    invoke-direct {p0, v10, v2, v8, v13}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 860
    invoke-direct {p0, v9, v3, v6, v14}, Lcom/android/systemui/ScreenDecorations;->updateViewDetermination(ILandroid/view/View;II)V

    .line 865
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateAssistantHandleViews()V

    .line 872
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method private updateWindowVisibilities()V
    .locals 2

    .line 954
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenDecorations"

    const-string v1, "updateWindowVisibilities"

    .line 955
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 958
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .locals 4

    .line 962
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$id;->display_cutout:I

    .line 963
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 964
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result p0

    .line 965
    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    .line 966
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    if-nez p0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 968
    :cond_4
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 8

    const/high16 p0, 0x3f800000    # 1.0f

    const/high16 v0, 0x40000000    # 2.0f

    .line 259
    invoke-static {v0, p0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 260
    invoke-static {v0, p0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 261
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput p0, v3, v5

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 262
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v1, v6, v4

    aput p0, v6, v5

    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v1, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    .line 263
    invoke-static {v3, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    .line 264
    invoke-static {v3, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    if-eqz p4, :cond_0

    const/4 p4, -0x1

    goto :goto_0

    :cond_0
    move p4, v5

    .line 266
    :goto_0
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    int-to-float p4, p4

    mul-float v6, p4, p2

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v3, v4

    mul-float/2addr p4, p3

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p4, v6

    aput p4, v3, v5

    .line 266
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 269
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p2, v3

    aput p2, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    aput p3, v2, v5

    .line 269
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 272
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 273
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 275
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 276
    invoke-virtual {p2, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 277
    invoke-virtual {p2, p7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1021
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1031
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1034
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v0, :cond_0

    .line 1035
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const-string v0, "ScreenDecorOverlay"

    .line 1038
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1039
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    .line 1043
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x55

    .line 1041
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    const/4 v0, 0x1

    .line 1045
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1046
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    .line 1047
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x1

    .line 1048
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1050
    :cond_3
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method handleNavigationModeChange(I)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eq v0, p1, :cond_1

    .line 240
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    .line 242
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez p1, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 244
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$handleNavigationModeChange$0$ScreenDecorations(I)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->handleNavigationModeChange(I)V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$4$ScreenDecorations()V
    .locals 3

    .line 620
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenDecorations"

    const-string v1, "recevie onConfigurationChanged"

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    :cond_1
    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 633
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_2

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$onDarkIntensity$6$ScreenDecorations(F)V
    .locals 0

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->onDarkIntensity(F)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$5$ScreenDecorations(Ljava/lang/String;)V
    .locals 0

    .line 1074
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "sysui_rounded_size"

    .line 1075
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$setAssistHintBlocked$2$ScreenDecorations(Z)V
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintBlocked(Z)V

    return-void
.end method

.method public synthetic lambda$setAssistHintVisible$1$ScreenDecorations(Z)V
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    return-void
.end method

.method public synthetic lambda$setupDecorations$3$ScreenDecorations()V
    .locals 2

    .line 512
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 619
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ZcXfKc-loCI7zxM2FCddG-g2uzM;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ZcXfKc-loCI7zxM2FCddG-g2uzM;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDarkIntensity(F)V
    .locals 3

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;-><init>(Lcom/android/systemui/ScreenDecorations;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1129
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 1130
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 1132
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 1133
    invoke-virtual {v1, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1137
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 1139
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/CornerHandleView;

    .line 1142
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    :cond_2
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1073
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$5TLtOdjNTIOa-8k0RqmnH5R0ZsI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$5TLtOdjNTIOa-8k0RqmnH5R0ZsI;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAssistHintBlocked(Z)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 381
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 382
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_1
    return-void
.end method

.method public setAssistHintVisible(Z)V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_0

    .line 336
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eq v1, p1, :cond_7

    .line 337
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    .line 339
    sget p1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CornerHandleView;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 341
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 343
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/CornerHandleView;

    .line 346
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 361
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 356
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v0, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 357
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 352
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 353
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 348
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 349
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPaddingIfNeeded()V

    .line 226
    const-class v0, Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 227
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 228
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance v1, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 229
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v0

    .line 227
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 1

    .line 389
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 391
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method updateDecorSize()V
    .locals 9

    .line 1675
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1682
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 1683
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1690
    :cond_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopResize:I

    .line 1691
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomResize:I

    .line 1693
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidthResize:I

    .line 1694
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidthResize:I

    goto :goto_1

    .line 1684
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 1685
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 1687
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 1688
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    goto :goto_1

    .line 1697
    :cond_2
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 1698
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 1699
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 1700
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    :goto_1
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 1710
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v6, v5, :cond_3

    if-ne v6, v1, :cond_4

    :cond_3
    move v8, v3

    move v3, v0

    move v0, v8

    .line 1715
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0, v3}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    .line 1716
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0, v3}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    goto :goto_2

    .line 1718
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 1719
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :goto_2
    if-eqz v4, :cond_8

    .line 1723
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v5, :cond_6

    if-ne v0, v1, :cond_7

    :cond_6
    move v8, v4

    move v4, v2

    move v2, v8

    .line 1728
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    .line 1729
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    goto :goto_3

    .line 1731
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 1732
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_9
    :goto_3
    return-void
.end method
