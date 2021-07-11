.class public Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;
.super Ljava/lang/Object;
.source "PipAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/PipAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PipAnimationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPipAnimationCancel(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)V
.end method

.method public abstract onPipAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)V
.end method

.method public abstract onPipAnimationStart(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)V
.end method
