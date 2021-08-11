.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$4$BubbleStackView(Ljava/util/function/Consumer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
