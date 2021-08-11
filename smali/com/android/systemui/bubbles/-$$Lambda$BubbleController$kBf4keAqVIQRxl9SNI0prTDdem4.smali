.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onBubbleViewsReady(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;->f$2:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$inflateAndAdd$7$BubbleController(ZZLcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
