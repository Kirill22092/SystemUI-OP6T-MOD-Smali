.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;
    }
.end annotation


# static fields
.field private static CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static final TRANSFORMATION_START_SCLALE_X:I

.field private static final TRANSFORMATION_START_SCLALE_Y:I

.field private static final TRANSFORMATION_START_X:I

.field private static final TRANSFORMATION_START_Y:I

.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mOwnPosition:[I

.field private mSameAsAny:Z

.field protected mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget v0, Lcom/android/systemui/R$id;->transformation_start_x_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_X:I

    .line 47
    sget v0, Lcom/android/systemui/R$id;->transformation_start_y_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_Y:I

    .line 48
    sget v0, Lcom/android/systemui/R$id;->transformation_start_scale_x_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_X:I

    .line 49
    sget v0, Lcom/android/systemui/R$id;->transformation_start_scale_y_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_Y:I

    .line 50
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/notification/TransformState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TransformState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 77
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/high16 v0, -0x40800000    # -1.0f

    .line 79
    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 80
    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 81
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 2

    .line 436
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10201b9

    if-ne v0, v1, :cond_1

    .line 442
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    .line 446
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203bf

    if-ne v0, v1, :cond_2

    .line 447
    invoke-static {}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->obtain()Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    move-result-object v0

    .line 448
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    .line 451
    :cond_2
    instance-of v0, p0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_3

    .line 452
    invoke-static {}, Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;

    move-result-object v0

    .line 453
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    .line 456
    :cond_3
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 457
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v0

    .line 458
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x102042b

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    .line 460
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->setIsSameAsAnyView(Z)V

    :cond_4
    return-object v0

    .line 464
    :cond_5
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    .line 465
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v0

    .line 466
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    .line 469
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1

    .line 571
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    if-eqz v0, :cond_0

    return-object v0

    .line 575
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v0
.end method

.method private setTransformationStartScaleX(F)V
    .locals 1

    .line 522
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_X:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .locals 1

    .line 526
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_Y:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 301
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    and-int/lit8 v5, p2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/16 v8, 0x10

    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    .line 304
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v10

    const/4 v11, 0x0

    cmpl-float v12, v3, v11

    const/high16 v13, -0x40800000    # -1.0f

    if-nez v12, :cond_8

    if-eqz v5, :cond_3

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v12

    cmpl-float v14, v12, v13

    if-eqz v14, :cond_2

    goto :goto_2

    .line 310
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 311
    :goto_2
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_3
    if-eqz v9, :cond_5

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v12

    cmpl-float v14, v12, v13

    if-eqz v14, :cond_4

    goto :goto_3

    .line 316
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v12

    .line 317
    :goto_3
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 319
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    if-eqz v10, :cond_6

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v14

    if-eq v12, v14, :cond_6

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v12

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 322
    invoke-virtual {v4, v11}, Landroid/view/View;->setPivotX(F)V

    goto :goto_4

    .line 324
    :cond_6
    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    :goto_4
    if-eqz v10, :cond_7

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v14

    if-eq v12, v14, :cond_7

    .line 327
    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v12

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 328
    invoke-virtual {v4, v11}, Landroid/view/View;->setPivotY(F)V

    goto :goto_5

    .line 330
    :cond_7
    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 332
    :goto_5
    invoke-virtual {v0, v4, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 334
    :cond_8
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v12

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v14

    if-eqz v5, :cond_b

    .line 339
    aget v5, v12, v6

    aget v15, v14, v6

    sub-int/2addr v5, v15

    int-to-float v5, v5

    if-eqz v2, :cond_a

    .line 342
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 343
    iget v5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 346
    :cond_9
    invoke-virtual {v2, v7, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 348
    invoke-interface {v15, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    goto :goto_6

    :cond_a
    move v15, v11

    .line 351
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v13

    invoke-static {v13, v5, v15}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    :cond_b
    if-eqz v9, :cond_e

    .line 356
    aget v5, v12, v7

    aget v7, v14, v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    if-eqz v2, :cond_d

    .line 359
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 360
    iget v5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 363
    :cond_c
    invoke-virtual {v2, v8, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 365
    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_7

    :cond_d
    move v2, v11

    .line 368
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v3

    invoke-static {v3, v5, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    if-eqz v10, :cond_10

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_f

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 377
    invoke-static {v2, v3, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .line 376
    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    .line 381
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_10

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 384
    invoke-static {v2, v1, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 383
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_10
    return-void
.end method


# virtual methods
.method public abortTransformation()V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_X:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_Y:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_X:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 567
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_Y:I

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    return-void
.end method

.method public ensureVisible()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .locals 4

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 398
    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 399
    aget v2, v0, v1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    sub-float/2addr v2, p0

    float-to-int p0, v2

    aput p0, v0, v1

    return-object v0
.end method

.method public getLocationOnScreen()[I
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v3

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 412
    invoke-static {v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 413
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object p0
.end method

.method public getTransformationStartScaleX()F
    .locals 1

    .line 504
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_X:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    .line 505
    :cond_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getTransformationStartScaleY()F
    .locals 1

    .line 509
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_SCLALE_Y:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    .line 510
    :cond_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getTransformationStartX()F
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_X:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    .line 495
    :cond_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getTransformationStartY()F
    .locals 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_Y:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    .line 500
    :cond_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getTransformedView()Landroid/view/View;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object p0
.end method

.method protected getViewHeight()I
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method protected getViewWidth()I
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    return-void
.end method

.method public prepareFadeIn()V
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 480
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_0

    .line 481
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 531
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 533
    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 534
    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 535
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected resetTransformedView()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    return p0
.end method

.method protected setClippingDeactivated(Landroid/view/View;Z)V
    .locals 0

    .line 392
    sget-object p0, Lcom/android/systemui/statusbar/notification/TransformState;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p1, p2, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method public setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setIsSameAsAnyView(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    return-void
.end method

.method public setTransformationEndY(F)V
    .locals 0

    .line 486
    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    return-void
.end method

.method public setTransformationStartX(F)V
    .locals 1

    .line 514
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_X:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setTransformationStartY(F)V
    .locals 1

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/notification/TransformState;->TRANSFORMATION_START_Y:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 1

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 539
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 543
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 546
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    return-void
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result p0

    return p0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    .line 100
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    return-void
.end method

.method protected transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 135
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    and-int/lit8 v4, p2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/16 v7, 0x10

    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    .line 138
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v9

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v10

    if-eq v10, v9, :cond_2

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    move v11, v6

    goto :goto_2

    :cond_2
    move v11, v5

    .line 141
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v12

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v13

    if-eq v13, v12, :cond_3

    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    move v14, v6

    goto :goto_3

    :cond_3
    move v14, v5

    .line 144
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-nez v11, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    move v15, v6

    goto :goto_4

    :cond_5
    move v15, v5

    :goto_4
    const/4 v7, 0x0

    cmpl-float v16, v2, v7

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v16, :cond_9

    if-eqz v4, :cond_6

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v17

    cmpl-float v17, v17, v7

    if-eqz v17, :cond_9

    :cond_6
    if-eqz v8, :cond_7

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v17

    cmpl-float v17, v17, v7

    if-eqz v17, :cond_9

    :cond_7
    if-eqz v15, :cond_8

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v17

    cmpl-float v17, v17, v7

    if-nez v17, :cond_8

    if-nez v14, :cond_9

    :cond_8
    if-eqz v15, :cond_14

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v17

    cmpl-float v17, v17, v7

    if-nez v17, :cond_14

    if-eqz v11, :cond_14

    :cond_9
    if-eqz v16, :cond_a

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v16

    goto :goto_5

    .line 156
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v16

    .line 158
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v17

    move-object/from16 v7, p1

    if-eqz v1, :cond_c

    .line 160
    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v18

    if-nez v18, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_9

    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    .line 162
    aget v18, v16, v5

    aget v5, v17, v5

    sub-int v5, v18, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_d
    if-eqz v8, :cond_e

    .line 165
    aget v5, v16, v6

    aget v16, v17, v6

    sub-int v5, v5, v16

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 168
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v5

    if-eqz v15, :cond_f

    if-eqz v14, :cond_f

    int-to-float v7, v13

    .line 170
    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v13

    mul-float/2addr v7, v13

    int-to-float v12, v12

    div-float/2addr v7, v12

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    const/4 v7, 0x0

    .line 172
    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    goto :goto_8

    :cond_f
    const/high16 v7, -0x40800000    # -1.0f

    .line 174
    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    :goto_8
    if-eqz v15, :cond_10

    if-eqz v11, :cond_10

    int-to-float v7, v10

    .line 177
    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v7, v5

    int-to-float v5, v9

    div-float/2addr v7, v5

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6

    :cond_10
    const/high16 v5, -0x40800000    # -1.0f

    .line 181
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    :goto_9
    if-nez v4, :cond_11

    .line 185
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_11
    if-nez v8, :cond_12

    .line 188
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_12
    if-nez v15, :cond_13

    .line 191
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 192
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 194
    :cond_13
    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 196
    :cond_14
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    if-eqz v4, :cond_16

    if-eqz v1, :cond_15

    .line 202
    invoke-virtual {v1, v6, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 204
    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    goto :goto_a

    :cond_15
    move v4, v5

    .line 207
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_16
    if-eqz v8, :cond_18

    if-eqz v1, :cond_17

    const/16 v4, 0x10

    .line 215
    invoke-virtual {v1, v4, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 217
    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_b

    :cond_17
    move v1, v5

    .line 220
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_18
    if-eqz v15, :cond_1a

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v4, v1, v2

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_19

    .line 228
    invoke-static {v1, v6, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 227
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 232
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v0

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1a

    .line 235
    invoke-static {v0, v6, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 234
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1a
    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x11

    .line 119
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x11

    .line 283
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    const/4 p0, 0x1

    return p0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x10

    .line 125
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x10

    .line 289
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method
