.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$screenshotAnimatingOutBubbleIntoSurface$48$BubbleStackView(Ljava/util/function/Consumer;)V

    return-void
.end method
