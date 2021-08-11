.class public Lcom/oneplus/battery/OpSWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpSWarpChargingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpSWarpChargingView$releaseBitmapTask;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field static final DEBUG:Z

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryLevelBound:Landroid/widget/TextView;

.field private mBatteryLevelHundredth:Landroid/widget/TextView;

.field private mBatteryLevelHundredthBound:Landroid/widget/TextView;

.field private mBatteryLevelPercent:Landroid/widget/TextView;

.field private mBatteryLevelPercentBound:Landroid/widget/TextView;

.field private mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3:Landroid/animation/ValueAnimator;

.field private mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

.field mChargingAnimationAssets:[Landroid/graphics/Bitmap;

.field private mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

.field mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

.field private mChargingP1FrameEnd:I

.field private mChargingP2FrameEnd:I

.field private mChargingP3FrameEnd:I

.field private mChargingP3WarpFrameEnd:I

.field private mChargingP4AnimSet:Landroid/animation/AnimatorSet;

.field private mChargingP4FrameEnd:I

.field private mChargingP4WarpFrameEnd:I

.field private mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHundredLevelAnim:Landroid/animation/ValueAnimator;

.field private mHundredthBoundAnim:Landroid/animation/ValueAnimator;

.field private mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

.field private mInfoView:Landroid/view/View;

.field private mInfoViewContainer:Landroid/widget/RelativeLayout;

.field private mIsAnimationPlaying:Z

.field private mIsPaddingStartAnimation:Z

.field private mIsWarpAnimRunning:Z

.field private mKeyguardShowing:Z

.field private mLevelViewTransTarget:F

.field private mNowPlaying:I

.field private mPrevLevel:I

.field private mSWarpDuration:J

.field private mSWarpLevel:F

.field private mSWarpLevelNext:F

.field private mWarpAnimSet:Landroid/animation/AnimatorSet;

.field private mWarpChargingType:I

.field private mWarpView:Landroid/widget/TextView;

.field private mWarpZoomInAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    const/16 p2, 0xb

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    const/16 p2, 0x18

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    const/16 p2, 0x4a

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    const/16 p2, 0x59

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    const/16 p2, 0x57

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    const/16 p2, 0x63

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpSWarpChargingView;II[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseBitmap(II[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpSWarpChargingView;IIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oneplus/battery/OpSWarpChargingView;->preloadAnimationList(IIIZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    return p0
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p0
.end method

.method static synthetic access$2402(Lcom/oneplus/battery/OpSWarpChargingView;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/oneplus/battery/OpSWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$3302(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->combineWarpAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oneplus/battery/OpSWarpChargingView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$902(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationEnd from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->onBatteryLevelChanged(IZZ)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v2, 0x67

    invoke-interface {p1, v2}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    iput v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private combineWarpAnimation()V
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$22;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$22;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->op_swarp_animation_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->op_warp_animation_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwarpAnimation : startLevel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], endLevel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    return-void
.end method

.method private genWarpAnimation()V
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$16;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$17;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$18;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$19;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$19;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$20;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$20;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$21;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$21;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 12

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x26

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$1;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v5, 0xff

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$2;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/16 v6, 0x140

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$3;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpSWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v9, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [I

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    add-int/2addr v5, v3

    aput v5, v2, v4

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    aput v5, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    iget v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    sub-int/2addr v5, v9

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x26

    int-to-long v9, v5

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v9, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v10, Lcom/android/systemui/R$integer;->op_control_time_225:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/oneplus/battery/OpSWarpChargingView$5;

    invoke-direct {v9, p0}, Lcom/oneplus/battery/OpSWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/ValueAnimator;

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v9, v0, [I

    iget v10, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    add-int/2addr v10, v3

    aput v10, v9, v4

    iget v10, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    aput v10, v9, v3

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    iget v10, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    iget v11, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x26

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/oneplus/battery/OpSWarpChargingView$6;

    invoke-direct {v10, p0}, Lcom/oneplus/battery/OpSWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/oneplus/battery/OpSWarpChargingView$7;

    invoke-direct {v10, p0, v1, v8}, Lcom/oneplus/battery/OpSWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    iget v8, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    add-int/2addr v8, v3

    aput v8, v1, v4

    iget v8, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    aput v8, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    iget v8, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    iget v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x26

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$8;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpSWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$9;

    invoke-direct {v8, p0, v2, v5}, Lcom/oneplus/battery/OpSWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    add-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x26

    int-to-long v8, v2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$10;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v5, 0xbe

    int-to-long v8, v5

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$11;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oneplus/battery/OpSWarpChargingView$12;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpSWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v7, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v1, v5, v4

    aput-object v6, v5, v3

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$13;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [I

    aput v4, v0, v4

    iget v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x26

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$14;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$15;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_3
    .array-data 4
        0x3e75c28f    # 0.24f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_4
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isSWarp()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    const-string v0, "persist.test.warp"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWarp()Z
    .locals 4

    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    const-string v1, "persist.test.warp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    iget v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private preloadAnimationList(IIIZZ)V
    .locals 6

    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    const-string v1, "OpSWarpChargingView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadAnimationList() start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resourceType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", releaseBitmap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playAnimation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    sget-object p3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warpcharge_wired_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->swarpcharge_wired_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    sget-object p3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warpcharge_wireless_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    :goto_0
    const/4 v4, 0x0

    if-eqz p4, :cond_7

    move p4, v4

    :goto_1
    array-length v5, v0

    if-ge p4, v5, :cond_7

    aget-object v5, v0, p4

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-ge p1, p2, :cond_9

    invoke-virtual {p3, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v0, p1

    if-eqz p4, :cond_8

    :try_start_0
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p5, :cond_a

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/battery/OpSWarpChargingView$25;

    invoke-direct {p2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$25;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-boolean p2, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "preloadAnimationList: cost Time"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method private refreshUI()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    const/16 v1, 0x438

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_warp_text_size:I

    invoke-static {v0, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    return-void
.end method

.method private releaseAnimationList()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSWarpChargingView"

    const-string v1, "releaseAnimationList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$26;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$26;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseBitmap(II[Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " releaseBitmap : start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arraysize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$releaseBitmapTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/battery/OpSWarpChargingView$releaseBitmapTask;-><init>(II[Landroid/graphics/Bitmap;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public notifyWarpCharging(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify Warp Charging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget v0, Lcom/android/systemui/R$id;->info_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->warp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->battery_level_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_percent_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    iget p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const-string p3, "]"

    const-string v0, "OpSWarpChargingView"

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "level is same as latest one ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    iput-wide p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$23;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$23;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$24;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$24;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpSWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string p1, "startAnimation"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->genWarpAnimation()V

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "startAnimation / else / prepareAsset"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpSWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_5

    const-string v1, "stop charging animation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    :goto_0
    return-void
.end method
