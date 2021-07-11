.class Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DisplayImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

.field final synthetic val$endY:F

.field final synthetic val$hiddenY:F

.field final synthetic val$isFloating:Z

.field final synthetic val$shownY:F

.field final synthetic val$startY:F

.field final synthetic val$x:F


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FFFFZF)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iput p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$x:F

    iput p3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$startY:F

    iput p4, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    iput p5, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$shownY:F

    iput-boolean p6, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    iput p7, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 365
    iput-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 395
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p1}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$x:F

    iget v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-boolean v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/wm/DisplayImeController;->access$300(Lcom/android/systemui/wm/DisplayImeController;IZLandroid/view/SurfaceControl$Transaction;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v1, :cond_1

    .line 402
    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 403
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayImeController;->getImms()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DisplayImeController"

    const-string v2, "Failed to remove IME surface."

    .line 410
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 417
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 p1, 0x0

    .line 418
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    .line 368
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p1}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$x:F

    iget v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$startY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 375
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget v2, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget v3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    invoke-static {v0, v3}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->access$100(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;F)I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v4, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$shownY:F

    .line 376
    invoke-static {v0, v4}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->access$100(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;F)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p1

    .line 375
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/wm/DisplayImeController;->access$200(Lcom/android/systemui/wm/DisplayImeController;IIIZZLandroid/view/SurfaceControl$Transaction;)I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    and-int/2addr v0, v8

    if-nez v0, :cond_1

    move v7, v8

    :cond_1
    iput-boolean v7, v1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 378
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-boolean v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    .line 379
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$startY:F

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$shownY:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 381
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, v1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v1, v8, :cond_4

    .line 383
    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 385
    :cond_4
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 386
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
