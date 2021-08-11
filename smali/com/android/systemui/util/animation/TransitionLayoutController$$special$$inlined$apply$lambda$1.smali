.class final Lcom/android/systemui/util/animation/TransitionLayoutController$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "TransitionLayoutController.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/TransitionLayoutController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/animation/TransitionLayoutController;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/TransitionLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-static {p0}, Lcom/android/systemui/util/animation/TransitionLayoutController;->access$updateStateFromAnimation(Lcom/android/systemui/util/animation/TransitionLayoutController;)V

    return-void
.end method
