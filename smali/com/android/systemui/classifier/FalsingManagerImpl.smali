.class public Lcom/android/systemui/classifier/FalsingManagerImpl;
.super Ljava/lang/Object;
.source "FalsingManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# static fields
.field private static final CLASSIFIER_SENSORS:[I

.field private static final COLLECTOR_SENSORS:[I


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerOffOnDown:Z

.field private mBouncerOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataCollector:Lcom/android/systemui/analytics/DataCollector;

.field private mEnforceBouncer:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

.field private mIsFalseTouchCalls:I

.field private mIsTouchScreen:Z

.field private mJustUnlockedWithFace:Z

.field private final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingWtf:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowingAod:Z

.field private mState:I

.field public mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 61
    sput-object v0, Lcom/android/systemui/classifier/FalsingManagerImpl;->CLASSIFIER_SENSORS:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 65
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManagerImpl;->COLLECTOR_SENSORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x8
        0x5
        0xb
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mEnforceBouncer:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOffOnDown:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsTouchScreen:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mJustUnlockedWithFace:Z

    .line 90
    iput v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    .line 97
    new-instance v1, Lcom/android/systemui/classifier/FalsingManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingManagerImpl$1;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 110
    new-instance v1, Lcom/android/systemui/classifier/FalsingManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingManagerImpl$2;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 124
    new-instance v1, Lcom/android/systemui/classifier/FalsingManagerImpl$3;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/classifier/FalsingManagerImpl$3;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 130
    new-instance v1, Lcom/android/systemui/classifier/FalsingManagerImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingManagerImpl$4;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    .line 145
    const-class v1, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 149
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 150
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    .line 151
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 153
    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "falsing_manager_enforce_bouncer"

    .line 154
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    .line 153
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->updateConfiguration()V

    .line 159
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 160
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManagerImpl;)Lcom/android/systemui/analytics/DataCollector;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/FalsingManagerImpl;)Lcom/android/systemui/classifier/HumanInteractionClassifier;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/FalsingManagerImpl;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/classifier/FalsingManagerImpl;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/classifier/FalsingManagerImpl;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/classifier/FalsingManagerImpl;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mJustUnlockedWithFace:Z

    return p1
.end method

.method private clearPendingWtf()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mPendingWtf:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mPendingWtf:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result p0

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

