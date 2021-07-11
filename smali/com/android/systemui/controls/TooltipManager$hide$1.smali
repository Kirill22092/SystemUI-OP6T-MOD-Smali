.class final Lcom/android/systemui/controls/TooltipManager$hide$1;
.super Ljava/lang/Object;
.source "TooltipManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/TooltipManager;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animate:Z

.field final synthetic this$0:Lcom/android/systemui/controls/TooltipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/TooltipManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/TooltipManager$hide$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    iput-boolean p2, p0, Lcom/android/systemui/controls/TooltipManager$hide$1;->$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/controls/TooltipManager$hide$1;->$animate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager$hide$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {p0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 146
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 148
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 150
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager$hide$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {v0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager$hide$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-virtual {p0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method
