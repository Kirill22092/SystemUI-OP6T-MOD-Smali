.class public Lcom/android/systemui/classifier/FalsingManagerProxy;
.super Ljava/lang/Object;
.source "FalsingManagerProxy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mBrightlineEnabled:Z

.field private final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field private mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mUiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/concurrent/Executor;Landroid/util/DisplayMetrics;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dock/DockManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iput-object p7, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iput-object p8, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p10, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p11, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-string p4, "FalsingManager"

    invoke-virtual {p5, p4}, Lcom/android/systemui/util/sensors/ProximitySensor;->setTag(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    const/4 p7, 0x1

    invoke-virtual {p5, p7}, Lcom/android/systemui/util/sensors/ProximitySensor;->setSensorDelay(I)V

    iput-object p6, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance p5, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$15gIs-9mVwyDjJbglxP0IV0T3ag;

    invoke-direct {p5, p0, p1}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$15gIs-9mVwyDjJbglxP0IV0T3ag;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    iget-object p5, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object p6, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo p7, "systemui"

    invoke-virtual {p5, p7, p3, p6}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance p3, Lcom/android/systemui/classifier/FalsingManagerProxy$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy$1;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-interface {p2, p3, p1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    invoke-virtual {p9, p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManagerProxy;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/FalsingManagerProxy;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/FalsingManagerProxy;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy;->onDeviceConfigPropertiesChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private onDeviceConfigPropertiesChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "systemui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    return-void
.end method

.method private setupFalsingManager(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v1, "systemui"

    const-string v2, "brightline_falsing_manager_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mBrightlineEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mBrightlineEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    :cond_1
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/classifier/FalsingManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method getInternalFalsingManager()Lcom/android/systemui/plugins/FalsingManager;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method public isClassifierEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result p0

    return p0
.end method

.method public isFalseTouch()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$FalsingManagerProxy(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy;->lambda$new$0(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerShown()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDismissed()V

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method

.method public onNotificationStartDismissing()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationStartDismissing()V

    return-void
.end method

.method public onNotificationStopDismissing()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationStopDismissing()V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onQsDown()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOff()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->setNotificationExpanded()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setShowingAod(Z)V

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p0

    return p0
.end method
