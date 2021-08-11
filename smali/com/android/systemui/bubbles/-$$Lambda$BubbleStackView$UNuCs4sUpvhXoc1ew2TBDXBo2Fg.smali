.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;->f$1:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$29$BubbleStackView(F)V

    return-void
.end method
