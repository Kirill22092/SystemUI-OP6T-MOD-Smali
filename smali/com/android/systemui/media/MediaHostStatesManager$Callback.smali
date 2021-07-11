.class public interface abstract Lcom/android/systemui/media/MediaHostStatesManager$Callback;
.super Ljava/lang/Object;
.source "MediaHostStatesManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaHostStatesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V
    .param p2    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
