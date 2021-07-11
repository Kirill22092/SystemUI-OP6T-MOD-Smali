.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBottom:I

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mLeft:I

.field private mNeedsAnimatorUpdate:Z

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mOldBottom:I

.field private mOldLeft:I

.field private mOldRight:I

.field private mOldTop:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRight:I

.field private mShowCollapsedOnKeyguard:Z

.field private mTop:I

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 593
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 606
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 112
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 113
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 114
    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 115
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 120
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 121
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private clearAnimationState()V
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 553
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 555
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 556
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 557
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 558
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 562
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 438
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 439
    aput v1, p1, v0

    .line 440
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eq p2, p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 448
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 449
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v1

    .line 451
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_2

    .line 453
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    .line 454
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    .line 456
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setCurrentPosition()V
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private updateAnimators()V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 223
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 224
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 225
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 227
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    new-array v8, v6, [I

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 236
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 239
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v9

    .line 240
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v11, v9

    check-cast v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const-string v11, "QSAnimator"

    if-nez v10, :cond_1

    const-string v0, "return updateAnimators"

    .line 243
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_1
    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_0

    :cond_2
    move v10, v1

    .line 249
    :goto_0
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    goto :goto_1

    :cond_3
    move v12, v1

    .line 250
    :goto_1
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int/2addr v10, v13

    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 251
    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int/2addr v10, v13

    new-array v13, v6, [F

    int-to-float v14, v10

    aput v14, v13, v1

    const/4 v15, 0x1

    const/4 v6, 0x0

    aput v6, v13, v15

    const-string/jumbo v6, "translationY"

    .line 252
    invoke-virtual {v2, v9, v6, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 254
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v15, v1

    move/from16 v19, v15

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    const-string v1, "alpha"

    if-eqz v20, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v22, v13

    move-object/from16 v13, v20

    check-cast v13, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v20, v5

    .line 255
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5, v13}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v5

    if-nez v5, :cond_4

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tileView is null "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move/from16 v23, v14

    goto :goto_3

    .line 260
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v23

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v10

    move/from16 v23, v14

    .line 263
    iget-object v14, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v14, :cond_5

    const-string v5, "no Qs to getView"

    .line 264
    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 269
    :cond_5
    invoke-interface {v14}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v14

    move-object/from16 v25, v11

    .line 272
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v11

    move/from16 v26, v12

    const-string/jumbo v12, "translationX"

    if-ge v15, v11, :cond_9

    iget-boolean v11, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v11, :cond_9

    .line 274
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v11, v13}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v11

    if-nez v11, :cond_6

    :goto_3
    move-object/from16 v5, v20

    move-object/from16 v13, v22

    move/from16 v14, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    move/from16 v12, v26

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v13, 0x0

    .line 277
    aget v19, v7, v13

    .line 278
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v13

    invoke-direct {v0, v7, v13, v14}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 279
    invoke-direct {v0, v8, v10, v14}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v10, 0x0

    .line 280
    aget v13, v8, v10

    aget v14, v7, v10

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    .line 281
    aget v18, v8, v14

    aget v21, v7, v14

    sub-int v14, v18, v21

    .line 282
    aget v18, v7, v10

    sub-int v19, v18, v19

    .line 284
    invoke-interface {v9}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v10

    if-ge v15, v10, :cond_7

    const/4 v10, 0x2

    new-array v1, v10, [F

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v1, v18

    int-to-float v10, v13

    const/16 v27, 0x1

    aput v10, v1, v27

    .line 286
    invoke-virtual {v3, v11, v12, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v10, 0x2

    new-array v1, v10, [F

    aput v17, v1, v18

    int-to-float v10, v14

    aput v10, v1, v27

    .line 287
    invoke-virtual {v4, v11, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v10, 0x2

    new-array v1, v10, [F

    neg-int v13, v13

    int-to-float v13, v13

    aput v13, v1, v18

    aput v17, v1, v27

    .line 295
    invoke-virtual {v3, v5, v12, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, v10, [F

    neg-int v12, v14

    int-to-float v12, v12

    aput v12, v1, v18

    aput v17, v1, v27

    .line 296
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v28, v8

    goto :goto_5

    :cond_7
    move-object/from16 v28, v8

    const/4 v10, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v27, 0x1

    new-array v8, v10, [F

    .line 299
    fill-array-data v8, :array_0

    invoke-virtual {v2, v11, v1, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, v10, [F

    aput v17, v1, v18

    int-to-float v8, v14

    aput v8, v1, v27

    .line 300
    invoke-virtual {v4, v11, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 303
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_8

    sub-int v13, v13, v26

    goto :goto_4

    :cond_8
    add-int v13, v13, v26

    :goto_4
    const/4 v1, 0x2

    new-array v8, v1, [F

    const/4 v1, 0x0

    const/4 v10, 0x0

    aput v1, v8, v10

    int-to-float v1, v13

    const/4 v10, 0x1

    aput v1, v8, v10

    .line 304
    invoke-virtual {v3, v11, v12, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 308
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v7

    move/from16 v10, v24

    move-object/from16 v11, v28

    :goto_6
    const/4 v8, 0x0

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v28, v8

    .line 315
    iget-boolean v8, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v8, :cond_a

    invoke-interface {v9}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v8

    if-ge v15, v8, :cond_a

    const/4 v8, 0x0

    .line 321
    aget v1, v7, v8

    add-int v1, v1, v19

    aput v1, v7, v8

    move-object/from16 v11, v28

    .line 322
    invoke-direct {v0, v11, v10, v14}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 323
    aget v1, v11, v8

    aget v13, v7, v8

    sub-int/2addr v1, v13

    const/4 v13, 0x1

    .line 324
    aget v14, v11, v13

    aget v18, v7, v13

    sub-int v14, v14, v18

    move-object/from16 v27, v7

    const/4 v13, 0x2

    new-array v7, v13, [F

    aput v23, v7, v8

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v16, v7, v17

    .line 326
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v7, v13, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v7, v8

    aput v16, v7, v17

    .line 327
    invoke-virtual {v3, v5, v12, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, v13, [F

    neg-int v7, v14

    int-to-float v7, v7

    aput v7, v1, v8

    aput v16, v1, v17

    .line 328
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 335
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v24

    goto :goto_6

    :cond_a
    move-object/from16 v27, v7

    move-object/from16 v11, v28

    const/4 v13, 0x2

    new-array v7, v13, [F

    .line 337
    fill-array-data v7, :array_1

    invoke-virtual {v2, v5, v1, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, v13, [F

    move/from16 v10, v24

    neg-int v7, v10

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v1, v8

    const/4 v7, 0x0

    const/4 v12, 0x1

    aput v7, v1, v12

    .line 338
    invoke-virtual {v2, v5, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 340
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move v1, v8

    move-object v8, v11

    move-object/from16 v5, v20

    move-object/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v7, v27

    goto/16 :goto_2

    :cond_b
    move-object/from16 v20, v5

    .line 344
    :goto_8
    iget-boolean v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v5, :cond_13

    .line 346
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object v5

    const v6, 0x3f666666    # 0.9f

    if-eqz v5, :cond_c

    .line 351
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 357
    invoke-virtual {v7, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v8, 0x2

    new-array v10, v8, [F

    fill-array-data v10, :array_2

    .line 358
    invoke-virtual {v7, v5, v1, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 360
    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 361
    iget-object v7, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_c
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 367
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 369
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v5, 0x3f570a3d    # 0.84f

    .line 370
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v7, 0x2

    new-array v8, v7, [F

    fill-array-data v8, :array_3

    .line 371
    invoke-virtual {v2, v9, v1, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 372
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 375
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 376
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 377
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [F

    fill-array-data v8, :array_4

    invoke-virtual {v2, v5, v1, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_9

    :cond_d
    const/4 v7, 0x2

    .line 379
    :goto_9
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 380
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v5

    new-array v8, v7, [F

    fill-array-data v8, :array_5

    invoke-virtual {v2, v5, v1, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 382
    :cond_e
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 383
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 384
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_f
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 387
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_10
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 396
    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 398
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_6

    invoke-virtual {v2, v5, v1, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 401
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    if-gt v2, v5, :cond_11

    move v2, v6

    goto :goto_a

    .line 407
    :cond_11
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x6

    if-gt v2, v5, :cond_12

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    .line 410
    :goto_a
    new-instance v5, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v2, v6}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 411
    invoke-virtual {v5}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 412
    invoke-virtual {v5}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 413
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 414
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 416
    :cond_13
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_7

    .line 417
    invoke-virtual {v2, v3, v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v3, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 419
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    new-array v5, v4, [F

    fill-array-data v5, :array_8

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v3, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 421
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 422
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 423
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 424
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v3, 0x3e0f5c29    # 0.14f

    .line 425
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_9

    .line 426
    invoke-virtual {v2, v9, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSVisibility()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 167
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearQS()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public onAnimationAtEnd()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 536
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    .line 528
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 543
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 546
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 570
    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLeft:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTop:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mRight:I

    if-ne p1, p4, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mBottom:I

    if-ne p1, p5, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOldLeft:I

    if-ne p1, p6, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOldTop:I

    if-ne p1, p7, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOldRight:I

    if-ne p1, p8, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOldBottom:I

    if-ne p1, p9, :cond_0

    return-void

    .line 574
    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/QSAnimator;->mLeft:I

    .line 575
    iput p3, p0, Lcom/android/systemui/qs/QSAnimator;->mTop:I

    .line 576
    iput p4, p0, Lcom/android/systemui/qs/QSAnimator;->mRight:I

    .line 577
    iput p5, p0, Lcom/android/systemui/qs/QSAnimator;->mBottom:I

    .line 578
    iput p6, p0, Lcom/android/systemui/qs/QSAnimator;->mOldLeft:I

    .line 579
    iput p7, p0, Lcom/android/systemui/qs/QSAnimator;->mOldTop:I

    .line 580
    iput p8, p0, Lcom/android/systemui/qs/QSAnimator;->mOldRight:I

    .line 581
    iput p9, p0, Lcom/android/systemui/qs/QSAnimator;->mOldBottom:I

    .line 583
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 218
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onQsScrollingChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "sysui_qs_fancy_anim"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sysui_qs_move_whole_rows"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "sysui_qqs_count"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    invoke-static {p2}, Lcom/android/systemui/qs/QuickQSPanel;->parseNumTiles(Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 204
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 179
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qs_fancy_anim"

    const-string/jumbo v1, "sysui_qs_move_whole_rows"

    const-string/jumbo v2, "sysui_qqs_count"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 188
    :cond_0
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 173
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 146
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_1

    return-void

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 465
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 471
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 489
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 493
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_6

    .line 494
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 511
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_6

    .line 512
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    .line 519
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 521
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method setShowCollapsedOnKeyguard(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method
