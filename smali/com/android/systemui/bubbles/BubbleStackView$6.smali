.class Lcom/android/systemui/bubbles/BubbleStackView$6;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 529
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z

    .line 537
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1300(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1400(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 549
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1600(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleViewProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 551
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->onGestureFinished()V

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 558
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_0

    .line 564
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    goto :goto_0

    .line 570
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1700(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 571
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$6;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_5
    :goto_0
    return-void
.end method
