.class public interface abstract Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .param p2    # Landroid/util/ArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$AnimationUpdate;",
            ">;)V"
        }
    .end annotation
.end method
