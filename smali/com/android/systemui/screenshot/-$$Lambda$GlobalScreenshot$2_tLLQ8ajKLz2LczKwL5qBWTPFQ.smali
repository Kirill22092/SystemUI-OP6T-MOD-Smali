.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;->f$1:F

    iput p3, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget v1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;->f$1:F

    iget p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2_tLLQ8ajKLz2LczKwL5qBWTPFQ;->f$2:F

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$17$GlobalScreenshot(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
