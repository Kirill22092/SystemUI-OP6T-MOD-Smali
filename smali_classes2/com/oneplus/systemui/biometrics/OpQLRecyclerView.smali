.class public Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QuickPayConfigUpdater;,
        Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;,
        Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;
    }
.end annotation


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field protected mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

.field private mAnimate:Z

.field mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBarPosition:I

.field private mCancelFalseRunnable:Ljava/lang/Runnable;

.field private mCheckNextScroll:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mEnterAnimator:Landroid/animation/ValueAnimator;

.field private mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

.field private mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

.field private mInitialized:Z

.field private mIsCancel:Z

.field private mIsQLExit:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLastScrollTime:J

.field mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

.field private mLeaveAnimator:Landroid/animation/ValueAnimator;

.field private mPadding:I

.field private mPosition:I

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mScrollSpeed:F

.field private mScrollToPosition:Ljava/lang/Runnable;

.field private mVibTime:I

.field private mView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 462
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 463
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 464
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    .line 74
    new-instance p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    const/4 p2, 0x0

    .line 78
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    const/high16 v0, 0x43160000    # 150.0f

    .line 79
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollSpeed:F

    .line 80
    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    .line 81
    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mInitialized:Z

    const/4 v0, 0x3

    .line 82
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mBarPosition:I

    .line 83
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPadding:I

    .line 87
    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAnimate:Z

    .line 89
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mVibTime:I

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLastScrollTime:J

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    .line 101
    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsQLExit:Z

    .line 126
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/os/Handler;)V

    .line 202
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLRecyclerView$wbTw-T-uK67VMzbDKJUkv0L2hdc;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLRecyclerView$wbTw-T-uK67VMzbDKJUkv0L2hdc;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    .line 604
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLRecyclerView$j9NxWBPkTr_qjJfr1ooqs-rzI14;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLRecyclerView$j9NxWBPkTr_qjJfr1ooqs-rzI14;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCancelFalseRunnable:Ljava/lang/Runnable;

    .line 110
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-direct {v0, p0, p1, p2, p2}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    .line 114
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpQLHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    .line 117
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getQLApps()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v0, 0x6

    .line 120
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    const/high16 p1, 0x100000

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDrawingCacheQuality(I)V

    .line 123
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mVibTime:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mVibTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->vibrate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPadding:I

    return p0
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;FZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->cancelAnimation(FZ)V

    return-void
.end method

