.class public Lcom/android/systemui/stackdivider/SplitDisplayLayout;
.super Ljava/lang/Object;
.source "SplitDisplayLayout.java"


# instance fields
.field mAdjustedPrimary:Landroid/graphics/Rect;

.field mAdjustedSecondary:Landroid/graphics/Rect;

.field mContext:Landroid/content/Context;

.field mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

.field mDividerSize:I

.field mDividerSizeInactive:I

.field private mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field mPrimary:Landroid/graphics/Rect;

.field mResourcesValid:Z

.field mSecondary:Landroid/graphics/Rect;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mResourcesValid:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 59
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 62
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    .line 63
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private adjustForIME(Lcom/android/systemui/wm/DisplayLayout;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    .line 190
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 191
    invoke-virtual {p1, v0}, Lcom/android/systemui/wm/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    sub-int v1, p2, p3

    int-to-float v1, v1

    sub-int v2, p4, p3

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p6, p6

    mul-float/2addr p6, v1

    int-to-float v2, p5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr p6, v2

    float-to-int p6, p6

    .line 198
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v0

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    sub-int/2addr p3, p4

    sub-int/2addr p3, v1

    const/4 p4, 0x0

    .line 209
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p2, p3

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 218
    iget-object p2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {p2, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 219
    iget-object p2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    neg-int p1, p1

    sub-int/2addr p5, p6

    add-int/2addr p5, p1

    invoke-virtual {p2, p4, p5}, Landroid/graphics/Rect;->offset(II)V

    .line 222
    iget-object p2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p2, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method static getPrimarySplitSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 296
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    if-gez p2, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 305
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    if-gez p2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Landroid/graphics/Rect;)I
    .locals 16

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v1

    .line 228
    invoke-static {v0, v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v0

    .line 235
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 236
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 237
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v3

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 239
    new-instance v11, Lcom/android/systemui/wm/DisplayLayout;

    invoke-direct {v11}, Lcom/android/systemui/wm/DisplayLayout;-><init>()V

    const v2, 0x7fffffff

    move v12, v2

    move v13, v10

    :goto_0
    const/4 v2, 0x4

    if-ge v13, v2, :cond_0

    move-object/from16 v14, p1

    .line 241
    invoke-virtual {v11, v14}, Lcom/android/systemui/wm/DisplayLayout;->set(Lcom/android/systemui/wm/DisplayLayout;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v11, v2, v13}, Lcom/android/systemui/wm/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    move-object/from16 v15, p0

    .line 243
    invoke-static {v15, v11, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->initSnapAlgorithmForRotation(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;I)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    move-object/from16 v7, p2

    .line 245
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wm/DisplayLayout;->rotation()I

    move-result v3

    sub-int v3, v13, v3

    invoke-static {v1, v9, v3}, Lcom/android/systemui/wm/DisplayLayout;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 247
    invoke-virtual {v11}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v4

    invoke-virtual {v8, v10, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    invoke-virtual {v11}, Lcom/android/systemui/wm/DisplayLayout;->getOrientation()I

    move-result v3

    .line 248
    invoke-static {v1, v8, v3}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 250
    invoke-static {v1, v3, v0}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v4

    .line 254
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 256
    invoke-virtual {v11}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v6

    move-object v4, v1

    move v7, v0

    .line 255
    invoke-static/range {v2 .. v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 257
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {v11}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 260
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    int-to-float v0, v12

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static initSnapAlgorithmForRotation(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;I)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 12

    .line 267
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 268
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->getOrientation()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->nonDecorInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 272
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 275
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 278
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v8

    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v4

    .line 280
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v11

    move-object v5, v1

    move v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    return-object v1
.end method

.method private updateResources()V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mResourcesValid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mResourcesValid:Z

    .line 94
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v2

    .line 95
    invoke-static {v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    const/high16 v2, 0x40800000    # 4.0f

    .line 98
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 97
    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSizeInactive:I

    return-void
.end method


# virtual methods
.method calcResizableMinimizedHomeStackBounds()Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 167
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 168
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    move-object v3, v7

    .line 168
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-object v7
.end method

.method calcSplitBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 14

    move-object v0, p0

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v7

    .line 156
    iget-object v1, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 157
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v4

    iget-object v1, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    move v1, p1

    move v2, v7

    move-object/from16 v3, p2

    .line 156
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 160
    invoke-static {v7}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v9

    iget-object v1, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v11

    iget-object v1, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 161
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v12

    iget v13, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    move v8, p1

    move-object/from16 v10, p3

    .line 159
    invoke-static/range {v8 .. v13}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 11

    .line 126
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->updateResources()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 129
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 130
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 131
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, v0

    move v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object p0
.end method

.method getPrimarySplitSide()I
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wm/DisplayLayout;->getNavigationBarPosition(Landroid/content/res/Resources;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 9

    .line 115
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->updateResources()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 118
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 119
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getPrimarySplitSide()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object p0
.end method

.method resizeSplits(I)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->calcSplitBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method resizeSplits(ILandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->resizeSplits(I)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 146
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 149
    invoke-static {v0, v1, v2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Landroid/graphics/Rect;)I

    move-result v0

    .line 148
    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 150
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 151
    invoke-static {v0, v1, p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Landroid/graphics/Rect;)I

    move-result p0

    .line 150
    invoke-virtual {p2, p1, p0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method rotateTo(I)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/wm/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    .line 73
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/Configuration;->unset()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->getOrientation()I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->nonDecorInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 78
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 86
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mResourcesValid:Z

    return-void
.end method

.method updateAdjustedBounds(III)V
    .locals 9

    .line 178
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget v5, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSize:I

    iget v6, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDividerSizeInactive:I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->adjustForIME(Lcom/android/systemui/wm/DisplayLayout;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
