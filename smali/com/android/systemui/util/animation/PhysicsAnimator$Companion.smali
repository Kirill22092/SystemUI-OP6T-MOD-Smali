.class public final Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 972
    invoke-direct {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final estimateFlingEndValue(FFLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;)F
    .locals 1
    .param p3    # Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "flingConfig"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getFriction$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p0

    const v0, 0x40866666    # 4.2f

    mul-float/2addr p0, v0

    div-float/2addr p2, p0

    .line 1014
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p0

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p3

    add-float/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->getAnimators()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->getAnimators()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;->getInstanceConstructor$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->getAnimators()Ljava/util/WeakHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.util.animation.PhysicsAnimator<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInstanceConstructor$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 979
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getInstanceConstructor$cp()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getReadablePropertyName(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "translationX"

    goto/16 :goto_0

    .line 1021
    :cond_0
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "translationY"

    goto/16 :goto_0

    .line 1022
    :cond_1
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "translationZ"

    goto :goto_0

    .line 1023
    :cond_2
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "scaleX"

    goto :goto_0

    .line 1024
    :cond_3
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "scaleY"

    goto :goto_0

    .line 1025
    :cond_4
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "rotation"

    goto :goto_0

    .line 1026
    :cond_5
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "rotationX"

    goto :goto_0

    .line 1027
    :cond_6
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "rotationY"

    goto :goto_0

    .line 1028
    :cond_7
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "scrollX"

    goto :goto_0

    .line 1029
    :cond_8
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "scrollY"

    goto :goto_0

    .line 1030
    :cond_9
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "alpha"

    goto :goto_0

    :cond_a
    const-string p0, "Custom FloatPropertyCompat instance"

    :goto_0
    return-object p0
.end method
