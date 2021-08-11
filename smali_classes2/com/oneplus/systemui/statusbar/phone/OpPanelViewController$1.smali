.class Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;
.super Ljava/lang/Object;
.source "OpPanelViewController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

.field final synthetic val$endHeight:F

.field final synthetic val$startHeight:F


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;FF)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$endHeight:F

    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$startHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$endHeight:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$startHeight:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    sub-float v2, v1, v0

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->opGetClockY()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->opGetMaxClockY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$startHeight:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$startHeight:F

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHeightAnimatorForBiometricUnlock percentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " diff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    :goto_0
    return-void
.end method
