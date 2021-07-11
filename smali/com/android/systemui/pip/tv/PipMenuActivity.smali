.class public Lcom/android/systemui/pip/tv/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private final mPipComponentBuilder:Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;

.field private mPipControlsViewController:Lcom/android/systemui/pip/tv/PipControlsViewController;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private mRestorePipSizeWhenClose:Z

.field private mTvPipComponent:Lcom/android/systemui/pip/tv/dagger/TvPipComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipComponentBuilder:Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-void
.end method

.method private restorePipAndFinish()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->isPipShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 67
    :cond_0
    sget p1, Lcom/android/systemui/R$layout;->tv_pip_menu:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipComponentBuilder:Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;

    sget v0, Lcom/android/systemui/R$id;->pip_controls:I

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlsView;

    .line 68
    invoke-interface {p1, v0}, Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;->pipControlsView(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;->build()Lcom/android/systemui/pip/tv/dagger/TvPipComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mTvPipComponent:Lcom/android/systemui/pip/tv/dagger/TvPipComponent;

    .line 70
    invoke-interface {p1}, Lcom/android/systemui/pip/tv/dagger/TvPipComponent;->getPipControlsViewController()Lcom/android/systemui/pip/tv/PipControlsViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsViewController:Lcom/android/systemui/pip/tv/PipControlsViewController;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 75
    sget p1, Lcom/android/systemui/R$anim;->tv_pip_menu_fade_in_animation:I

    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsViewController:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->getView()Lcom/android/systemui/pip/tv/PipControlsView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 78
    sget p1, Lcom/android/systemui/R$anim;->tv_pip_menu_fade_out_animation:I

    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsViewController:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->getView()Lcom/android/systemui/pip/tv/PipControlsView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "custom_actions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resumePipResizing(I)V

    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "custom_actions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    return-void
.end method

.method public onPipEntered(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsViewController:Lcom/android/systemui/pip/tv/PipControlsViewController;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 156
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->setActions(Ljava/util/List;)V

    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->suspendPipResizing(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    return-void
.end method
