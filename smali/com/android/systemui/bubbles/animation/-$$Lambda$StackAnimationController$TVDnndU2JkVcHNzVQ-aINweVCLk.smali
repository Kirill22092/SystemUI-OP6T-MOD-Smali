.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Z[Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;->f$2:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;->f$2:[Ljava/lang/Runnable;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$springFirstBubbleWithStackFollowing$2$StackAnimationController(Z[Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
