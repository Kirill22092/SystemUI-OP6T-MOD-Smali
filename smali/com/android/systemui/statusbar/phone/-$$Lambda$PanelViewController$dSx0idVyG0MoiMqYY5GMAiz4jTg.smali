.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$createHeightAnimator$3$PanelViewController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
