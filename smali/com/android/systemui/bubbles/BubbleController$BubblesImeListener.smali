.class Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;
.super Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;
.source "BubbleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubblesImeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .locals 0

    .line 1704
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method

.method private synthetic lambda$onImeVisibilityChanged$0(ZI)V
    .locals 0

    .line 1708
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->onImeVisibilityChanged(ZI)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onImeVisibilityChanged$0$BubbleController$BubblesImeListener(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->lambda$onImeVisibilityChanged$0(ZI)V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;-><init>(Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
