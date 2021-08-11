.class Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getPerf()Landroid/util/BoostFramework;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getPerf()Landroid/util/BoostFramework;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->mCancelled:Z

    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string p1, "HeightAnimatorForBiometricUnlock cancel"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeightAnimatorForBiometricUnlock end, Cancelled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getPerf()Landroid/util/BoostFramework;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->getPerf()Landroid/util/BoostFramework;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;Landroid/animation/ValueAnimator;)V

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->mCancelled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string p1, "HeightAnimatorForBiometricUnlock start"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
