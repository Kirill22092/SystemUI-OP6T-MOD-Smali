.class public final Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"

# interfaces
.implements Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;->startInternal$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator$startInternal$3\n*L\n1#1,1036:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field final synthetic $flingMax:F

.field final synthetic $flingMin:F

.field final synthetic $springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field final synthetic this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            "FF",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iput-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    iput p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    iput-object p5, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V
    .locals 1
    .param p2    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;ZZFFZ)V"
        }
    .end annotation

    const-string p7, "property"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p7, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p7, 0x1

    xor-int/2addr p2, p7

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    if-eqz p4, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    int-to-float p4, p3

    cmpl-float p2, p2, p4

    if-lez p2, :cond_1

    move p2, p7

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    cmpl-float v0, p5, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    cmpg-float v0, p5, v0

    if-gtz v0, :cond_2

    move p7, p3

    :cond_2
    if-nez p2, :cond_3

    if-eqz p7, :cond_8

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p3, p6}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->setStartVelocity$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    iget-object p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->getFinalPosition$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p3

    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getUNSET$p()F

    move-result v0

    cmpg-float p3, p3, v0

    if-nez p3, :cond_7

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    cmpg-float p3, p6, p4

    if-gez p3, :cond_4

    iget p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    goto :goto_1

    :cond_4
    iget p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    :goto_1
    invoke-virtual {p2, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->setFinalPosition$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    goto :goto_3

    :cond_5
    if-eqz p7, :cond_7

    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    iget p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    cmpg-float p4, p5, p3

    if-gez p4, :cond_6

    goto :goto_2

    :cond_6
    iget p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    :goto_2
    invoke-virtual {p2, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->setFinalPosition$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iget-object p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {p2, p3, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->access$getSpringAnimation(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_8
    :goto_4
    return-void
.end method
