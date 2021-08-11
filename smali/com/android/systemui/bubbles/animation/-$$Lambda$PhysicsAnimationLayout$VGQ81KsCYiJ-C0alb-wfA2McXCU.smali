.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->lambda$removeView$0$PhysicsAnimationLayout(Landroid/view/View;)V

    return-void
.end method
