.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$lwSCWVmpTO3-JMK1heDr17u172Q;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$16$GlobalScreenshot(Landroid/animation/ValueAnimator;)V

    return-void
.end method
