.class final Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;->configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

.field final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field final synthetic this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iput-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput-object p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;>;ZFF)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInternalListeners$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;ZFF)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    iget-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getSpringAnimations$p(Lcom/android/systemui/util/animation/PhysicsAnimator;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getSpringAnimations$p(Lcom/android/systemui/util/animation/PhysicsAnimator;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getFlingAnimations$p(Lcom/android/systemui/util/animation/PhysicsAnimator;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/FlingAnimation;

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getFlingAnimations$p(Lcom/android/systemui/util/animation/PhysicsAnimator;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
