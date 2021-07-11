.class abstract Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.super Ljava/lang/Object;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PhysicsAnimationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;,
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;
    }
.end annotation


# instance fields
.field protected mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$animationsForChildrenFromIndex$0([Ljava/lang/Runnable;)V
    .locals 3

    .line 230
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 231
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$animationsForChildrenFromIndex$1(Ljava/util/Set;Ljava/util/List;[Ljava/lang/Runnable;)V
    .locals 2

    .line 229
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$Q2IEgFt-VQbcjE9VQhU6hzQCTEA;

    invoke-direct {v0, p3}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$Q2IEgFt-VQbcjE9VQhU6hzQCTEA;-><init>([Ljava/lang/Runnable;)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    new-array p3, v1, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 244
    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 242
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->setEndActionForMultipleProperties(Ljava/lang/Runnable;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 248
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 249
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$setEndActionForMultipleProperties$2([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Ljava/lang/Runnable;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimating([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 273
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->removeEndActionForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .locals 2

    .line 186
    sget v0, Lcom/android/systemui/R$id;->physics_animator_tag:I

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)V

    .line 191
    sget v1, Lcom/android/systemui/R$id;->physics_animator_tag:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$000(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    .line 195
    invoke-static {v0, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$100(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    return-object v0
.end method

.method protected animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method protected animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;
    .locals 4

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 220
    invoke-interface {p2, p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;->configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    .line 221
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    new-instance p1, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$QukG2X_vIQ5QkpRissMu_oS31l0;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$QukG2X_vIQ5QkpRissMu_oS31l0;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;Ljava/util/Set;Ljava/util/List;)V

    return-object p1
.end method

.method abstract getAnimatedProperties()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            ">;"
        }
    .end annotation
.end method

.method abstract getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
.end method

.method abstract getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
.end method

.method abstract getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
.end method

.method protected isActiveController()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$animationsForChildrenFromIndex$1$PhysicsAnimationLayout$PhysicsAnimationController(Ljava/util/Set;Ljava/util/List;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->lambda$animationsForChildrenFromIndex$1(Ljava/util/Set;Ljava/util/List;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$setEndActionForMultipleProperties$2$PhysicsAnimationLayout$PhysicsAnimationController([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->lambda$setEndActionForMultipleProperties$2([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Ljava/lang/Runnable;)V

    return-void
.end method

.method abstract onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
.end method

.method abstract onChildAdded(Landroid/view/View;I)V
.end method

.method abstract onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
.end method

.method abstract onChildReordered(Landroid/view/View;II)V
.end method

.method protected removeEndActionForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected varargs setEndActionForMultipleProperties(Ljava/lang/Runnable;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 3

    .line 269
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Ljava/lang/Runnable;)V

    .line 279
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 280
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->setEndActionForProperty(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setEndActionForProperty(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V

    return-void
.end method
