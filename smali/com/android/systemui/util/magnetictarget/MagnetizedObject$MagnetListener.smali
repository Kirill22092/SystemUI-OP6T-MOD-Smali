.class public interface abstract Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagnetListener"
.end annotation


# virtual methods
.method public abstract onReleasedInTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .param p1    # Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onStuckToTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .param p1    # Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUnstuckFromTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V
    .param p1    # Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
