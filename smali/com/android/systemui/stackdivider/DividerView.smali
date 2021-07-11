.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAdjustedForIme:Z

.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCallback:Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDividerInsets:I

.field mDividerPositionX:I

.field mDividerPositionY:I

.field private mDividerSize:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field mFirstLayout:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeStackResizable:Z

.field private mImeController:Lcom/android/systemui/stackdivider/DividerImeController;

.field private mIsInMinimizeInteraction:Z

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLongPressEntraceAnimDuration:I

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private mRemoved:Z

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private mSurfaceHidden:Z

.field private mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpValues:[F

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 79
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v3, 0x3f5eb852    # 0.87f

    const v4, 0x3f051eb8    # 0.52f

    const v5, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 284
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 135
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 136
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 138
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 139
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 140
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 141
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    .line 149
    new-instance p1, Landroid/animation/AnimationHandler;

    invoke-direct {p1}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimationHandler:Landroid/animation/AnimationHandler;

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstLayout:Z

    .line 166
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 167
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpValues:[F

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSurfaceHidden:Z

    .line 176
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance p2, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 247
    new-instance p2, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 254
    new-instance p2, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$gYHlgbXuNmQPZwegMVIGXJIPqrw;

    invoke-direct {p2, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$gYHlgbXuNmQPZwegMVIGXJIPqrw;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    .line 285
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p3, "display"

    .line 286
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 287
    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    .line 288
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimationHandler:Landroid/animation/AnimationHandler;

    new-instance p1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {p1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/SplitDisplayLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1027
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 1028
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1029
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int p0, v1, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v0

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1020
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 1021
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1022
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    add-int/2addr v0, p1

    invoke-virtual {p2, v1, p1, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 4

    .line 1249
    iget-object p3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 1250
    invoke-virtual {p3}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result p3

    const/4 v0, 0x0

    .line 1249
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 1254
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v2, 0x0

    if-gt p4, v1, :cond_0

    .line 1255
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1257
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    goto :goto_0

    .line 1259
    :cond_0
    iget-object p5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p5}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p5

    iget p5, p5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, p5, :cond_1

    .line 1260
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1261
    iget-object p5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p5}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1262
    iget-object p5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p5}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p5

    .line 1263
    iget v1, p5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v3, v1

    move-object v1, p5

    move p5, v3

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    move-object v1, v2

    :goto_0
    if-eqz v2, :cond_6

    cmpl-float v0, p3, v0

    if-lez v0, :cond_6

    .line 1266
    invoke-static {v1, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 1267
    invoke-static {p3, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result p3

    int-to-float p4, p5

    .line 1268
    iget p5, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v0, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr p5, v0

    int-to-float p5, p5

    mul-float/2addr p3, p5

    add-float/2addr p4, p3

    float-to-int p3, p4

    .line 1270
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    .line 1271
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 p4, 0x4

    if-eq p2, p4, :cond_2

    goto :goto_1

    .line 1286
    :cond_2
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int p2, p3, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p5

    add-int/2addr p3, p0

    .line 1287
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1278
    :cond_3
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int p2, p3, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p4

    add-int/2addr p3, p0

    .line 1279
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    sub-int p0, p3, p5

    .line 1282
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 1283
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    sub-int p0, p3, p4

    .line 1274
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 1275
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_1
    return-void
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4

    .line 1207
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1208
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1210
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 1212
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr p0, p2

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 1

    .line 1298
    sget-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    const/high16 v0, 0x40600000    # 3.5f

    div-float/2addr p0, v0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method private calculatePosition(II)I
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private calculatePositionForInsetBounds()I
    .locals 2

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wm/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result p0

    return p0
.end method

.method private calculateXPosition(I)I
    .locals 1

    .line 1012
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 1

    .line 1016
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 5

    .line 725
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 730
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    goto :goto_1

    .line 733
    :cond_3
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 736
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissOrMaximizeDocked(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V

    .line 737
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v2, 0x0

    .line 738
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 739
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 740
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 741
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return v1
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 1

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private fling(IFZZ)V
    .locals 2

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 583
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    if-ne v1, p3, :cond_0

    .line 585
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    :cond_0
    if-eqz p4, :cond_1

    .line 588
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_1
    const-wide/16 p3, 0x0

    .line 590
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 591
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float p1, p1

    iget p4, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float p4, p4

    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 592
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 597
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 598
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 600
    invoke-virtual {p0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 1

    .line 1217
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1221
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 1222
    sget-object p1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 608
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 610
    :cond_0
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting fling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v2

    .line 612
    iget p1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 613
    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 618
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 657
    new-instance p2, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {p2, p0, p3, p4, v0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/util/function/Consumer;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimationHandler:Landroid/animation/AnimationHandler;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    .line 684
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private getWindowSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2

    .line 882
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 885
    sget-boolean p0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DividerView"

    const-string v0, "getWindowSurfaceControl, root null"

    .line 886
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 891
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 892
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method private inSplitMode()Z
    .locals 0

    .line 387
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializeSurfaceState()V
    .locals 7

    .line 790
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 792
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->resizeSplits(I)V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 794
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    .line 796
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 797
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 798
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 800
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    .line 801
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v4, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v3, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 807
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v1, 0x0

    .line 808
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 809
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 810
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 817
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v4, v4, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 818
    invoke-virtual {v4}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 819
    :goto_1
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 822
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 823
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 822
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 824
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method private isDismissTargetPrimary(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 2

    .line 1316
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1318
    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 1309
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private synthetic lambda$enterSplitMode$4()V
    .locals 2

    .line 860
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 865
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 866
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$getFlingAnimator$2(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 613
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    .line 614
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 616
    :cond_0
    iget p1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    :goto_0
    const/4 p3, 0x0

    .line 613
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$getFlingAnimator$3(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V
    .locals 3

    .line 619
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End Fling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    .line 622
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz p2, :cond_1

    .line 623
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    .line 625
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result p2

    .line 626
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    const/4 v2, 0x0

    .line 628
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 629
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 630
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 632
    iget p2, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-static {p2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyResizeSplits(ILcom/android/systemui/stackdivider/SplitDisplayLayout;)V

    .line 634
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mCallback:Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;

    if-eqz p2, :cond_3

    .line 635
    invoke-interface {p2}, Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;->onDraggingEnd()V

    .line 639
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-nez p2, :cond_5

    .line 644
    iget p2, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gez p2, :cond_4

    .line 645
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 649
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p2

    .line 650
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v0, v1, :cond_5

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 651
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v0, p2, :cond_5

    .line 652
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 655
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->notifySplitScreenBoundsChanged()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpValues:[F

    invoke-interface {v0, p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setScreenMatrix([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$onRecentsDrawn$5(I)V
    .locals 9

    .line 1397
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v4, v0

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0xc8

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private synthetic lambda$setHidden$1(Z)V
    .locals 2

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "DividerView"

    const-string p1, "setHidden, SurfaceControl null"

    .line 405
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mImeController:Lcom/android/systemui/stackdivider/DividerImeController;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/stackdivider/DividerImeController;->setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 416
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 417
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private liftBackground()V
    .locals 4

    .line 746
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const v1, 0x3fb33333    # 1.4f

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 754
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 755
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 756
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v3, v3

    .line 757
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 763
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 764
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    .line 765
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    .line 767
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4

    .line 550
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/16 v1, 0x186

    if-ne p1, v0, :cond_0

    .line 551
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 552
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    .line 551
    invoke-static {p1, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 556
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 557
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result p0

    .line 556
    invoke-static {p1, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/16 v1, 0x185

    if-ne p1, v0, :cond_2

    .line 561
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v0, :cond_4

    .line 564
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 565
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 564
    :goto_0
    invoke-static {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 569
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 570
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    .line 569
    :cond_5
    invoke-static {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_6
    :goto_1
    return-void
.end method

.method private notifySplitScreenBoundsChanged()V
    .locals 5

    .line 689
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 700
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v2, v2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 705
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 714
    :goto_1
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    .line 715
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifySplitScreenBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private releaseBackground()V
    .locals 5

    .line 771
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 775
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 776
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 777
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 778
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 782
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 783
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 784
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    .line 786
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private repositionSnapTargetBeforeMinimized()V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    .line 994
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v1

    goto :goto_0

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 999
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 1000
    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method

.method private resetBackground()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 982
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 984
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    if-nez p5, :cond_1

    move-object p5, p4

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1053
    iget v0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    .line 1054
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    .line 1056
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resizing split surfaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimarySurface:Landroid/view/SurfaceControl;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1062
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1063
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    .line 1064
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    neg-int p2, p2

    .line 1063
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1065
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p2, p2, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1066
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p2, p2, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    iget p3, p5, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v1, p5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1067
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1068
    iget p2, p5, Landroid/graphics/Rect;->left:I

    iget p3, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    neg-int p2, p2

    iget p3, p5, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    neg-int p3, p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1070
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p2, p2, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1071
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1073
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    .line 1074
    iget p3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    iget p5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1076
    :cond_4
    iget p3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    iget p5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1079
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1080
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1081
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1040
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    .line 1232
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1235
    :cond_0
    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1236
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1237
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2

    .line 973
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 974
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float p1, p1

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result p0

    goto :goto_0

    .line 976
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    iput p1, v0, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    return-void
.end method

.method private stopDragging()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method private updateDockSide()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 477
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    return-void
.end method


# virtual methods
.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 7

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 1035
    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1034
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method enterSplitMode(Z)V
    .locals 1

    .line 859
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$j0_a3lVKLSVmfH3PyfTxFs9nesg;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$j0_a3lVKLSVmfH3PyfTxFs9nesg;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 869
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 870
    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 871
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    .line 872
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    :cond_0
    return-void
.end method

.method exitSplitMode()V
    .locals 2

    .line 900
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 905
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 907
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 908
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-static {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyResizeSplits(ILcom/android/systemui/stackdivider/SplitDisplayLayout;)V

    return-void
.end method

.method finishAnimations()V
    .locals 0

    .line 942
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 943
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionY:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionX:I

    :goto_0
    return p0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    goto :goto_0

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Lcom/android/systemui/stackdivider/DividerImeController;Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 366
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    .line 367
    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerView;->mCallback:Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;

    .line 368
    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    .line 369
    iput-object p5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 370
    iput-object p6, p0, Lcom/android/systemui/stackdivider/DividerView;->mImeController:Lcom/android/systemui/stackdivider/DividerImeController;

    .line 371
    iput-object p7, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 373
    iget p1, p2, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 375
    invoke-virtual {p5}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    goto :goto_0

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->repositionSnapTargetBeforeMinimized()V

    :goto_0
    return-void
.end method

.method isHidden()Z
    .locals 0

    .line 422
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSurfaceHidden:Z

    return p0
.end method

.method public isHorizontalDivision()Z
    .locals 1

    .line 1008
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$enterSplitMode$4$DividerView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$enterSplitMode$4()V

    return-void
.end method

.method public synthetic lambda$getFlingAnimator$2$DividerView(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$2(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$getFlingAnimator$3$DividerView(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$3(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$new$0$DividerView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$onRecentsDrawn$5$DividerView(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$onRecentsDrawn$5(I)V

    return-void
.end method

.method public synthetic lambda$setHidden$1$DividerView(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$setHidden$1(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 320
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 323
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_0
    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstLayout:Z

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 11

    const/4 v0, 0x3

    .line 1337
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1338
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 1339
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1338
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 1340
    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    .line 1341
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v9

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 1340
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 989
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onDividerRemoved()V
    .locals 1

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCallback:Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSurfaceHidden:Z

    return-void
.end method

.method onDockedFirstAnimationFrame()V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method onDockedTopTask()V
    .locals 4

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    const/4 v2, 0x1

    .line 1377
    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    .line 1378
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1379
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1380
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 1382
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->calculatePositionForInsetBounds()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 1383
    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 1384
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    const/4 v3, 0x0

    .line 1382
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 294
    sget v0, Lcom/android/systemui/R$id;->docked_divider_handle:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 295
    sget v0, Lcom/android/systemui/R$id;->docked_divider_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    .line 296
    sget v0, Lcom/android/systemui/R$id;->minimized_dock_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 302
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->docked_stack_divider_lift_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    .line 305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->long_press_dock_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    .line 307
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->recents_grow_in_multiwindow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 308
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    .line 309
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const/16 v0, 0x3f6

    goto :goto_1

    :cond_1
    const/16 v0, 0x3f7

    :goto_1
    invoke-static {v2, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 339
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 340
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstLayout:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSurfaceState()V

    .line 343
    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFirstLayout:Z

    .line 347
    :cond_0
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_1

    .line 348
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    if-ne p2, p4, :cond_2

    .line 350
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_0
    move v1, p3

    move p3, p2

    move p2, v1

    goto :goto_1

    :cond_2
    const/4 p4, 0x3

    if-ne p2, p4, :cond_3

    .line 352
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    goto :goto_0

    :cond_3
    move p2, p3

    .line 354
    :goto_1
    iget-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 355
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 354
    invoke-virtual {p4, p3, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->notifySplitScreenBoundsChanged()V

    :cond_4
    return-void
.end method

.method onRecentsDrawn()V
    .locals 6

    .line 1389
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1390
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->calculatePositionForInsetBounds()I

    move-result v1

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1392
    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;-><init>(Lcom/android/systemui/stackdivider/DividerView;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v2, :cond_2

    .line 1403
    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1404
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCallback:Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;

    if-eqz v0, :cond_1

    .line 1406
    invoke-interface {v0}, Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;->growRecents()V

    .line 1408
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    const-wide/16 v3, 0x150

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 495
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    .line 496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    goto/16 :goto_2

    .line 513
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 514
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 515
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-gt v2, v3, :cond_2

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v2, v3, :cond_3

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 519
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    .line 520
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 521
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 522
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 524
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_2

    .line 533
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 535
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 536
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 538
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result p1

    .line 540
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    goto :goto_1

    .line 541
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 540
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 543
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    :cond_7
    :goto_2
    return v1

    .line 499
    :cond_8
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 500
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 501
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 502
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 503
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result p1

    if-nez p1, :cond_9

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    .line 509
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    .line 510
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    return p1
.end method

.method onUndockingTask()V
    .locals 11

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    .line 1415
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->inSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1416
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1417
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v0, 0x1

    .line 1422
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 1423
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    .line 1424
    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1044
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V
    .locals 13

    move-object v6, p0

    move v7, p1

    move v0, p2

    move-object/from16 v8, p3

    .line 1103
    iget-boolean v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    if-eqz v1, :cond_0

    return-void

    .line 1107
    :cond_0
    iget v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1108
    iget v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1111
    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-nez v1, :cond_1

    return-void

    .line 1116
    :cond_1
    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1117
    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 v1, 0x0

    if-nez p4, :cond_3

    const/4 v2, 0x1

    move v9, v2

    goto :goto_0

    :cond_3
    move v9, v1

    :goto_0
    if-eqz v9, :cond_4

    .line 1121
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_4
    move-object/from16 v10, p4

    .line 1122
    :goto_1
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1123
    iget-boolean v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_7

    .line 1124
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1126
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1127
    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1126
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1130
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v3, :cond_5

    .line 1131
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    neg-int v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1134
    :cond_5
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v9, :cond_6

    .line 1136
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1137
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v0, v10}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_6
    return-void

    .line 1142
    :cond_7
    iget-boolean v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    const v4, 0x7fffffff

    if-eqz v2, :cond_9

    if-eq v0, v4, :cond_9

    .line 1143
    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1146
    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v2, v3, :cond_8

    .line 1147
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    neg-int v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1150
    :cond_8
    iget v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1152
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 1153
    :cond_9
    iget-boolean v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v2, :cond_b

    if-eq v0, v4, :cond_b

    .line 1154
    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1155
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1156
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1157
    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1156
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1158
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1159
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 1162
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v3, :cond_a

    .line 1163
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v2, v7

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1165
    :cond_a
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_b
    if-eq v0, v4, :cond_d

    .line 1167
    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1169
    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1170
    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1171
    invoke-direct {p0, p2, v2, v8}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    .line 1173
    invoke-direct {p0, p2, v11, v8}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v12

    .line 1174
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1175
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v12, v11, v0}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1176
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v2, v2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 1177
    invoke-virtual {v3}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v3

    .line 1176
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1178
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1179
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1180
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1181
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1182
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1183
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1184
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1186
    :cond_c
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1187
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1189
    :goto_2
    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object v0, p0

    move-object/from16 v3, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1191
    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move v2, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1193
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1195
    :cond_d
    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1197
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1198
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    .line 1199
    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->isDismissTargetPrimary(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v0

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    if-eqz v9, :cond_e

    .line 1201
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1202
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v0, v10}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_e
    return-void
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4

    .line 948
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 953
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 954
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 955
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 957
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 958
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 959
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    .line 960
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-nez p1, :cond_4

    .line 963
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 965
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 966
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 967
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 968
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 969
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void
.end method

.method setHidden(Z)V
    .locals 2

    .line 393
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHidden, hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceHidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSurfaceHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSurfaceHidden:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 400
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSurfaceHidden:Z

    .line 401
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;-><init>(Lcom/android/systemui/stackdivider/DividerView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMinimizedDockStack(ZJZ)V
    .locals 8

    .line 913
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMinDock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    .line 915
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 916
    iget-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq p4, p1, :cond_3

    const/4 p4, 0x1

    .line 917
    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    .line 918
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz p1, :cond_1

    .line 920
    iget-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget p4, p4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result p4

    :goto_0
    move v1, p4

    if-eqz p1, :cond_2

    .line 924
    iget-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    .line 923
    invoke-virtual {p4, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p4

    .line 924
    invoke-virtual {p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p4

    goto :goto_1

    .line 925
    :cond_2
    iget-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    :goto_1
    move-object v2, p4

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, p2

    .line 919
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    const/4 p4, 0x0

    .line 927
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    :cond_3
    if-nez p1, :cond_4

    .line 930
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 932
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 933
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 934
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 935
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 829
    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    .line 830
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    if-nez p1, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 834
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 835
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq p2, p1, :cond_5

    .line 836
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 837
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object p2, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p2}, Lcom/android/systemui/wm/DisplayLayout;->rotation()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 840
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->repositionSnapTargetBeforeMinimized()V

    .line 842
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-ne p2, p1, :cond_3

    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    .line 843
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    if-eqz p1, :cond_4

    .line 846
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 847
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    .line 848
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    .line 849
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 848
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    .line 851
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    .line 852
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    :cond_5
    :goto_1
    return-void
.end method

.method setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V
    .locals 0

    .line 1086
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimaryDim:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondaryDim:Landroid/view/SurfaceControl;

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "DividerView"

    const-string/jumbo p1, "setResizeDimLayer SurfaceControl is null."

    .line 1089
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const p2, 0x3a83126f    # 0.001f

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_2

    .line 1094
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1096
    :cond_2
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1097
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    return-void
.end method

.method public startDragging(ZZ)Z
    .locals 2

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 432
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    if-eqz p2, :cond_1

    .line 434
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mCallback:Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;

    if-eqz p1, :cond_2

    .line 438
    invoke-interface {p1}, Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;->onDraggingStart()V

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->inSplitMode()Z

    move-result p0

    return p0
.end method

.method public stopDragging(IFZZ)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    .line 447
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 464
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 465
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 10

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v9, p5

    .line 453
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 10

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v7, p6

    move-object v9, p5

    .line 458
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method
