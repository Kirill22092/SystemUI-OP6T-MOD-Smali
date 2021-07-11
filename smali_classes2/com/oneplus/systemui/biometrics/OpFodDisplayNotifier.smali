.class public Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;
.super Ljava/lang/Object;
.source "OpFodDisplayNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;,
        Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;,
        Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;,
        Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;
    }
.end annotation


# static fields
.field private static final REAL_ALWAYS_ON_DELAY_TIME:I


# instance fields
.field private mAodModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDimModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mHideAodModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;

.field private final mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mPressModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUpdateMonitor:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.real_aod_delay_time"

    const/16 v1, 0x32

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->REAL_ALWAYS_ON_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "OpFodDisplayNotifier"

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 95
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mResolver:Landroid/content/ContentResolver;

    .line 99
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 100
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mUpdateMonitor:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    .line 101
    new-instance p1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {p1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 103
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOneplusDisplay getService Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    new-instance p1, Landroid/os/HandlerThread;

    const/16 v2, -0xa

    invoke-direct {p1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDimModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;

    .line 115
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$1;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mAodModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

    .line 116
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mPressModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;

    .line 117
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHideAodModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Landroid/content/ContentResolver;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mUpdateMonitor:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lcom/oneplus/core/oimc/OIMCServiceManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    return-object p0
.end method


# virtual methods
.method public notifyAodMode(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mAodModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mAodModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->setMode(I)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mAodModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

    sget v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->REAL_ALWAYS_ON_DELAY_TIME:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mAodModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public notifyDisplayDimMode(II)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDimModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDimModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->setMode(II)V

    .line 135
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mDimModeNotifyRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyHideAodMode(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHideAodModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;->setMode(I)V

    .line 148
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHideAodModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyPressMode(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mPressModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;->setMode(I)V

    .line 143
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->mPressModeRunnable:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$PressModeRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
