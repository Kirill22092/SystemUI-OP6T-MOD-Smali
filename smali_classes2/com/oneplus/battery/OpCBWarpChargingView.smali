.class public Lcom/oneplus/battery/OpCBWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpCBWarpChargingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpCBWarpChargingView$releaseBitmapTask;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

.field private mArrowView:Landroid/widget/ImageView;

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

.field private mBatteryLevelViewContainer:Landroid/view/View;

.field private mCbAnimP1end:I

.field private mCbAnimP2end:I

.field private mCbAnimP3end:I

.field private mCbWarpAnimP2end:I

.field private mCbWarpAnimP3end:I

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimSet:Landroid/animation/AnimatorSet;

.field mChargingAnimationAssets:[Landroid/graphics/Bitmap;

.field private mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

.field mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

.field private mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

.field private mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

.field private mChargingState:Landroid/widget/TextView;

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHundredLevelAnim:Landroid/animation/ValueAnimator;

.field private mHundredthBoundAnim:Landroid/animation/ValueAnimator;

.field private mInfoView:Landroid/view/View;

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

.field private mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

.field private mWarpChargingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    iput-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    const/4 p3, 0x1

    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mNowPlaying:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevel:F

    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevelNext:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpDuration:J

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    const/16 p2, 0x2a

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    const/16 p2, 0x91

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP2end:I

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    const/16 p2, 0xba

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP3end:I

    const/16 p2, 0xb9

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP3end:I

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->isSWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP3end:I

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpCBWarpChargingView;II[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/battery/OpCBWarpChargingView;->releaseBitmap(II[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpCBWarpChargingView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpCBWarpChargingView;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevel:F

    return p0
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpCBWarpChargingView;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    return p0
.end method

.method static synthetic access$2002(Lcom/oneplus/battery/OpCBWarpChargingView;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/battery/OpCBWarpChargingView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpCBWarpChargingView;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpDuration:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpCBWarpChargingView;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevelNext:F

    return p0
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP3end:I

    return p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$2902(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpCBWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP2end:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpCBWarpChargingView;IIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oneplus/battery/OpCBWarpChargingView;->preloadAnimationList(IIIZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    return p0
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

    const-string v0, "OpCBWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->onBatteryLevelChanged(IZZ)V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v2, 0x67

    invoke-interface {p1, v2}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    iput v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private genWarpAnimation()V
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$11;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$13;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    const/4 v4, 0x1

    aput v3, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x20

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/battery/OpCBWarpChargingView$1;

    invoke-direct {v3, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x19

    mul-int/lit8 v3, v3, 0x20

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v3, 0x320

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/oneplus/battery/OpCBWarpChargingView$2;

    invoke-direct {v3, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/battery/OpCBWarpChargingView$3;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget v5, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP3end:I

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/oneplus/battery/OpCBWarpChargingView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [I

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    add-int/2addr v6, v4

    aput v6, v5, v2

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP2end:I

    aput v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP2end:I

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/oneplus/battery/OpCBWarpChargingView$5;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v6, v0, [I

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP2end:I

    add-int/2addr v7, v4

    aput v7, v6, v2

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP3end:I

    aput v7, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP3end:I

    iget v8, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP2end:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x20

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/oneplus/battery/OpCBWarpChargingView$6;

    invoke-direct {v7, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/oneplus/battery/OpCBWarpChargingView$7;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [I

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    add-int/2addr v6, v4

    aput v6, v5, v2

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    aput v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/oneplus/battery/OpCBWarpChargingView$8;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v6, v0, [I

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    add-int/2addr v7, v4

    aput v7, v6, v2

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP3end:I

    aput v7, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP3end:I

    iget v8, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbWarpAnimP2end:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x20

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/oneplus/battery/OpCBWarpChargingView$9;

    invoke-direct {v7, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/oneplus/battery/OpCBWarpChargingView$10;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    aput-object p0, v0, v2

    aput-object v1, v0, v4

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isSWarp()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

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

.method private preloadAnimationList(IIIZZ)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    const-string v1, "OpCBWarpChargingView"

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

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/oneplus/battery/OpChargingAnimationResHelper;->getAnimationRes(Landroid/content/Context;I)[I

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    array-length v0, p3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-static {p3, v0}, Lcom/oneplus/battery/OpChargingAnimationResHelper;->getAnimationRes(Landroid/content/Context;I)[I

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    array-length v0, p3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    :goto_0
    if-eqz p4, :cond_5

    const/4 p4, 0x0

    :goto_1
    array-length v4, v0

    if-ge p4, v4, :cond_5

    aget-object v4, v0, p4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ge p1, p2, :cond_7

    aget p4, p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v0, p1

    if-eqz p4, :cond_6

    :try_start_0
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    if-eqz p5, :cond_8

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/battery/OpCBWarpChargingView$15;

    invoke-direct {p2, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-boolean p2, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "preloadAnimationList: cost Time"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private refreshUI()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_background_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_background_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_background_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    const/16 v1, 0x438

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_body1:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_5
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_bottom_view_margin_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_bottom_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_7
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_arrow_view_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_arrow_view_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_arrow_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_9
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_b

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_battery_level_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_b
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_e
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_f
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_10
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_11
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    if-eqz p0, :cond_12

    sget-object v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    invoke-static {v0, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_12
    return-void
.end method

.method private releaseAnimationList()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpCBWarpChargingView"

    const-string v1, "releaseAnimationList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$16;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

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

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oneplus/battery/OpCBWarpChargingView$releaseBitmapTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/battery/OpCBWarpChargingView$releaseBitmapTask;-><init>(II[Landroid/graphics/Bitmap;)V

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

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->charging_state:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->charging_progress_top_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/battery/OpShadowView;

    iput-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_warp_charging_info_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_warp_charging_info_shadow_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/battery/OpShadowView;->setShadowLayer(FFFII)V

    sget v0, Lcom/android/systemui/R$id;->charging_progress_bottom_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/battery/OpShadowView;

    iput-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_charging_info_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_charging_info_shadow_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/battery/OpShadowView;->setShadowLayer(FFFII)V

    sget v0, Lcom/android/systemui/R$id;->arrow_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mArrowView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->battery_level_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->battery_level_percent_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    iget p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    const-string p3, "]"

    const-string v0, "OpCBWarpChargingView"

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

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
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    const-string p3, ".00"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->updateBatteryInfoView(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 1

    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevel:F

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevelNext:F

    iput-wide p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpDuration:J

    new-instance p2, Ljava/math/BigDecimal;

    float-to-double p3, p1

    invoke-direct {p2, p3, p4}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p3, 0x2

    const/4 p4, 0x4

    invoke-virtual {p2, p3, p4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\\."

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Update Swarp level ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OpCBWarpChargingView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    const/4 p4, 0x0

    aget-object p4, p2, p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    :cond_1
    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->updateBatteryInfoView(I)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 8

    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mCbAnimP1end:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/battery/OpCBWarpChargingView;->preloadAnimationList(IIIZZ)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$14;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    iget v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpCBWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    iget-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string p1, "startAnimation"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->genWarpAnimation()V

    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    iput-boolean v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "startAnimation / else / prepareAsset"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpCBWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_3

    const-string v1, "stop charging animation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    iget v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateBatteryInfoView(I)V
    .locals 7

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->op_cb_charged_info_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->op_cb_charging_info_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->op_cb_charged_info_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->op_cb_charging_info_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_1
    if-ne p1, v0, :cond_2

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->op_cb_warp_charging_animation_charging_state_charged:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->op_cb_warp_charging_animation_charging_state_charging:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_4
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_5
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_6
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    sget-object v2, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    mul-int v3, v1, p1

    div-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_7
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_8
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_9
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_a
    return-void
.end method
