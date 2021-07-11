.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iXgIC2YqSeoFlnxX0VwZo_0Hqrs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleExpandedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iXgIC2YqSeoFlnxX0VwZo_0Hqrs;->f$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iXgIC2YqSeoFlnxX0VwZo_0Hqrs;->f$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->lambda$onFinishInflate$1$BubbleExpandedView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
