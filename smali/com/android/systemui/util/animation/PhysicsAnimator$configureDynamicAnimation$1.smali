.class final Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;->configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field final synthetic this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iput-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;>;FF)V"
        }
    .end annotation

    .line 638
    iget-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInternalListeners$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInternalListeners$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;

    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->onInternalAnimationUpdate$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
