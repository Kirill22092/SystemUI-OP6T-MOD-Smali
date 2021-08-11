.class Lcom/oneplus/aod/OpWakingUpScrim$2;
.super Ljava/lang/Object;
.source "OpWakingUpScrim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpWakingUpScrim;->getDisappearAnimationWithoutDelay(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpWakingUpScrim;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpWakingUpScrim;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim$2;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpWakingUpScrim"

    const-string p1, "onAnimationCancel"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim$2;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpWakingUpScrim"

    const-string p1, "onAnimationEnd"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim$2;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-static {p0}, Lcom/oneplus/aod/OpWakingUpScrim;->access$400(Lcom/oneplus/aod/OpWakingUpScrim;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
