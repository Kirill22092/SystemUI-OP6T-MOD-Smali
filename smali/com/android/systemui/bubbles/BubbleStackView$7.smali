.class Lcom/android/systemui/bubbles/BubbleStackView$7;
.super Lcom/android/systemui/util/RelativeTouchListener;
.source "BubbleStackView.java"


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

    .line 581
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/android/systemui/util/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1300(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1800(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1900(Lcom/android/systemui/bubbles/BubbleStackView;Z)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowManageEducation(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 602
    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 603
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2100(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    move-result-object v3

    .line 600
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->prepareForBubbleDrag(Landroid/view/View;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V

    .line 605
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 608
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getMagnetizedBubbleDraggingOut()Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2202(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/util/magnetictarget/MagnetizedObject;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    goto :goto_0

    .line 612
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimations()V

    .line 613
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$900(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 614
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2300(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 617
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getMagnetizedStack(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2202(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/util/magnetictarget/MagnetizedObject;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 618
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2200(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setMagnetListener(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V

    .line 620
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z

    .line 624
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2500(Lcom/android/systemui/bubbles/BubbleStackView;Z)V

    .line 627
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2600(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1300(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2700(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2600(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 647
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 648
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p0

    add-float/2addr p3, p5

    add-float/2addr p4, p6

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dragBubbleOut(Landroid/view/View;FF)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->hideStackUserEducation(Z)V

    .line 652
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p0

    add-float/2addr p3, p5

    add-float/2addr p4, p6

    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackFromTouch(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .locals 0

    .line 662
    iget-object p4, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p4}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1300(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 668
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p4, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2600(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/MotionEvent;)Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_3

    .line 669
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 670
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p2

    invoke-virtual {p2, p1, p7, p8}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    goto :goto_1

    .line 674
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 675
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p2

    add-float/2addr p3, p5

    invoke-virtual {p2, p3, p7, p8}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    const/4 p3, 0x1

    if-gtz p2, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    move p2, p4

    .line 674
    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2802(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z

    .line 678
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2900(Lcom/android/systemui/bubbles/BubbleStackView;Z)V

    .line 680
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 p2, 0x0

    const/4 p3, 0x7

    invoke-static {p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3000(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    .line 684
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$600(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 687
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1, p4}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z

    .line 690
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$7;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0, p4}, Lcom/android/systemui/bubbles/BubbleStackView;->access$2500(Lcom/android/systemui/bubbles/BubbleStackView;Z)V

    return-void
.end method
