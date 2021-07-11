.class public Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field private static final DEBUG:Z

.field private static final ENTER_DOZE_DELAY:I


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mPendingScreenState:I

.field private mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    const-string v0, "debug.doze_delay_time"

    const/16 v1, 0x3e8

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/doze/DozeScreenState;->ENTER_DOZE_DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$eRrLSFQgxPfG2I_jJDfdCLwKzVE;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$eRrLSFQgxPfG2I_jJDfdCLwKzVE;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 76
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 80
    new-instance p1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p2, "DozeScreenState"

    invoke-direct {p1, p5, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method private applyPendingScreenState()V
    .locals 1

    .line 154
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    return-void
.end method

.method private applyScreenState(I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 160
    sget-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDozeScreenState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeScreenState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 163
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$eRrLSFQgxPfG2I_jJDfdCLwKzVE(Lcom/android/systemui/doze/DozeScreenState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method

.method private synthetic lambda$transitionTo$0(I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$transitionTo$0$DozeScreenState(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenState;->lambda$transitionTo$0(I)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Lcom/android/systemui/doze/DozeMachine$State;->screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/DozeHost;->cancelGentleSleep()V

    .line 88
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 90
    iput v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 91
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 94
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 104
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->isAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    .line 105
    :goto_0
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v5, :cond_3

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v5, :cond_4

    .line 106
    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->isAlwaysOn()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v2

    .line 107
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->isAlwaysOn()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v6, :cond_6

    :cond_5
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v6, :cond_7

    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v6, :cond_7

    :cond_6
    move v6, v4

    goto :goto_2

    :cond_7
    move v6, v2

    .line 109
    :goto_2
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v7, :cond_8

    move p1, v4

    goto :goto_3

    :cond_8
    move p1, v2

    :goto_3
    if-nez v1, :cond_b

    if-nez p1, :cond_b

    if-nez v3, :cond_b

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    .line 147
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    new-instance p2, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;-><init>(Lcom/android/systemui/doze/DozeScreenState;I)V

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->prepareForGentleSleep(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 149
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    goto/16 :goto_5

    .line 115
    :cond_b
    :goto_4
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 118
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 119
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_d

    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 120
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    if-nez v5, :cond_d

    move v2, v4

    :cond_d
    if-eqz v2, :cond_e

    .line 129
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p1, v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_e
    const-string p1, "DozeScreenState"

    if-nez v1, :cond_12

    .line 133
    sget-boolean p2, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz p2, :cond_10

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display state changed to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delayed by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_f

    .line 135
    sget v4, Lcom/android/systemui/doze/DozeScreenState;->ENTER_DOZE_DELAY:I

    :cond_f
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v2, :cond_11

    .line 139
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    sget p2, Lcom/android/systemui/doze/DozeScreenState;->ENTER_DOZE_DELAY:I

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 141
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 143
    :cond_12
    sget-boolean p0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz p0, :cond_13

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Pending display state change to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_5
    return-void
.end method
