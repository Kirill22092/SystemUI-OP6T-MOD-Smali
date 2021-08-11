.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/systemui/bubbles/Bubble;

.field public final synthetic f$2:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;->f$1:Lcom/android/systemui/bubbles/Bubble;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;->f$2:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;->f$1:Lcom/android/systemui/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;->f$2:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$41$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;)V

    return-void
.end method
