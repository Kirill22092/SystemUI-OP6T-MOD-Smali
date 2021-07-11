.class public Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;
.super Landroid/widget/FrameLayout;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;,
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;,
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
    }
.end annotation


# instance fields
.field protected mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

.field protected final mEndActionForProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 0

    .line 488
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 493
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 494
    invoke-direct {p0, p4, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setUpAnimationForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;I)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onChildAdded(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private getAnimationAtIndex(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 507
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method private getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method protected static getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;
    .locals 1

    .line 466
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TRANSLATION_X"

    return-object p0

    .line 468
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "TRANSLATION_Y"

    return-object p0

    .line 470
    :cond_1
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SCALE_X"

    return-object p0

    .line 472
    :cond_2
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SCALE_Y"

    return-object p0

    .line 474
    :cond_3
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "ALPHA"

    return-object p0

    :cond_4
    const-string p0, "Unknown animation property."

    return-object p0
.end method

.method private getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I
    .locals 0

    .line 556
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 557
    sget p0, Lcom/android/systemui/R$id;->translation_x_dynamicanimation_tag:I

    return p0

    .line 558
    :cond_0
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 559
    sget p0, Lcom/android/systemui/R$id;->translation_y_dynamicanimation_tag:I

    return p0

    .line 560
    :cond_1
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 561
    sget p0, Lcom/android/systemui/R$id;->scale_x_dynamicanimation_tag:I

    return p0

    .line 562
    :cond_2
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 563
    sget p0, Lcom/android/systemui/R$id;->scale_y_dynamicanimation_tag:I

    return p0

    .line 564
    :cond_3
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 565
    sget p0, Lcom/android/systemui/R$id;->alpha_dynamicanimation_tag:I

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 518
    sget p0, Lcom/android/systemui/R$id;->target_animator_tag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private synthetic lambda$removeView$0(Landroid/view/View;)V
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 343
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setUpAnimationForChild$1(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 534
    iget-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I

    move-result p3

    const/4 p5, -0x1

    if-eq p3, p5, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result p1

    .line 541
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p5

    if-ge p3, p5, :cond_1

    .line 542
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationAtIndex(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    if-eqz p0, :cond_1

    add-float/2addr p4, p1

    .line 544
    invoke-virtual {p0, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpAnimationForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;I)V
    .locals 1

    .line 531
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 532
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$zwbjiGEsnfRdNGFmqcdzTxp4TUg;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$zwbjiGEsnfRdNGFmqcdzTxp4TUg;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 549
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 550
    new-instance v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 551
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    invoke-virtual {p2, p0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private setUpAnimationsForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 2

    const/4 v0, 0x0

    .line 523
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 524
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setUpAnimationForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public varargs arePropertiesAnimating([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 374
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 375
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public varargs arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z
    .locals 7

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 387
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p2, v3

    .line 388
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 389
    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    return v6

    .line 396
    :cond_0
    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 397
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public cancelAllAnimations()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    return-void
.end method

.method public varargs cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 423
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 424
    array-length v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 425
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationAtIndex(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public cancelAnimationsOnView(Landroid/view/View;)V
    .locals 2

    .line 437
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 444
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected isActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)Z
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFirstChildXLeftOfCenter(F)Z
    .locals 2

    .line 457
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 458
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public synthetic lambda$removeView$0$PhysicsAnimationLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->lambda$removeView$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setUpAnimationForChild$1$PhysicsAnimationLayout(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->lambda$setUpAnimationForChild$1(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 335
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addTransientView(Landroid/view/View;I)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    new-instance v2, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public reorderView(Landroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 367
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-eqz p0, :cond_1

    .line 368
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onChildReordered(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimations()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 314
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 315
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->setLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V

    .line 318
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 319
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setUpAnimationsForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    goto :goto_0

    :cond_0
    return-void
.end method
