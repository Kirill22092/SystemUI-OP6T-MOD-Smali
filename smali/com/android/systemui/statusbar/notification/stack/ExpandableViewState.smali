.class public Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "ExpandableViewState.java"


# static fields
.field private static final TAG_ANIMATOR_HEIGHT:I

.field private static final TAG_ANIMATOR_TOP_INSET:I

.field private static final TAG_END_HEIGHT:I

.field private static final TAG_END_TOP_INSET:I

.field private static final TAG_START_HEIGHT:I

.field private static final TAG_START_TOP_INSET:I


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dimmed:Z

.field public headsUpIsVisible:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget v0, Lcom/android/systemui/R$id;->height_animator_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_HEIGHT:I

    .line 36
    sget v0, Lcom/android/systemui/R$id;->top_inset_animator_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_TOP_INSET:I

    .line 37
    sget v0, Lcom/android/systemui/R$id;->height_animator_end_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_HEIGHT:I

    .line 38
    sget v0, Lcom/android/systemui/R$id;->top_inset_animator_end_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_TOP_INSET:I

    .line 39
    sget v0, Lcom/android/systemui/R$id;->height_animator_start_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_START_HEIGHT:I

    .line 40
    sget v0, Lcom/android/systemui/R$id;->top_inset_animator_start_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_START_TOP_INSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 33
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_HEIGHT:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 33
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_START_HEIGHT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 33
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_HEIGHT:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 33
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_TOP_INSET:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 33
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_START_TOP_INSET:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 33
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_TOP_INSET:I

    return v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_HEIGHT:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    return p0

    .line 379
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_HEIGHT:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    .line 223
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_HEIGHT:I

    sget v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_HEIGHT:I

    sget v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_START_HEIGHT:I

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 224
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 225
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    .line 230
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 231
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 237
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int p2, v5, p2

    .line 238
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    .line 239
    aget-object p0, p0, v10

    new-array p2, v8, [I

    aput v0, p2, v10

    aput v5, p2, v9

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 242
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 246
    :cond_1
    invoke-virtual {p1, v5, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    return-void

    :cond_2
    new-array v3, v8, [I

    .line 251
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v4

    aput v4, v3, v10

    aput v5, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 252
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 261
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v4, v7, v10

    if-lez v4, :cond_4

    if-eqz v6, :cond_3

    .line 263
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    .line 264
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    const/4 v4, 0x0

    .line 266
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 269
    invoke-virtual {v3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    :cond_5
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    invoke-static {v3, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 298
    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 301
    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeightAnimating(Z)V

    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    .line 305
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_TOP_INSET:I

    sget v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_END_TOP_INSET:I

    sget v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_START_TOP_INSET:I

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 306
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 307
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    if-eqz v4, :cond_0

    .line 308
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 313
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 318
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 319
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int p2, v5, p2

    .line 320
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    .line 321
    aget-object p0, p0, v10

    new-array p2, v9, [I

    aput v0, p2, v10

    aput v5, p2, v8

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 324
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 328
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    return-void

    :cond_2
    new-array v3, v9, [I

    .line 333
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v4

    aput v4, v3, v10

    aput v5, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 334
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 342
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 343
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_4

    if-eqz v6, :cond_3

    .line 344
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    .line 345
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    const/4 v4, 0x0

    .line 347
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 350
    invoke-virtual {v3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    :cond_5
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$4;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    invoke-static {v3, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 362
    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 363
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 364
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 8

    .line 176
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 177
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 181
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v1

    .line 184
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 185
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_0

    .line 187
    :cond_1
    sget v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_HEIGHT:I

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 191
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 192
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_1

    .line 194
    :cond_2
    sget v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_TOP_INSET:I

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 198
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(ZZ)V

    .line 201
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 204
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 207
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez p1, :cond_3

    .line 208
    iget-wide v2, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJZ)V

    .line 212
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 213
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransformingInShelf(Z)V

    .line 215
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setInShelf(Z)V

    .line 217
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz p0, :cond_5

    .line 218
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    :cond_5
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 9

    .line 137
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 138
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_2

    .line 139
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    .line 142
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    const/4 v8, 0x0

    if-eq v0, v1, :cond_0

    .line 146
    invoke-virtual {p1, v1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {p1, v0, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(ZZ)V

    .line 153
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 160
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    int-to-float v0, v0

    .line 161
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    .line 165
    :cond_1
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransformingInShelf(Z)V

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setInShelf(Z)V

    .line 168
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz p0, :cond_2

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    :cond_2
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 0

    .line 385
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 386
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_HEIGHT:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 390
    :cond_0
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->TAG_ANIMATOR_TOP_INSET:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 392
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 119
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 121
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 122
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 123
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 124
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 125
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 126
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 127
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 128
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_0
    return-void
.end method
