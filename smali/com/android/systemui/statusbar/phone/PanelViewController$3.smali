.class Lcom/android/systemui/statusbar/phone/PanelViewController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field final synthetic val$clearAllExpandHack:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->val$clearAllExpandHack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 772
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    if-eqz p1, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    const/4 p1, 0x1

    .line 775
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 780
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    if-eqz p1, :cond_0

    .line 781
    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 783
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->val$clearAllExpandHack:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->mCancelled:Z

    if-nez p1, :cond_1

    .line 784
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    .line 786
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 787
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->mCancelled:Z

    if-nez p1, :cond_2

    .line 788
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 790
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method
