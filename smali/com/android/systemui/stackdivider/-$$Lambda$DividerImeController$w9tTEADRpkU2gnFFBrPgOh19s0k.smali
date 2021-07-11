.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/DividerImeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerImeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;->f$0:Lcom/android/systemui/stackdivider/DividerImeController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;->f$0:Lcom/android/systemui/stackdivider/DividerImeController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$startAsyncAnimation$0$DividerImeController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
