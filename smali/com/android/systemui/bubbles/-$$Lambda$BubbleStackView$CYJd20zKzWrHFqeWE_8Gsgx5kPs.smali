.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/systemui/bubbles/BadgedImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BadgedImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;->f$1:Lcom/android/systemui/bubbles/BadgedImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;->f$1:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$38$BubbleStackView(Lcom/android/systemui/bubbles/BadgedImageView;)V

    return-void
.end method
