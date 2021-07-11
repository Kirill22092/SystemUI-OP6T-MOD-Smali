.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardAffordanceHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3871
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 3871
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method private synthetic lambda$onAnimationToSideStarted$0()V
    .locals 0

    .line 3899
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    return-void
.end method

.method private synthetic lambda$onAnimationToSideStarted$1()V
    .locals 1

    .line 3923
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onIconClicked$2()V
    .locals 1

    .line 3995
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    .line 3996
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method


# virtual methods
.method public getAffordanceFalsingFactor()F
    .locals 0

    .line 4038
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .line 4014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4015
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 2

    .line 4026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4027
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMaxTranslationDistance()F
    .locals 4

    .line 3964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result p0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .line 4020
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4021
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 2

    .line 4032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4033
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$onAnimationToSideStarted$0$NotificationPanelViewController$KeyguardAffordanceHelperCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->lambda$onAnimationToSideStarted$0()V

    return-void
.end method

.method public synthetic lambda$onAnimationToSideStarted$1$NotificationPanelViewController$KeyguardAffordanceHelperCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->lambda$onAnimationToSideStarted$1()V

    return-void
.end method

.method public synthetic lambda$onIconClicked$2$NotificationPanelViewController$KeyguardAffordanceHelperCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->lambda$onIconClicked$2()V

    return-void
.end method

.method public needsAntiFalsing()Z
    .locals 1

    .line 4043
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationToSideEnded()V
    .locals 4

    .line 3945
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3951
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->readyForKeyguardDone()V

    .line 3953
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationToSideEnded isPanelExpanded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelExpanded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isOccluded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3954
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3953
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3957
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    :cond_1
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 8

    .line 3876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3878
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 3881
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 3882
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 3884
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_4

    .line 3887
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p1

    const/16 v2, 0xbe

    invoke-virtual {p1, v2, p2, p3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 3888
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_DIALER:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 3889
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    .line 3892
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLeftVoiceAssist()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3893
    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateLaunchingLeftAffordance(Z)V

    .line 3897
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3898
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$KeyguardAffordanceHelperCallback$bICF6GSeDLbT7pBsxqsaY2Sd-4Y;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$KeyguardAffordanceHelperCallback$bICF6GSeDLbT7pBsxqsaY2Sd-4Y;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto/16 :goto_1

    .line 3903
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto/16 :goto_1

    .line 3906
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3907
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "lockscreen_affordance"

    .line 3906
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3909
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3910
    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateLaunchingCameraState(Z)V

    .line 3911
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3913
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p1

    const/16 v0, 0xbd

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    const-string p1, "lock_camera"

    const-string p2, ""

    const-string p3, "1"

    .line 3916
    invoke-static {p1, p2, p3}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3918
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_CAMERA:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 3920
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    .line 3921
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3922
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$KeyguardAffordanceHelperCallback$R1jytGxMXTpJHS829GYzcUGilW8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$KeyguardAffordanceHelperCallback$R1jytGxMXTpJHS829GYzcUGilW8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 3927
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 3934
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result p1

    if-nez p1, :cond_7

    .line 3935
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLaunchTransitionTimeout()V

    goto :goto_2

    .line 3937
    :cond_7
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string p2, "do not start launch transition timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    return-void
.end method

.method public onIconClicked(Z)V
    .locals 3

    .line 3990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3993
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    .line 3994
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$KeyguardAffordanceHelperCallback$sp6x_JxGl2c39DMqfoi0x_FWE1U;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$KeyguardAffordanceHelperCallback$sp6x_JxGl2c39DMqfoi0x_FWE1U;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;)V

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 3999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 4002
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraHintStarted()V

    goto :goto_1

    .line 4004
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLeftVoiceAssist()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4005
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onVoiceAssistHintStarted()V

    goto :goto_1

    .line 4007
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPhoneHintStarted()V

    :goto_1
    return-void
.end method

.method public onSwipingAborted()V
    .locals 1

    .line 3984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    .line 3985
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->unbindCameraPrewarmService(Z)V

    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 3

    .line 3969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    .line 3972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 3975
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->bindCameraPrewarmService()V

    .line 3977
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 3978
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3979
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    return-void
.end method
