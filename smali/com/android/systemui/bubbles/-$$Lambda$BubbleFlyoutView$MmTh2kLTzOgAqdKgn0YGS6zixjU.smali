.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

.field public final synthetic f$1:Landroid/graphics/PointF;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$1:Landroid/graphics/PointF;

    iput-boolean p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$2:Z

    iput-object p4, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$1:Landroid/graphics/PointF;

    iget-boolean v2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$2:Z

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->lambda$setupFlyoutStartingAsDot$0$BubbleFlyoutView(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    return-void
.end method
