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

    .line 48
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 89
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 100
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    .line 102
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 103
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 105
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 110
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    .line 114
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    .line 118
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 130
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    .line 131
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 p3, 0x0

    .line 141
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    .line 142
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    .line 144
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 145
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    const/16 p2, 0xb

    .line 160
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    const/16 p2, 0x18

    .line 161
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    const/16 p2, 0x4a

    .line 162
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    const/16 p2, 0x59

    .line 163
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    const/16 p2, 0x57

    .line 164
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    const/16 p2, 0x63

    .line 165
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    .line 173
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpSWarpChargingView;II[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseBitmap(II[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpSWarpChargingView;IIIZZ)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/battery/OpSWarpChargingView;->preloadAnimationList(IIIZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    return p0
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p0
.end method

.method static synthetic access$2402(Lcom/oneplus/battery/OpSWarpChargingView;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/oneplus/battery/OpSWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$3302(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->combineWarpAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oneplus/battery/OpSWarpChargingView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$902(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 3

    .line 1242
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

    .line 1243
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1245
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1246
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1247
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1248
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1249
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1251
    iget p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const/4 v1, 0x0

    .line 1252
    iput v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    .line 1253
    invoke-virtual {p0, p1, v1, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 1255
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v2, 0x67

    .line 1256
    invoke-interface {p1, v2}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    .line 1259
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    .line 1260
    iput v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 1261
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    .line 1262
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1263
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1267
    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    .line 1268
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1269
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1270
    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1274
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private combineWarpAnimation()V
    .locals 4

    .line 1018
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    .line 1019
    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$22;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$22;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1042
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->op_swarp_animation_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->op_warp_animation_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1048
    :goto_0
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1052
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

    .line 1053
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

    .line 1054
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

    .line 1049
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

    .line 910
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    .line 911
    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 912
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 913
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 912
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 914
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$16;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 923
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 924
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 925
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 926
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 927
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 926
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 928
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$17;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 951
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$18;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 964
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 965
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 966
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 967
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 968
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 967
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$19;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$19;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 979
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$20;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$20;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1001
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    .line 1002
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1003
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

    .line 444
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

    .line 445
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4FrameEnd:I

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3FrameEnd:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x26

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$1;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v5, 0xff

    int-to-long v5, v5

    .line 462
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$2;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/16 v6, 0x140

    int-to-long v6, v6

    .line 473
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$3;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpSWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 485
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 486
    sget-object v9, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 490
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

    .line 491
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4WarpFrameEnd:I

    iget v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    sub-int/2addr v5, v9

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x26

    int-to-long v9, v5

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 507
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 508
    sget-object v9, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v10, Lcom/android/systemui/R$integer;->op_control_time_225:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 509
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 510
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 509
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    new-instance v9, Lcom/oneplus/battery/OpSWarpChargingView$5;

    invoke-direct {v9, p0}, Lcom/oneplus/battery/OpSWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
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

    .line 524
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    iget v10, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    iget v11, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x26

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 527
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/oneplus/battery/OpSWarpChargingView$6;

    invoke-direct {v10, p0}, Lcom/oneplus/battery/OpSWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/oneplus/battery/OpSWarpChargingView$7;

    invoke-direct {v10, p0, v1, v8}, Lcom/oneplus/battery/OpSWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
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

    .line 612
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 613
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    iget v8, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP3WarpFrameEnd:I

    iget v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x26

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 615
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$8;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpSWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 634
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$9;

    invoke-direct {v8, p0, v2, v5}, Lcom/oneplus/battery/OpSWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
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

    .line 699
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 700
    iget v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP2FrameEnd:I

    iget v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x26

    int-to-long v8, v2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 702
    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$10;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 715
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v5, 0xbe

    int-to-long v8, v5

    .line 716
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 717
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$11;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 728
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 729
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 730
    new-instance v6, Lcom/oneplus/battery/OpSWarpChargingView$12;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpSWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 739
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 740
    sget-object v7, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 741
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 743
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v1, v5, v4

    aput-object v6, v5, v3

    .line 744
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 745
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$13;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 818
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [I

    aput v4, v0, v4

    iget v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    .line 819
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 820
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP1FrameEnd:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x26

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 822
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$14;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 836
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$15;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 904
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 905
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

    .line 1297
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

    .line 1301
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    const-string v1, "persist.test.warp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    iget v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 1302
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 1303
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

    .line 1114
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    const-string v1, "OpSWarpChargingView"

    if-eqz v0, :cond_0

    .line 1115
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

    .line 1121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    .line 1141
    sget-object p3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warpcharge_wired_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 1142
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1143
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1126
    :cond_2
    sget-object p3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->swarpcharge_wired_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 1127
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1128
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    .line 1130
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1133
    :cond_4
    sget-object p3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warpcharge_wireless_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 1134
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 1135
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    .line 1137
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    :goto_0
    const/4 v4, 0x0

    if-eqz p4, :cond_7

    move p4, v4

    .line 1150
    :goto_1
    array-length v5, v0

    if-ge p4, v5, :cond_7

    .line 1151
    aget-object v5, v0, p4

    if-eqz v5, :cond_6

    .line 1153
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-ge p1, p2, :cond_9

    .line 1159
    invoke-virtual {p3, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 1161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p4

    .line 1162
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1163
    aput-object v5, v0, p1

    if-eqz p4, :cond_8

    .line 1166
    :try_start_0
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1174
    :cond_9
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p5, :cond_a

    .line 1177
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/battery/OpSWarpChargingView$25;

    invoke-direct {p2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$25;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 1199
    sget-boolean p2, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p2, :cond_b

    .line 1200
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

    .line 247
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 249
    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 250
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    const/16 v1, 0x438

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 254
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 255
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 254
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    .line 257
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 256
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 262
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 263
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 262
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    .line 266
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 265
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 270
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 271
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 270
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    .line 273
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 272
    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 277
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 278
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2_swarp_charging_padding:I

    .line 280
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 279
    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 283
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 284
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 283
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 287
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 288
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 287
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 291
    :cond_6
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 292
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_warp_text_size:I

    .line 293
    invoke-static {v0, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    int-to-float v0, v0

    .line 292
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    return-void
.end method

.method private releaseAnimationList()V
    .locals 4

    .line 1206
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSWarpChargingView"

    const-string v1, "releaseAnimationList()"

    .line 1207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1212
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1213
    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1214
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 1216
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1222
    :goto_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 1223
    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1231
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$26;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$26;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseBitmap(II[Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1308
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

    .line 1309
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1310
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1313
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

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify Warp Charging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 198
    sget v0, Lcom/android/systemui/R$id;->info_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 200
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 203
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 204
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 207
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 212
    sget v0, Lcom/android/systemui/R$id;->warp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    .line 214
    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 215
    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    .line 216
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 219
    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    .line 220
    sget v0, Lcom/android/systemui/R$id;->battery_level_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    .line 221
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    .line 222
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    .line 223
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 225
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    .line 229
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    .line 305
    iget p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const-string p3, "]"

    const-string v0, "OpSWarpChargingView"

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 306
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 307
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

    .line 311
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    .line 315
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 322
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 234
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    .line 329
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    .line 330
    iput-wide p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 240
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    .line 1061
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1062
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

    .line 1065
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    .line 1068
    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    .line 1069
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    .line 1071
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 1073
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$23;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$23;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1083
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    .line 1089
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1090
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

    .line 1092
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1093
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 1095
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1096
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1099
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

    .line 299
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    .line 336
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 337
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpSWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    .line 347
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 348
    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string p1, "startAnimation"

    .line 349
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->genWarpAnimation()V

    .line 355
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 361
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    .line 362
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    .line 365
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 368
    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "startAnimation / else / prepareAsset"

    .line 369
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 374
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 376
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 377
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 382
    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 384
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 396
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpSWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    .line 397
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 405
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_5

    const-string v1, "stop charging animation"

    .line 406
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    .line 409
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 427
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 423
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 415
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 418
    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 411
    :cond_4
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    :goto_0
    return-void
.end method
