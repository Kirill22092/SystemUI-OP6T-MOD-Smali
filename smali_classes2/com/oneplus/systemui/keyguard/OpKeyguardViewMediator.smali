.class public Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "OpKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;
    }
.end annotation


# static fields
.field public static AUTHENTICATE_FACEUNLOCK:I

.field public static AUTHENTICATE_FINGERPRINT:I

.field public static AUTHENTICATE_IGNORE:I

.field public static DEBUG_THREAD:Z

.field protected static final IS_CUSTOM_FINGERPRINT:Z

.field public static final IS_NEED_UNREGISTER_DOZE_CUSTOM_SENSOR_EARILY:Z


# instance fields
.field private mAuthenticatingType:I

.field protected mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

.field private mLastAlpha:I

.field private mOpFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_CUSTOM_FINGERPRINT:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x74

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0xc7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x5b

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_NEED_UNREGISTER_DOZE_CUSTOM_SENSOR_EARILY:Z

    sput v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    sput v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    const/4 v0, 0x2

    sput v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    sput-boolean v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->DEBUG_THREAD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    return-void
.end method

.method private getKeyguardStateCallback()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v1, "mKeyguardStateCallbacks"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;
    .locals 2

    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v1, "mKeyguardViewControllerLazy"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    return-object p0
.end method

.method private onWakeAndUnlocking()V
    .locals 3

    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onWakeAndUnlocking"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private opResponseLogDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    array-length p0, p2

    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v4, p2, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# opResponseLogDump #  args : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "OpKeyguardViewMediator"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length p0, p2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "dumpsys activity service systemui com.android.systemui.keyguard.keyguardviewmediator --log on(true/false)\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# help #\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    aget-object p0, p2, v0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " opResponseLogDump on:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->DEBUG_THREAD:Z

    return-void
.end method


# virtual methods
.method public changePanelAlpha(II)V
    .locals 4

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const-string v1, "OpKeyguardViewMediator"

    if-nez v0, :cond_0

    const-string p0, "mStatusBar is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isUnlockWithWallpaper()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "not set backdrop alpha"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    if-eq p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    if-eq p2, v2, :cond_2

    const-string p0, "return set alpha"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePanelAlpha to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentType:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p2, p1

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setWallpaperAlpha(F)V

    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    return-void
.end method

.method public getKeyguardUnlockCounter()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    return-object p0
.end method

.method public isScreenOffAuthenticating()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSupportAccelerate()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mOpFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->isAppSupportAccelerate(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBarHeightChange(Z)V
    .locals 3

    iget p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    if-nez p1, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    const-string v0, "OpKeyguardViewMediator"

    const-string v1, "recover alpha"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setWallpaperAlpha(F)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    :cond_1
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onPocketModeActiveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "OpKeyguardViewMediator"

    const-string v3, "Failed to call onPocketModeActiveChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyScreenOffAuthenticate(ZI)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    return-void
.end method

.method public notifyScreenOffAuthenticate(ZII)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAuthenticate Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not handle another Authenticate"

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    sget v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    if-eq v2, v3, :cond_0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    sget v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-ne v2, v3, :cond_2

    if-eq p2, v3, :cond_2

    const/4 v2, 0x5

    if-ne p3, v2, :cond_2

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    iput v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    :goto_0
    const/4 v0, 0x7

    const/4 v2, 0x0

    if-eq p3, v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/android/internal/policy/IKeyguardStateCallback;->onFingerprintStateChange(ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "Failed to call onFingerprintStateChange"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->dispatchAuthenticateChanged(ZIII)V

    :cond_5
    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    const-string v0, "KeyguardViewMediator#onFinishedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "OpKeyguardViewMediator"

    const-string v1, "onFinishedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->dispatchFinishedWakingUp()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onWakeAndUnlocking(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->onWakeAndUnlocking()V

    sget-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onWakingAndUnlocking()V

    :cond_0
    return-void
.end method

.method protected opDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mOpFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->getAppUnsupportAccelerateList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mOpFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-virtual {v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->getAppUnsupportAccelerateList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "UnsupportAccelerateList:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# opDump #  args : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# responseLogDump #  args : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpKeyguardViewMediator"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_2
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_5

    aget-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    const-string v3, "log"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "# log #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v2, p2

    if-lt v0, v2, :cond_3

    return-void

    :cond_3
    array-length v2, p2

    sub-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, p2

    const/4 v4, 0x2

    if-le v3, v4, :cond_4

    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-static {p2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->opResponseLogDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public start()V
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    new-instance v0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mOpFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    return-void
.end method

.method protected updateKeyguardDisable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateKeyguardDisable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUpdateMonitor.getCurrentUser():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "keyguard_disable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
