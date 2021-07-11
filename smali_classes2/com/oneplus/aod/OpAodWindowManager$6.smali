.class Lcom/oneplus/aod/OpAodWindowManager$6;
.super Ljava/lang/Object;
.source "OpAodWindowManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodWindowManager;->genAodDisappearAnimation(Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodWindowManager;

.field final synthetic val$useCanvasAodAnimation:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;Z)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$6;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    iput-boolean p2, p0, Lcom/oneplus/aod/OpAodWindowManager$6;->val$useCanvasAodAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 596
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 597
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$6;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$1400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 598
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager$6;->val$useCanvasAodAnimation:Z

    if-nez v0, :cond_0

    .line 599
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$6;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$500(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
