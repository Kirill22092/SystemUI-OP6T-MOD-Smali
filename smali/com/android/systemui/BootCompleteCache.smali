.class public interface abstract Lcom/android/systemui/BootCompleteCache;
.super Ljava/lang/Object;
.source "BootCompleteCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BootCompleteCache$BootCompleteListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)Z
    .param p1    # Lcom/android/systemui/BootCompleteCache$BootCompleteListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isBootComplete()Z
.end method

.method public abstract removeListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)V
    .param p1    # Lcom/android/systemui/BootCompleteCache$BootCompleteListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
