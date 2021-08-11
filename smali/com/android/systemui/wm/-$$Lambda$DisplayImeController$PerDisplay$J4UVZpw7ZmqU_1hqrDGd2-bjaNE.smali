.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FZFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iput p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$1:F

    iput-boolean p3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$2:Z

    iput p4, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$3:F

    iput p5, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$1:F

    iget-boolean v2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$2:Z

    iget v3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$3:F

    iget v4, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;->f$4:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$startAnimation$4$DisplayImeController$PerDisplay(FZFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
