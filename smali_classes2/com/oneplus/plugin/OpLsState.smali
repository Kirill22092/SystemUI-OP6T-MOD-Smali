.class public Lcom/oneplus/plugin/OpLsState;
.super Ljava/lang/Object;
.source "OpLsState.java"

# interfaces
.implements Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/plugin/OpLsState$MyUIHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oneplus/plugin/OpLsState;


# instance fields
.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public final mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

.field private mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mInit:Z

.field private mIsFinishedScreenTuredOn:Z

.field private mIsScreenOn:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mInit:Z

    .line 41
    new-instance v1, Lcom/oneplus/plugin/OpLsState$MyUIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/plugin/OpLsState$MyUIHandler;-><init>(Lcom/oneplus/plugin/OpLsState;Lcom/oneplus/plugin/OpLsState$1;)V

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    .line 48
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsScreenOn:Z

    .line 51
    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {v1}, Lcom/oneplus/plugin/OpPreventModeCtrl;-><init>()V

    iput-object v1, p0, Lcom/oneplus/plugin/OpLsState;->mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/oneplus/plugin/OpBaseCtrl;

    aput-object v1, v2, v0

    .line 56
    iput-object v2, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    .line 128
    new-instance v0, Lcom/oneplus/plugin/OpLsState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/plugin/OpLsState$1;-><init>(Lcom/oneplus/plugin/OpLsState;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/plugin/OpLsState;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/plugin/OpLsState;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpLsState;->mIsScreenOn:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/plugin/OpLsState;
    .locals 2

    const-class v0, Lcom/oneplus/plugin/OpLsState;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/oneplus/plugin/OpLsState;->sInstance:Lcom/oneplus/plugin/OpLsState;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/oneplus/plugin/OpLsState;

    invoke-direct {v1}, Lcom/oneplus/plugin/OpLsState;-><init>()V

    sput-object v1, Lcom/oneplus/plugin/OpLsState;->sInstance:Lcom/oneplus/plugin/OpLsState;

    .line 88
    :cond_0
    sget-object v1, Lcom/oneplus/plugin/OpLsState;->sInstance:Lcom/oneplus/plugin/OpLsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getFpAnimationCtrl()Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-object p0
.end method

.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mNonUiLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OpLsState thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 311
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mNonUiLooper:Landroid/os/Looper;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

    return-object p0
.end method

.method public getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method public getSystemUIContext()Landroid/content/Context;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean p4, p0, Lcom/oneplus/plugin/OpLsState;->mInit:Z

    if-nez p4, :cond_2

    const-string p4, "OpLsState"

    const-string v0, "init"

    .line 98
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mContainer:Landroid/view/ViewGroup;

    .line 101
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 102
    iput-object p3, p0, Lcom/oneplus/plugin/OpLsState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/oneplus/plugin/OpLsState;->mInit:Z

    .line 105
    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getNonUILooper()Landroid/os/Looper;

    .line 109
    iget-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object v0, p2, p4

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p0}, Lcom/oneplus/plugin/OpBaseCtrl;->setCallback(Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->init(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0}, Lcom/oneplus/plugin/OpBaseCtrl;->startCtrl()V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 118
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isActualScreenTurnedOn()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/plugin/OpLsState;->mIsScreenOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFinishedScreenTuredOn()Z
    .locals 0

    .line 358
    iget-boolean p0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    return p0
.end method

.method public onFingerprintStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    .line 242
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsScreenOn:Z

    .line 243
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v3}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v3, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setFpAnimationCtrl(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method
