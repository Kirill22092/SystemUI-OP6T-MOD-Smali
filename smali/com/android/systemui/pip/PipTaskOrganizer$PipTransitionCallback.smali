.class public interface abstract Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;
.super Ljava/lang/Object;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PipTransitionCallback"
.end annotation


# virtual methods
.method public abstract onPipTransitionCanceled(Landroid/content/ComponentName;I)V
.end method

.method public abstract onPipTransitionFinished(Landroid/content/ComponentName;I)V
.end method

.method public abstract onPipTransitionStarted(Landroid/content/ComponentName;I)V
.end method