.method static synthetic access$1402(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Lcom/oneplus/systemui/biometrics/OpQLHelper;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsQLExit:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mBarPosition:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->scrollToPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->updateViewScale()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->updateLabel()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollSpeed:F

    return p0
.end method

.method private cancelAnimation(FZ)V
    .locals 7

    .line 500
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->getIconPadding()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->getIconPadding()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 501
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 502
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v5, v0

    .line 504
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 505
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 506
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, p1, v4

    add-float v6, v5, v2

    .line 509
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 510
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    add-float/2addr v5, v4

    .line 513
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 518
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iget v0, p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->xAfter:F

    iget v1, p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->xBefore:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 519
    iget-object p1, p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr p1, v0

    .line 521
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    float-to-int p1, p1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    invoke-virtual {p2, p1, v0, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_2
    return-void
.end method

.method private checkBarPosition(F)I
    .locals 1

    const/4 p0, 0x6

    :goto_0
    if-ltz p0, :cond_1

    int-to-float v0, p0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->scrollToPosition()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 605
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "mCancelFalseRunnable"

    .line 606
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-static {v1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 154
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 155
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mInitialized:Z

    return-void
.end method

.method private scrollToPosition()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method private updateLabel()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    .line 490
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLabel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateViewScale()V
    .locals 9

    .line 357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    .line 363
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 364
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 365
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float v5, v0, v5

    .line 366
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, -0x41570a3e    # -0.32999998f

    const/4 v7, 0x0

    sub-float/2addr v5, v7

    mul-float/2addr v6, v5

    sub-float v5, v2, v7

    div-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v6, v5

    .line 369
    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_0

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateViewScale mIsCancel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "QuickLaunch.QLRecyclerView"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-boolean v7, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    const/high16 v8, 0x3f000000    # 0.5f

    if-nez v7, :cond_2

    .line 373
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    .line 374
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    const v7, 0x3f666666    # 0.9f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 377
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 383
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const v5, 0x3f2b851f    # 0.67f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private vibrate()V
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 471
    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mVibTime:I

    if-eqz v1, :cond_0

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x14

    :goto_0
    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 476
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportLinearVibration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    const/16 v1, 0x3f3

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    goto :goto_1

    .line 479
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportZVibrationMotor()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 480
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 481
    sget-object v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_1

    .line 483
    :cond_2
    sget-object p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$1$OpQLRecyclerView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$new$2$OpQLRecyclerView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->lambda$new$2()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$OpQLRecyclerView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->lambda$onFinishInflate$0()V

    return-void
.end method

.method public launch()V
    .locals 8

    .line 301
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 303
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/systemui/OpSystemUIInjector;->addAppLockerPassedPackage(Ljava/lang/String;)Z

    .line 318
    iget-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v3, "OpenApp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 323
    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 325
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 328
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 329
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v7, v3

    move v3, v2

    move v2, v5

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v3

    .line 332
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    iget-object v6, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 333
    invoke-static {v0, v3, v4, v2, v5}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    iget v1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    .line 332
    invoke-virtual {p0, v6, v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startApp(Ljava/lang/String;Landroid/app/ActivityOptions;I)Z

    goto :goto_1

    .line 334
    :cond_2
    iget-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v2, "OpenShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    iget-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    iget v1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_1

    .line 336
    :cond_3
    iget-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v2, "OpenQuickPay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    iget v1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startQuickPay(II)V

    goto :goto_1

    .line 339
    :cond_4
    iget-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v2, "OpenWxMiniProgram"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mWxMiniProgramWhich:I

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startWxMiniProgram(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public declared-synchronized onEnterCancelView()V
    .locals 5

    monitor-enter p0

    .line 527
    :try_start_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "onEnterCancelView"

    .line 528
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCancelFalseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z

    .line 550
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 552
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAnimate:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 554
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    .line 555
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iget-object v3, v3, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iput v3, v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->xBefore:F

    .line 557
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 564
    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPadding:I

    aput v3, v1, v2

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    .line 565
    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 566
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 568
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 579
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 594
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 595
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    const v3, 0x3f2b851f    # 0.67f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 597
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 145
    iput-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPadding:I

    .line 148
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLRecyclerView$Ini__TyRJAsREWpcbiNMmgGeNcg;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLRecyclerView$Ini__TyRJAsREWpcbiNMmgGeNcg;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QuickPayConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QuickPayConfigUpdater;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    const-string v4, "QuickPay_APPS_Config"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 167
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public declared-synchronized onLeaveCancelView()V
    .locals 3

    monitor-enter p0

    .line 614
    :try_start_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "onLeaveCancelView"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 618
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAnimate:Z

    if-eqz v0, :cond_3

    .line 619
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iget-object v1, v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->xAfter:F

    .line 621
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    .line 629
    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPadding:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    .line 631
    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 632
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 634
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 663
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 667
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCancelFalseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 669
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->updateLabel()V

    .line 672
    :goto_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onQLExit()V
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsQLExit:Z

    .line 181
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 183
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->unregister()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 185
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 186
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->onQLExit()V

    .line 188
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    .line 190
    :cond_0
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mView:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    .line 193
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    .line 194
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    iput-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    .line 195
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mFocusedViewData:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$AnimationViewData;

    return-void
.end method

.method public declared-synchronized onScrollProgress(F)V
    .locals 4

    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 246
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->checkBarPosition(F)I

    move-result p1

    .line 252
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    rsub-int/lit8 p1, p1, 0x7

    .line 257
    :cond_1
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mBarPosition:I

    if-eq p1, v0, :cond_8

    .line 258
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mBarPosition:I

    sub-int v0, p1, v0

    .line 259
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mBarPosition:I

    .line 261
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mIsCancel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 262
    monitor-exit p0

    return-void

    .line 265
    :cond_2
    :try_start_2
    iget p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    sub-int/2addr p1, v0

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 270
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 273
    :cond_4
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "QuickLaunch.QLRecyclerView"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollProgress mBarPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mBarPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 280
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    if-eq v0, p1, :cond_7

    .line 281
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-gez p1, :cond_6

    .line 285
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    sub-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 288
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->scrollToPosition()V

    .line 291
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLastScrollTime:J

    .line 294
    :cond_7
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onVelocityChanged(F)V
    .locals 2

    const/high16 v0, 0x437a0000    # 250.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    div-float p1, v0, p1

    mul-float/2addr p1, v0

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    .line 393
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollSpeed:F

    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 395
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollSpeed:F

    goto :goto_1

    :cond_1
    const/high16 v0, 0x43eb0000    # 470.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 397
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mScrollSpeed:F

    :cond_2
    :goto_1
    return-void
.end method

.method public setLabelView(Landroid/widget/TextView;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLabel:Landroid/widget/TextView;

    return-void
.end method

.method public setQLConfig(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 682
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mHelper:Lcom/oneplus/systemui/biometrics/OpQLHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->parseQLConfig(Ljava/lang/String;)V

    .line 684
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    .line 685
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 687
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 688
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAdapter:Lcom/oneplus/systemui/biometrics/OpQLAdapter;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mPosition:I

    .line 689
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 691
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->updateLabel()V

    :cond_0
    return-void
.end method
