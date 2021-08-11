.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$8DxRCXjWXD-jbCBbQO_LWChzL0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleExpandedView$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$8DxRCXjWXD-jbCBbQO_LWChzL0s;->f$0:Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$8DxRCXjWXD-jbCBbQO_LWChzL0s;->f$0:Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->lambda$onTaskRemovalStarted$2$BubbleExpandedView$1()V

    return-void
.end method
