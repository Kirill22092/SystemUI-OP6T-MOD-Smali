.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

.field public final synthetic f$1:[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;->f$1:[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;->f$1:[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsAnimationController$k470cCDrnNZB7vKHsf7OzOwkMRY;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->lambda$setEndActionForMultipleProperties$2$PhysicsAnimationLayout$PhysicsAnimationController([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Ljava/lang/Runnable;)V

    return-void
.end method