.method private synthetic lambda$isFalseTouch$2(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session did not become active after query for a false touch."

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mState="

    .line 293
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Look for warnings ~1000ms earlier to see root cause."

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "isFalseTouch"

    .line 287
    invoke-static {p1, p0, p4}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$registerSensors$1(Landroid/hardware/Sensor;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private synthetic lambda$sessionExitpoint$0()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private onSessionStart()V
    .locals 2

    .line 217
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "classifierEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->isClassifierEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSessionStart"

    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->clearPendingWtf()V

    :cond_0
    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    const/4 v1, 0x1

    .line 222
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mJustUnlockedWithFace:Z

    .line 224
    iput v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    .line 226
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/android/systemui/classifier/FalsingManagerImpl;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->registerSensors([I)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabledFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    sget-object v0, Lcom/android/systemui/classifier/FalsingManagerImpl;->COLLECTOR_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->registerSensors([I)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onFalsingSessionStarted()V

    :cond_3
    return-void
.end method

.method private registerSensors([I)V
    .locals 5

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 239
    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;Landroid/hardware/Sensor;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->onSessionStart()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sessionExitpoint(Z)V
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->shouldSessionBeActive()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_0
    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    .line 192
    iget v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    if-eqz v0, :cond_2

    .line 193
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calls before failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isFalseTouchCalls"

    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    const-string v2, "falsing_failure_after_attempts"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 198
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$8SXkW2Wsm8XWKvooYKTPgEEzXnU;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$8SXkW2Wsm8XWKvooYKTPgEEzXnU;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .line 169
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mShowingAod:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateConfiguration()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "falsing_manager_enforce_bouncer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mEnforceBouncer:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 565
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 566
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "FALSING MANAGER"

    .line 552
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "classifierEnabled="

    .line 553
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->isClassifierEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mSessionActive="

    .line 554
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mBouncerOn="

    .line 555
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mState="

    .line 556
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mScreenOn="

    .line 557
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 558
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isClassifierEnabled()Z
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isFalseTouch()Z
    .locals 7

    .line 266
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mPendingWtf:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->isEnabled()Z

    move-result v3

    .line 272
    iget-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    .line 273
    iget v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    new-instance v6, Ljava/lang/Throwable;

    const-string v0, "here"

    invoke-direct {v6, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session is not active, yet there\'s a query for a false touch."

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled="

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState="

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Escalating to WTF if screen does not turn on soon."

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isFalseTouch"

    .line 275
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->wLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;-><init>(Lcom/android/systemui/classifier/FalsingManagerImpl;IILjava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mPendingWtf:Ljava/lang/Runnable;

    .line 297
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsTouchScreen:Z

    if-nez v0, :cond_3

    return v1

    .line 314
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mJustUnlockedWithFace:Z

    if-eqz v0, :cond_4

    return v1

    .line 319
    :cond_4
    iget v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    .line 320
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    if-nez v0, :cond_6

    .line 322
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_5

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calls before success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFalseTouchCalls"

    invoke-static {v3, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    const-string v4, "falsing_success_after_attempts"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 326
    iput v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsFalseTouchCalls:I

    :cond_6
    return v0
.end method

.method public isReportingEnabled()Z
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isReportingEnabled()Z

    move-result p0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isUnlockingDisabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$isFalseTouch$2$FalsingManagerImpl(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/classifier/FalsingManagerImpl;->lambda$isFalseTouch$2(IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$registerSensors$1$FalsingManagerImpl(Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerImpl;->lambda$registerSensors$1(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public synthetic lambda$sessionExitpoint$0$FalsingManagerImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->lambda$sessionExitpoint$0()V

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingAborted()V

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 2

    .line 505
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onAffordanceSwipingStarted"

    const-string v1, ""

    .line 506
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 513
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingStarted(Z)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 2

    .line 404
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBouncerHidden"

    .line 405
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    .line 411
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerHidden()V

    :cond_1
    return-void
.end method

.method public onBouncerShown()V
    .locals 2

    .line 392
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBouncerShown"

    .line 393
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    .line 399
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerShown()V

    :cond_1
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onCameraHintStarted()V

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onCameraOn()V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onExpansionFromPulseStopped()V

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceHintStarted()V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceOn()V

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationActive()V

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDismissed()V

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 2

    .line 445
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " dx="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " dy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " (px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNotificationDoubleTap"

    invoke-static {p2, p1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDoubleTap()V

    return-void
.end method

.method public onNotificationStartDismissing()V
    .locals 2

    .line 485
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onNotificationStartDismissing"

    const-string v1, ""

    .line 486
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 489
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDismissing()V

    return-void
.end method

.method public onNotificationStopDismissing()V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDismissing()V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 2

    .line 457
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onNotificatonStartDraggingDown"

    const-string v1, ""

    .line 458
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 461
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDraggingDown()V

    return-void
.end method

.method public onQsDown()V
    .locals 2

    .line 416
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onQsDown"

    const-string v1, ""

    .line 417
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 420
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onQsDown()V

    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .line 374
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenOff"

    .line 375
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOff()V

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    .line 381
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->sessionExitpoint(Z)V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 2

    .line 362
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenOnFromTouch"

    .line 363
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOnFromTouch()V

    :cond_1
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 349
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurningOn"

    .line 350
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->clearPendingWtf()V

    :cond_0
    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mScreenOn:Z

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onScreenTurningOn()V

    :cond_1
    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 2

    .line 465
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onStartExpandingFromPulse"

    const-string v1, ""

    .line 466
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 469
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onStartExpandingFromPulse()V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 2

    .line 385
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onSucccessfulUnlock"

    const-string v1, ""

    .line 386
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onSucccessfulUnlock()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    .line 534
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mIsTouchScreen:Z

    .line 537
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOffOnDown:Z

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mSessionActive:Z

    if-eqz v0, :cond_2

    .line 540
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/analytics/DataCollector;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 545
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mBouncerOffOnDown:Z

    if-eqz p2, :cond_2

    .line 546
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 2

    .line 428
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onTrackingStarted"

    const-string v1, ""

    .line 429
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 433
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStarted()V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStopped()V

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->onUnlockHintStarted()V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->setNotificationExpanded()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->setQsExpanded(Z)V

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 344
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mShowingAod:Z

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->updateSessionActive()V

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl;->mEnforceBouncer:Z

    return p0
.end method

.method public updateSessionActive()V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->sessionEntrypoint()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->sessionExitpoint(Z)V

    :goto_0
    return-void
.end method
