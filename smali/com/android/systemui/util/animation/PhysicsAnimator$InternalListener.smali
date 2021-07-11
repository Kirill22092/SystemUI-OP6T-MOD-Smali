.class public final Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator$InternalListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1036:1\n1591#2,2:1037\n1591#2,2:1039\n1591#2,2:1041\n1591#2,2:1043\n*E\n*S KotlinDebug\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator$InternalListener\n*L\n724#1,2:1037\n734#1,2:1039\n748#1,2:1041\n761#1,2:1043\n*E\n"
.end annotation


# instance fields
.field private endActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private endListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private numPropertiesAnimating:I

.field private properties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

.field private final undispatchedUpdates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$AnimationUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private updateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener<",
            "TT;>;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateListeners"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endListeners"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endActions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    iput-object p5, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    iput-object p6, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    .line 672
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    .line 679
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    return-void
.end method

.method private final maybeDispatchUpdates()V
    .locals 5

    .line 760
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;

    .line 762
    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onInternalAnimationEnd$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFZ)Z
    .locals 13
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;ZFFZ)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    const-string v1, "property"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return v10

    .line 717
    :cond_0
    iget v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    .line 718
    invoke-direct {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    .line 723
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;

    .line 726
    iget-object v3, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    .line 727
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-interface {v2, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iget-object v2, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    .line 734
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;

    .line 736
    iget-object v2, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    move-object v3, p1

    move/from16 v4, p5

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move v8, v11

    .line 735
    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;->onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V

    .line 740
    iget-object v1, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v10

    :cond_4
    if-eqz v11, :cond_5

    if-nez p2, :cond_5

    .line 748
    iget-object v0, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 748
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return v11
.end method

.method public final onInternalAnimationUpdate$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V
    .locals 2
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FF)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/systemui/util/animation/PhysicsAnimator$AnimationUpdate;

    invoke-direct {v1, p2, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$AnimationUpdate;-><init>(FF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    return-void
.end method
