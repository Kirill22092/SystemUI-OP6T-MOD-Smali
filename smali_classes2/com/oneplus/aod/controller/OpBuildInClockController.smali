.class public Lcom/oneplus/aod/controller/OpBuildInClockController;
.super Lcom/oneplus/aod/controller/OpClockControllerImpl;
.source "OpBuildInClockController.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartSchedule:Z

.field private mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/controller/OpClockControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/aod/controller/OpBuildInClockController$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/controller/OpBuildInClockController$1;-><init>(Lcom/oneplus/aod/controller/OpBuildInClockController;)V

    iput-object p1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/controller/OpBuildInClockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;->scheduleNext()V

    return-void
.end method

.method private endSchedule()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mStartSchedule:Z

    return-void
.end method

.method private scheduleNext()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mStartSchedule:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "end schedule, do not schedule next"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;->onTimeTick()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x3e8

    invoke-virtual {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleNext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startSchedule()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->isSupportSeconds()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "not support seconds."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mStartSchedule:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mStartSchedule:Z

    invoke-direct {p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;->scheduleNext()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "already start scheduling..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getClockView()Landroid/view/View;
    .locals 5

    invoke-super {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/oneplus/aod/views/IOpAodClock;

    iput-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/OpAodSettings;->isSupportSeconds()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/aod/views/IOpAodClock;->supportSeconds(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/OpAodSettings;->getClockInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oneplus/aod/views/IOpAodClock;->applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17819"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_17819_additional_marginTop:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17801"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_17801_additional_marginTop:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    :goto_0
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, v2

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;->endSchedule()V

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/aod/views/IOpAodClock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    :cond_0
    invoke-super {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->onDestroyView()V

    return-void
.end method

.method public onFodIndicationVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/aod/views/IOpAodClock;->onFodIndicationVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFodShowOrHideOnAod(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/aod/views/IOpAodClock;->onFodShowOrHideOnAod(Z)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/aod/views/IOpAodClock;->onScreenTurnedOff()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;->endSchedule()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/aod/views/IOpAodClock;->onScreenTurnedOn()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;->startSchedule()V

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->onTimeTick()V

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mTime:Ljava/util/Calendar;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/views/IOpAodClock;->onTimeChanged(Ljava/util/Calendar;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserTrigger(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/aod/views/IOpAodClock;->onUserTrigger(I)V

    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->getClockInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/oneplus/aod/views/IOpAodClock;->applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public recoverFromBurnInScreen()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    invoke-interface {v1}, Lcom/oneplus/aod/views/IOpAodClock;->recoverFromBurnInScreen()V

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpBuildInClockController;->mViewImpl:Lcom/oneplus/aod/views/IOpAodClock;

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/OpAodSettings;->getClockInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oneplus/aod/views/IOpAodClock;->applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
