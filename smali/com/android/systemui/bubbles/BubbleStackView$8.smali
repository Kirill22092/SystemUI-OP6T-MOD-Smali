.class Lcom/android/systemui/bubbles/BubbleStackView$8;
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

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1700(Lcom/android/systemui/bubbles/BubbleStackView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3102(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)Lcom/android/systemui/bubbles/Bubble;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3102(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)Lcom/android/systemui/bubbles/Bubble;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3300(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleFlyoutView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3200(Lcom/android/systemui/bubbles/BubbleStackView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$8;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$3200(Lcom/android/systemui/bubbles/BubbleStackView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
