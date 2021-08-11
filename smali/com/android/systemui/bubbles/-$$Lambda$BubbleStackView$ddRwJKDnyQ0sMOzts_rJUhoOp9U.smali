.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ddRwJKDnyQ0sMOzts_rJUhoOp9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ddRwJKDnyQ0sMOzts_rJUhoOp9U;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ddRwJKDnyQ0sMOzts_rJUhoOp9U;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    check-cast p1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$34$BubbleStackView(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method
