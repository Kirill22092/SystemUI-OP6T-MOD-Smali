.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "PagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PagedTileLayout$PageListener;,
        Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    }
.end annotation


# static fields
.field private static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mBounceAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mDistributeTiles:Z

.field private mExcessHeight:I

.field private mHorizontalClipBound:I

.field private mIsUseMediaLayout:Z

.field private mLastExcessHeight:I

.field private mLastExpansion:F

.field private mLastMaxHeight:I

.field private mLayoutDirection:I

.field private mLayoutOrientation:I

.field private mListening:Z

.field private mMaxColumns:I

.field private mMinRows:I

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageIndicatorPosition:F

.field private mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field private mPageToRestore:I

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/PagedTileLayout$TilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$fHkBmUM3ca-ZV4_eDd9ap-VT7Ho;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$fHkBmUM3ca-ZV4_eDd9ap-VT7Ho;

    sput-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 74
    sget-object v1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSEvents;->getQsUiEventsLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    const/16 v1, 0x64

    .line 78
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    .line 95
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 569
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 613
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 87
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 90
    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mClippingRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/PagedTileLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/PagedTileLayout;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/PagedTileLayout;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    return-void
.end method

.method private createTilePage()Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    .locals 3

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_paged_page:I

    const/4 v2, 0x0

    .line 240
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 241
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TileLayout;->setMinRows(I)Z

    .line 242
    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns(I)Z

    return-object v0
.end method

.method private distributeTiles()V
    .locals 6

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->emptyAndInflateOrRemovePages()V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result v0

    .line 313
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 315
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 316
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget-object v5, v5, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 321
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/TileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private emptyAndInflateOrRemovePages()V
    .locals 5

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 329
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/TileLayout;->removeAllViews()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    return-void

    .line 334
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTilePage()Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 340
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 345
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 346
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 347
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_4
    return-void
.end method

.method private getCurrentPageNumber()I
    .locals 3

    .line 140
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 141
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    sub-int v0, p0, v0

    :cond_0
    return v0
.end method

.method private synthetic lambda$fakeDragBy$1(I)V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 198
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method static synthetic lambda$static$0(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private logVisibleTiles(Lcom/android/systemui/qs/PagedTileLayout$TilePage;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 149
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    iget-object v2, p1, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    .line 151
    invoke-interface {v3, v4, v0, v5, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setupBounceAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 557
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 558
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 559
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 560
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    aput v5, v3, v4

    .line 561
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v5, v2, v4

    .line 562
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 559
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    .line 563
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 p1, p1, 0x55

    int-to-long v0, p1

    .line 564
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 565
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3fa66666    # 1.3f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private updateListening()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 165
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TileLayout;->setListening(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSelected()V
    .locals 6

    .line 283
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    cmpl-float v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    .line 291
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    move-result v2

    move v3, v1

    .line 293
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 294
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-ne v3, v2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v1

    .line 295
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 296
    invoke-virtual {v4}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PagedTileLayout;->logVisibleTiles(Lcom/android/systemui/qs/PagedTileLayout$TilePage;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 300
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->fakeDragBy(F)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PagedTileLayout"

    const-string v2, "computeScroll: caught exception. exit quitely."

    .line 220
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_2
    :goto_0
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->computeScroll()V

    return-void
.end method

.method public fakeDragBy(F)V
    .locals 2

    .line 185
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PagedTileLayout"

    const-string v1, "FakeDragBy called before begin"

    .line 189
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 193
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$EgpYNrlBIoNqA0Bh-2xqmY_dv38;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$EgpYNrlBIoNqA0Bh-2xqmY_dv38;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getNumPages()I
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result v1

    div-int v1, v0, v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 501
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 502
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result p0

    rem-int/2addr v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    :cond_1
    return v1
.end method

.method public getNumVisibleTiles()I
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 513
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 0

    .line 254
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$fakeDragBy$1$PagedTileLayout(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->lambda$fakeDragBy$1(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 113
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 233
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTilePage()Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 401
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 402
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mClippingRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mHorizontalClipBound:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 446
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExcessHeight:I

    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    if-eq v1, v3, :cond_3

    .line 449
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 450
    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    iput v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExcessHeight:I

    sub-int/2addr v1, v3

    .line 454
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/qs/TileLayout;->updateMaxRows(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    if-eqz v0, :cond_2

    .line 455
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget v0, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    move v1, v2

    .line 460
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 461
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 462
    iput v0, v3, Lcom/android/systemui/qs/TileLayout;->mRows:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_1
    if-ge v2, p1, :cond_5

    .line 473
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-le v0, p2, :cond_4

    move p2, v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 478
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 120
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 121
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 122
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 124
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_0
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 270
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "current_page"

    const/4 v1, -0x1

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    const-string v0, "current_page"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setExcessHeight(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    return-void
.end method

.method public setIsUseMediaLayout(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mIsUseMediaLayout:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    return-void
.end method

.method public setMaxColumns(I)Z
    .locals 4

    .line 421
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    const/4 v0, 0x0

    move v1, v0

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 426
    iput-boolean v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setMinRows(I)Z
    .locals 4

    .line 408
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    const/4 v0, 0x0

    move v1, v0

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TileLayout;->setMinRows(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 413
    iput-boolean v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 1

    .line 247
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-void
.end method

.method public startTileReveal(Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 517
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 524
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 525
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    iget-object v1, v1, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 527
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/qs/PagedTileLayout;->setupBounceAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 535
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    return-void

    .line 539
    :cond_3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    .line 540
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 541
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/PagedTileLayout$1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 548
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 549
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    mul-int/2addr p1, v0

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_4

    neg-int p1, p1

    :cond_4
    move v3, p1

    const/4 v4, 0x0

    const/16 v5, 0x2ee

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 552
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_5
    :goto_1
    return-void
.end method

.method public updateResources()Z
    .locals 4

    .line 355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 360
    sget v1, Lcom/android/systemui/R$dimen;->op_notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mHorizontalClipBound:I

    .line 370
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v2, 0x0

    const/16 v3, 0x1fe

    if-lt v1, v3, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mIsUseMediaLayout:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 374
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_paged_tile_layout_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 373
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_1
    move v0, v2

    .line 381
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 385
    iput-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 386
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    return v0
.end method
