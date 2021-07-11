.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iput p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;->f$1:F

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;->f$1:F

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$animateStackDismissal$1$StackAnimationController(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
