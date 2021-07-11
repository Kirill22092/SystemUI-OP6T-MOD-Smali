.class Lcom/android/systemui/bubbles/BubbleStackView$5;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReleasedInTarget$0()V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1100(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 517
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$800(Lcom/android/systemui/bubbles/BubbleStackView;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReleasedInTarget$0$BubbleStackView$5()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView$5;->lambda$onReleasedInTarget$0()V

    return-void
.end method

.method public onReleasedInTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 2

    .line 513
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 514
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$700(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$5$Lr-rLsLBxyFUc80K5g0SFXrW0Yg;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$5$Lr-rLsLBxyFUc80K5g0SFXrW0Yg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView$5;)V

    .line 513
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateStackDismissal(FLjava/lang/Runnable;)V

    .line 521
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$600(Lcom/android/systemui/bubbles/BubbleStackView;)V

    return-void
.end method

.method public onStuckToTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$900(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$500(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Z)V

    return-void
.end method

.method public onUnstuckFromTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V
    .locals 2

    .line 500
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$900(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$500(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Z)V

    if-eqz p4, :cond_0

    .line 503
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p1

    iget-object p4, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 504
    invoke-static {p4}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->x:F

    .line 503
    invoke-virtual {p1, p4, p2, p3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    .line 505
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$600(Lcom/android/systemui/bubbles/BubbleStackView;)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$5;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->onUnstuckFromTarget()V

    :goto_0
    return-void
.end method
