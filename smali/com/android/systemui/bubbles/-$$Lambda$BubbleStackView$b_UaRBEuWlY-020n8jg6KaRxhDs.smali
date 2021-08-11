.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;->f$1:F

    check-cast p1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$27$BubbleStackView(FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method
