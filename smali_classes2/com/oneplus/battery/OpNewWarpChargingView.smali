.class public Lcom/oneplus/battery/OpNewWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpNewWarpChargingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field static final DEBUG:Z

.field private static final WARP_ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryLevelViewContainer:Landroid/view/View;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3repeatCount:I

.field private mChargingAnimP3repeatMaxCount:I

.field mChargingAnimationAssets:[Landroid/graphics/Bitmap;

.field private mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

.field private mChargingP1FrameEnd:I

.field private mChargingP2FrameEnd:I

.field private mChargingP3FrameEnd:I

.field private mChargingP4FrameEnd:I

.field private mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mInfoViewContainer:Landroid/widget/RelativeLayout;

.field private mIsAnimationPlaying:Z

.field private mIsPaddingStartAnimation:Z

.field private mIsWarpAnimRunning:Z

.field private mIsWarpAnimStart:Z

.field private mKeyguardShowing:Z

.field private mNowPlaying:I

.field private mPrevLevel:I

.field private mWarpAnimation:Landroid/animation/AnimatorSet;

.field mWarpAnimationAssets:[Landroid/graphics/Bitmap;

.field private mWarpFrameEnd:I

.field private mWarpView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->WARP_ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpNewWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 88
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    .line 100
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    .line 101
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    .line 103
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 108
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    .line 113
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    .line 114
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    .line 119
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    .line 131
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    .line 132
    iput p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mNowPlaying:I

    .line 138
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    const/16 p2, 0xb

    .line 142
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP1FrameEnd:I

    const/16 p2, 0x18

    .line 143
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP2FrameEnd:I

    const/16 p2, 0x4a

    .line 144
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP3FrameEnd:I

    const/16 p2, 0x59

    .line 145
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP4FrameEnd:I

    const/16 p2, 0x46

    .line 146
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpFrameEnd:I

    const/4 p2, 0x2

    .line 153
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatMaxCount:I

    .line 158
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatMaxCount:I

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP2FrameEnd:I

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP3FrameEnd:I

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpNewWarpChargingView;II[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/battery/OpNewWarpChargingView;->releaseBitmap(II[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP4FrameEnd:I

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpNewWarpChargingView;IIIZZ)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/battery/OpNewWarpChargingView;->preloadAnimationList(IIIZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP1FrameEnd:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/battery/OpNewWarpChargingView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$2100()Landroid/content/res/Resources;
    .locals 1

    .line 46
    sget-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpNewWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpFrameEnd:I

    return p0
.end method

.method static synthetic access$2700(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$2802(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpNewWarpChargingView;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    return p0
.end method

.method static synthetic access$512(Lcom/oneplus/battery/OpNewWarpChargingView;I)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oneplus/battery/OpNewWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->getWarpAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 2

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationEnd from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpNewWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 1026
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1028
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1029
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1030
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1031
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1032
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1033
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v1, 0x67

    .line 1034
    invoke-interface {p1, v1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    :cond_0
    const/4 p1, 0x0

    .line 1037
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    .line 1038
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    .line 1039
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    .line 1040
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    .line 1043
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    .line 1044
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1045
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1046
    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1050
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 11

    .line 408
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP3FrameEnd:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP4FrameEnd:I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 409
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP4FrameEnd:I

    iget v5, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP3FrameEnd:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v3

    const/16 v5, 0x26

    mul-int/2addr v2, v5

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 412
    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$1;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v6, 0xff

    int-to-long v6, v6

    .line 426
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 427
    new-instance v6, Lcom/oneplus/battery/OpNewWarpChargingView$2;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v6, v0, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const/16 v7, 0x140

    int-to-long v7, v7

    .line 437
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    new-instance v9, Lcom/oneplus/battery/OpNewWarpChargingView$3;

    invoke-direct {v9, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 450
    sget-object v10, Lcom/oneplus/battery/OpNewWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 453
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v1, v6, v4

    aput-object v9, v6, v3

    .line 454
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 455
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$4;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP2FrameEnd:I

    add-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP3FrameEnd:I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    .line 482
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 483
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP3FrameEnd:I

    iget v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP2FrameEnd:I

    sub-int/2addr v2, v6

    add-int/2addr v2, v3

    mul-int/2addr v2, v5

    int-to-long v9, v2

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 485
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$5;

    invoke-direct {v2, p0, v5}, Lcom/oneplus/battery/OpNewWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$6;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP1FrameEnd:I

    add-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP2FrameEnd:I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 579
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP2FrameEnd:I

    iget v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP1FrameEnd:I

    sub-int/2addr v2, v6

    add-int/2addr v2, v3

    mul-int/2addr v2, v5

    int-to-long v9, v2

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 582
    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$7;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 595
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v6, 0xbe

    int-to-long v9, v6

    .line 596
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 597
    new-instance v6, Lcom/oneplus/battery/OpNewWarpChargingView$8;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v6, v0, [F

    fill-array-data v6, :array_3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 609
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 610
    new-instance v7, Lcom/oneplus/battery/OpNewWarpChargingView$9;

    invoke-direct {v7, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 619
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 620
    sget-object v8, Lcom/oneplus/battery/OpNewWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 623
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v1, v6, v4

    aput-object v7, v6, v3

    .line 624
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 625
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$10;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 670
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [I

    aput v4, v0, v4

    iget v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP1FrameEnd:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    .line 671
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 672
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingP1FrameEnd:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v5

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 674
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$11;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 749
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 750
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

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
        0x3e75c28f    # 0.24f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_3
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getWarpAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    .line 757
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput v3, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 758
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 759
    iget-object v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 761
    new-instance v3, Lcom/oneplus/battery/OpNewWarpChargingView$13;

    invoke-direct {v3, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 773
    new-instance v3, Lcom/oneplus/battery/OpNewWarpChargingView$14;

    invoke-direct {v3, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 795
    sget-object v3, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_view_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    .line 796
    sget-object v5, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_container_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v5

    .line 797
    iget-object v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTranslationY()F

    move-result v6

    .line 798
    iget-object v7, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v7

    .line 799
    new-instance v8, Landroid/animation/ValueAnimator;

    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v8, v0, [F

    const/4 v9, 0x0

    aput v9, v8, v2

    sub-int/2addr v3, v5

    div-int/2addr v3, v0

    int-to-float v3, v3

    sub-float v3, v6, v3

    aput v3, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 800
    sget-object v5, Lcom/oneplus/battery/OpNewWarpChargingView;->WARP_ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x1a9

    .line 801
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 802
    new-instance v5, Lcom/oneplus/battery/OpNewWarpChargingView$15;

    invoke-direct {v5, p0, v6, v7}, Lcom/oneplus/battery/OpNewWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;FF)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 811
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v2

    aput-object v1, v0, v4

    .line 812
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 813
    new-instance v0, Lcom/oneplus/battery/OpNewWarpChargingView$16;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5
.end method

.method private preloadAnimationList(IIIZZ)V
    .locals 6

    .line 901
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    const-string v1, "OpNewWarpChargingView"

    if-eqz v0, :cond_0

    .line 902
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

    .line 908
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    .line 928
    sget-object p3, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warpcharge_wired_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 929
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 930
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 913
    :cond_2
    sget-object p3, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warp_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 914
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 915
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 920
    :cond_4
    sget-object p3, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->warpcharge_wireless_anim:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 921
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 922
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    .line 924
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    :goto_0
    const/4 v4, 0x0

    if-eqz p4, :cond_7

    move p4, v4

    .line 937
    :goto_1
    array-length v5, v0

    if-ge p4, v5, :cond_7

    .line 938
    aget-object v5, v0, p4

    if-eqz v5, :cond_6

    .line 940
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-ge p1, p2, :cond_9

    .line 946
    invoke-virtual {p3, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 948
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p4

    .line 949
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 950
    aput-object v5, v0, p1

    if-eqz p4, :cond_8

    .line 953
    :try_start_0
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 961
    :cond_9
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p5, :cond_a

    .line 964
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/battery/OpNewWarpChargingView$19;

    invoke-direct {p2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$19;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 985
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 986
    sget-boolean p2, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz p2, :cond_b

    .line 987
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
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 229
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 240
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 248
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_text_padding_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    .line 252
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    .line 263
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_text_image_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 264
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_text_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 266
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_warp_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 270
    :cond_6
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method private releaseAnimationList()V
    .locals 4

    .line 993
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpNewWarpChargingView"

    const-string v1, "releaseAnimationList()"

    .line 994
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    move v1, v0

    .line 999
    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1000
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1002
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1007
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 1009
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1014
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$20;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$20;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseBitmap(II[Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1076
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

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1078
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1081
    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;-><init>(II[Landroid/graphics/Bitmap;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public notifyWarpCharging()V
    .locals 2

    .line 1068
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    if-nez v0, :cond_0

    const-string v0, "OpNewWarpChargingView"

    const-string v1, " notifyWarpCharging"

    .line 1069
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1070
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 183
    sget v0, Lcom/android/systemui/R$id;->info_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 185
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 189
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 192
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 193
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 195
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 197
    sget v0, Lcom/android/systemui/R$id;->warp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 200
    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    .line 207
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 282
    iget p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mPrevLevel:I

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 287
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mPrevLevel:I

    .line 291
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 212
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 213
    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    .line 846
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    .line 853
    iget-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    .line 854
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    .line 856
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    .line 858
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/battery/OpNewWarpChargingView$17;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 870
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    .line 876
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 880
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    .line 882
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 883
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$18;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    .line 300
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 301
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    .line 306
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isChargingAnimP3RepeatCOUNT_4()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 307
    iput v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatMaxCount:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 309
    iput v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatMaxCount:I

    .line 317
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpNewWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_3

    .line 319
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 320
    iget-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_6

    const-string p1, "startAnimation"

    .line 321
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_1

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 331
    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    .line 332
    iput-boolean v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    .line 335
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 338
    :cond_3
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "startAnimation / else / prepareAsset"

    .line 339
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 344
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    .line 347
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    .line 352
    :cond_5
    iput-boolean v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 354
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->prepareAsset(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    .line 366
    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpNewWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    .line 367
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 375
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_4

    const-string v1, "stop charging animation"

    .line 376
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    .line 379
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 387
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 384
    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 381
    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method
