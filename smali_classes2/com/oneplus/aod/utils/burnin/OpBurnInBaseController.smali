.class public abstract Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;
.super Ljava/lang/Object;
.source "OpBurnInBaseController.java"

# interfaces
.implements Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;


# instance fields
.field protected mBound:Landroid/graphics/Rect;

.field protected mClockContainer:Landroid/view/ViewGroup;

.field protected mClockController:Lcom/oneplus/aod/controller/IOpClockController;

.field protected mSystemInfoView:Landroid/view/ViewGroup;

.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getClockView()Landroid/view/View;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getClockViewMarginTop()I
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract handleOnAlarm(Landroid/view/View;Landroid/view/ViewGroup;)V
.end method

.method protected abstract handleSetup(Lcom/oneplus/aod/controller/IOpClockController;)V
.end method

.method public moveBackToOriginalPosition(Ljava/lang/Runnable;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->recover()V

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mSystemInfoView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->handleOnAlarm(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v0, "onAlarm: clockView not exists"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public recover()V
    .locals 2

    .line 77
    invoke-interface {p0}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->reset()V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->recoverFromBurnInScreen()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v1, "recover: clockView not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->recoverFromBurnInScreen()V

    goto :goto_1

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v0, "recover: statusbar not exists"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockContainer:Landroid/view/ViewGroup;

    .line 51
    iput-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mSystemInfoView:Landroid/view/ViewGroup;

    .line 52
    iput-object v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    return-void
.end method

.method public setup(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockContainer:Landroid/view/ViewGroup;

    .line 35
    iput-object p2, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mSystemInfoView:Landroid/view/ViewGroup;

    .line 36
    iput-object p3, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p3, :cond_0

    .line 39
    invoke-interface {p3}, Lcom/oneplus/aod/controller/IOpClockController;->getBound()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mBound:Landroid/graphics/Rect;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mBound:Landroid/graphics/Rect;

    .line 43
    :goto_0
    invoke-virtual {p0, p3}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->handleSetup(Lcom/oneplus/aod/controller/IOpClockController;)V

    return-void
.end method
