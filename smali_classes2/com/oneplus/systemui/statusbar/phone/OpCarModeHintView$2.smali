.class Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;
.super Ljava/lang/Object;
.source "OpCarModeHintView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->getShowAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 203
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "show"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->access$102(Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;Z)Z

    .line 205
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 206
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
