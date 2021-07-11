.class final Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PhysicsAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;->startInternal$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator$startInternal$1\n*L\n1#1,1036:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field final synthetic $currentValue:F

.field final synthetic $flingConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

.field final synthetic $target:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;FLandroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iput-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iput p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    iput-object p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput-object p5, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$target:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    .line 495
    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->setMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    .line 496
    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->setMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iget-object v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$target:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getFlingAnimation(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 506
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->applyToAnimation$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/FlingAnimation;)V

    .line 507
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method
