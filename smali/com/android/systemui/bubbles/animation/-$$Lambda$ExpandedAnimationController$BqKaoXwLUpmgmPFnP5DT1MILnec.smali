.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;->f$1:Z

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;->f$1:Z

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$3$ExpandedAnimationController(ZILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
