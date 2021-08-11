.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;->f$1:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;->f$2:F

    check-cast p1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateCollapse$32$BubbleStackView(Landroid/view/View;FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method
