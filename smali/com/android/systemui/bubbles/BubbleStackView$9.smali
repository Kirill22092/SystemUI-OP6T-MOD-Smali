.class Lcom/android/systemui/bubbles/BubbleStackView$9;
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

    .line 711
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/android/systemui/util/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 715
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3300(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleFlyoutView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3200(Lcom/android/systemui/bubbles/BubbleStackView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0, p5}, Lcom/android/systemui/bubbles/BubbleStackView;->setFlyoutStateForDragLength(F)V

    return-void
.end method

.method public onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .locals 0

    .line 728
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const/high16 p4, -0x3b060000    # -2000.0f

    cmpg-float p4, p7, p4

    if-gez p4, :cond_1

    goto :goto_0

    :cond_0
    const/high16 p4, 0x44fa0000    # 2000.0f

    cmpl-float p4, p7, p4

    if-lez p4, :cond_1

    :goto_0
    move p4, p2

    goto :goto_1

    :cond_1
    move p4, p3

    :goto_1
    const/high16 p6, 0x3e800000    # 0.25f

    if-eqz p1, :cond_2

    .line 733
    iget-object p8, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p8}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3300(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleFlyoutView;

    move-result-object p8

    invoke-virtual {p8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p8

    neg-int p8, p8

    int-to-float p8, p8

    mul-float/2addr p8, p6

    cmpg-float p5, p5, p8

    if-gez p5, :cond_3

    goto :goto_2

    .line 734
    :cond_2
    iget-object p8, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p8}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3300(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleFlyoutView;

    move-result-object p8

    invoke-virtual {p8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p8

    int-to-float p8, p8

    mul-float/2addr p8, p6

    cmpl-float p5, p5, p8

    if-lez p5, :cond_3

    :goto_2
    move p5, p2

    goto :goto_3

    :cond_3
    move p5, p3

    :goto_3
    const/4 p6, 0x0

    if-eqz p1, :cond_4

    cmpl-float p1, p7, p6

    if-lez p1, :cond_5

    goto :goto_4

    :cond_4
    cmpg-float p1, p7, p6

    if-gez p1, :cond_5

    :goto_4
    move p1, p2

    goto :goto_5

    :cond_5
    move p1, p3

    :goto_5
    if-nez p4, :cond_7

    if-eqz p5, :cond_6

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    move p2, p3

    .line 739
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3300(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleFlyoutView;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p3}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3200(Lcom/android/systemui/bubbles/BubbleStackView;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 740
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1, p2, p7}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3400(Lcom/android/systemui/bubbles/BubbleStackView;ZF)V

    .line 742
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$9;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1700(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    return-void
.end method
