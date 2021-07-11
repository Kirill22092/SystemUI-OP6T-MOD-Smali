.class public interface abstract Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EndListener"
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
.method public abstract onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V
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
.end method
