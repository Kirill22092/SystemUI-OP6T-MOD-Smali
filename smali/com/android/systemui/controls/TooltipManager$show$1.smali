.class final Lcom/android/systemui/controls/TooltipManager$show$1;
.super Ljava/lang/Object;
.source "TooltipManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/TooltipManager;->show(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $x:I

.field final synthetic $y:I

.field final synthetic this$0:Lcom/android/systemui/controls/TooltipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/TooltipManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    iput p2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$x:I

    iput p3, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$x:I

    const/4 v4, 0x0

    aget v5, v1, v4

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v5}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    sub-int/2addr v3, v5

    int-to-float v0, v3

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$y:I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-static {v2}, Lcom/android/systemui/controls/TooltipManager;->access$getBelow$p(Lcom/android/systemui/controls/TooltipManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    :cond_0
    int-to-float v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {p0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
