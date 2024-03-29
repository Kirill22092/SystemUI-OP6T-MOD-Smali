.class public Lcom/android/systemui/analytics/DataCollector;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static sInstance:Lcom/android/systemui/analytics/DataCollector;


# instance fields
.field private mAllowReportRejectedTouch:Z

.field private mCollectBadTouches:Z

.field private final mContext:Landroid/content/Context;

.field private mCornerSwiping:Z

.field private mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

.field private mDisableUnlocking:Z

.field private mEnableCollector:Z

.field private mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

.field private final mHandler:Landroid/os/Handler;

.field private final mPluginListener:Lcom/android/systemui/plugins/PluginListener;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTrackingStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

    new-instance v0, Lcom/android/systemui/analytics/DataCollector$1;

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/analytics/DataCollector$1;-><init>(Lcom/android/systemui/analytics/DataCollector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/analytics/DataCollector$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/analytics/DataCollector$2;-><init>(Lcom/android/systemui/analytics/DataCollector;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mPluginListener:Lcom/android/systemui/plugins/PluginListener;

    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_collect_bad_touches"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_allow_rejected_touch_reports"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_disable_unlocking"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    const-class p1, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mPluginListener:Lcom/android/systemui/plugins/PluginListener;

    const-class v0, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/analytics/DataCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/analytics/DataCollector;)Lcom/android/systemui/plugins/FalsingPlugin;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/plugins/FalsingPlugin;)Lcom/android/systemui/plugins/FalsingPlugin;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/analytics/DataCollector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/analytics/DataCollector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    return p0
.end method

.method private addEvent(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/analytics/SensorLoggerSession;->addPhoneEvent(IJ)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;
    .locals 1

    sget-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/analytics/DataCollector;

    invoke-direct {v0, p0}, Lcom/android/systemui/analytics/DataCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    :cond_0
    sget-object p0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    return-object p0
.end method

.method private onSessionEnd(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    iget-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V

    :cond_1
    return-void
.end method

.method private onSessionStart()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    new-instance v0, Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/analytics/SensorLoggerSession;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    return-void
.end method

.method private queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/analytics/DataCollector$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/analytics/DataCollector$3;-><init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->onSessionStart()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sessionExitpoint(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSessionEnd(I)V

    :cond_0
    return-void
.end method

.method private updateConfiguration()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_collect_bad_touches"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_allow_rejected_touch_reports"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_disable_unlocking"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEnabledFull()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_0
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :goto_0
    return-void
.end method

.method public onBouncerHidden()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onBouncerShown()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 1

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onCameraOn()V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    return-void
.end method

.method public onFalsingSessionStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificationActive()V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificationDoubleTap()V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onQsDown()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->addSensorEvent(Landroid/hardware/SensorEvent;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    return-void
.end method

.method public onSucccessfulUnlock()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->addMotionEvent(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->setTouchArea(II)V

    :cond_0
    return-void
.end method

.method public onTrackingStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_0
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    const-string v0, "Generating rejected touch report failed: session timed out."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    invoke-virtual {v0}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "rejected_touch_reports"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected_touch_report_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setNotificationExpanded()V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :goto_0
    return-void
.end method
