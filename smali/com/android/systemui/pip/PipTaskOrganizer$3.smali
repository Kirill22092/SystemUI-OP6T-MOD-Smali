.class Lcom/android/systemui/pip/PipTaskOrganizer$3;
.super Landroid/window/WindowContainerTransactionCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

.field final synthetic val$destinationBounds:Landroid/graphics/Rect;

.field final synthetic val$durationMs:J


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->val$destinationBounds:Landroid/graphics/Rect;

    iput-wide p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->val$durationMs:J

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransactionReady$0(Landroid/graphics/Rect;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$1000(Lcom/android/systemui/pip/PipTaskOrganizer;)Lcom/android/systemui/pip/PipAnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-static {v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$900(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/systemui/pip/PipAnimationController;->getAnimator(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-static {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$800(Lcom/android/systemui/pip/PipTaskOrganizer;)Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTransactionReady$0$PipTaskOrganizer$3(Landroid/graphics/Rect;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pip/PipTaskOrganizer$3;->lambda$onTransactionReady$0(Landroid/graphics/Rect;J)V

    return-void
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-static {p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$700(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->val$destinationBounds:Landroid/graphics/Rect;

    iget-wide v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$3;->val$durationMs:J

    new-instance v2, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer$3;Landroid/graphics/Rect;J)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
