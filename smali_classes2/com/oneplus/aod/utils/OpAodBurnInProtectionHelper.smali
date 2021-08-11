.class public Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;
.super Ljava/lang/Object;
.source "OpAodBurnInProtectionHelper.java"

# interfaces
.implements Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

.field private mBurnInProtections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;",
            ">;"
        }
    .end annotation
.end field

.field private mClockContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mSystemInfoView:Landroid/view/ViewGroup;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInProtections:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->initControllers()V

    return-void
.end method

.method private getClockView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mClockContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mClockContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMoveDelay()I
    .locals 3

    const-string v0, "sys.aod.move_delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoveDelay: override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpAodBurnInProtectionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initControllers()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInProtections:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;

    iget-object v3, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInProtections:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;

    iget-object v3, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInProtections:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onAlarm()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->getClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->onAlarm()V

    goto :goto_0

    :cond_0
    const-string p0, "OpAodBurnInProtectionHelper"

    const-string v0, "onAlarm: controller not exists"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private resetAlarm()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mCurrentTime:J

    return-void
.end method


# virtual methods
.method public moveBackToOriginalPosition(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "OpAodBurnInProtectionHelper"

    const-string v1, "moveBackToOriginalPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->resetAlarm()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->moveBackToOriginalPosition(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "moveBackToOriginalPosition: controller not exists"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/aod/controller/IOpClockController;->getBurnInHandleClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInProtections:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    iput-object v1, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClockChanged: burnin handle class= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", exists= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAodBurnInProtectionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mClockContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mSystemInfoView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p0, p1}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->setup(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/aod/controller/IOpClockController;)V

    :cond_3
    return-void
.end method

.method public onTimeChanged()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->getClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->getMoveDelay()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3b

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTimeChanged: mCurrentTime= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mCurrentTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", threshold= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpAodBurnInProtectionHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v3, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mCurrentTime:J

    sub-long v3, v0, v3

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->onAlarm()V

    iput-wide v0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mCurrentTime:J

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpAodBurnInProtectionHelper"

    const-string v0, "onViewAttachedToWindow"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->reset()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->resetAlarm()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpAodBurnInProtectionHelper"

    const-string v0, "onViewDetachedFromWindow"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->resetAlarm()V

    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "OpAodBurnInProtectionHelper"

    const-string v1, "recover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->resetAlarm()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mBurnInController:Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/aod/utils/burnin/IBurnInProtectionController;->recover()V

    goto :goto_0

    :cond_0
    const-string p0, "recover: controller not exists"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerViews(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mClockContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->mSystemInfoView:Landroid/view/ViewGroup;

    return-void
.end method
