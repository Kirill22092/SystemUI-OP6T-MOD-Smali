.class Lcom/android/systemui/pip/PipTaskOrganizer$1;
.super Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/PipTaskOrganizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer$1;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-direct {p0}, Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPipAnimationCancel(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$1;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$300(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    return-void
.end method

.method public onPipAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$1;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v2

    .line 121
    invoke-virtual {p2}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v3

    .line 120
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$100(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$1;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$200(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    return-void
.end method

.method public onPipAnimationStart(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$1;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$000(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    return-void
.end method
