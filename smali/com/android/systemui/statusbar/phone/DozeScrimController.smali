.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Lcom/oneplus/aod/OpDozeScrimController;
.source "DozeScrimController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mFullyPulsing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private mRequestPulsing:Z

.field private final mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeLog;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/oneplus/aod/OpDozeScrimController;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 266
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    .line 274
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 143
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 144
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mRequestPulsing:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/aod/OpDozeScrimController;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oneplus/aod/OpDozeScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oneplus/aod/OpDozeScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oneplus/aod/OpDozeScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cancelPulsing()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    .line 225
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    :cond_1
    return-void
.end method

.method private pulseFinished()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mRequestPulsing:Z

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpDozeScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 249
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "pulseFinished: handle notification on aod first"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->quickHideNotificationBeforeScreenOff(Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    :goto_0
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/OpDozeScrimController;->releaseWakeLock()V

    return-void
.end method

.method private pulseStarted()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_0

    .line 236
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method public extendPulse()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public extendPulse(I)V
    .locals 2

    .line 208
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendPulse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method public isPulsing()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 2

    if-eqz p1, :cond_4

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mRequestPulsing:Z

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 179
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 183
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    return-void

    .line 163
    :cond_1
    :goto_0
    sget-boolean p2, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pulse supressed. Dozing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " had callback? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DozeScrimController"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void

    .line 159
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pulseOutNow()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 150
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-nez p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    :cond_1
    return-void
.end method
