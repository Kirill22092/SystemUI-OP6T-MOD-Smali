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

.field protected static final IS_CUSTOM_FINGERPRINT:Z


# instance fields
.field private mAuthenticatingType:I

.field protected mIgnoreHandleShow:Z

.field private mLastAlpha:I

.field private mPendingHidePanel:Z

.field private mSettingShowing:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_CUSTOM_FINGERPRINT:Z

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    const/4 v0, 0x1

    .line 53
    sput v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    const/4 v0, 0x2

    .line 54
    sput v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mIgnoreHandleShow:Z

    .line 56
    sget v1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    iput v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    .line 59
    iput-boolean v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mSettingShowing:Z

    .line 62
    iput-boolean v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mPendingHidePanel:Z

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    return-void
.end method

.method private getHandler()Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;
    .locals 2

    .line 228
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    return-object p0
.end method

.method private getKeyguardGoingAwayRunnableRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 233
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v1, "mKeyguardGoingAwayRunnable"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
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

    .line 243
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v1, "mKeyguardStateCallbacks"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private onWakeAndUnlocking()V
    .locals 3

    .line 238
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onWakeAndUnlocking"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public changePanelAlpha(II)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "OpKeyguardViewMediator"

    if-lez p1, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowingWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "not set backdrop alpha"

    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_1
    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    if-eq p2, v0, :cond_2

    const-string p0, "return set alpha"

    .line 176
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePanelAlpha to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    int-to-float v0, p1

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 182
    iget-object p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setWallpaperAlpha(F)V

    .line 183
    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    return-void
.end method

.method public isScreenOffAuthenticating()Z
    .locals 0

    .line 148
    iget p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBarHeightChange(I)V
    .locals 3

    .line 189
    iget p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    if-nez p1, :cond_0

    const-string p1, "OpKeyguardViewMediator"

    const-string v0, "recover alpha"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setWallpaperAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    const/4 p1, 0x1

    .line 193
    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mLastAlpha:I

    :cond_0
    return-void
.end method

.method public notifyLidSwitchChanged(Z)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyLidSwitchChanged(Z)V

    :cond_0
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 4

    .line 200
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 203
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

    .line 205
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 207
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

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    return-void
.end method

.method public notifyScreenOffAuthenticate(ZII)V
    .locals 5

    .line 104
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

    .line 107
    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    sget v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    if-eq v2, v3, :cond_0

    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    iput p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    goto :goto_0

    .line 115
    :cond_1
    sget-boolean v2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    sget v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-ne v2, v3, :cond_2

    if-eq p2, v3, :cond_2

    const/4 v2, 0x5

    if-ne p3, v2, :cond_2

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    iput v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mAuthenticatingType:I

    :goto_0
    const/4 v0, 0x7

    const/4 v2, 0x0

    if-eq p3, v0, :cond_4

    .line 127
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 130
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

    .line 132
    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardStateCallback()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 142
    :cond_4
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->dispatchAuthenticateChanged(ZIII)V

    :cond_5
    return-void
.end method

.method public onWakeAndUnlocking(Z)V
    .locals 1

    .line 215
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->onWakeAndUnlocking()V

    .line 216
    sget-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->IS_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 218
    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    .line 219
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onWakingAndUnlocking()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mPendingHidePanel:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected opHandleHide()V
    .locals 4

    .line 84
    iget-boolean v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mSettingShowing:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardViewMediator"

    const-string v1, "delay GoingAway"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getHandler()Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardGoingAwayRunnableRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardGoingAwayRunnableRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mPendingHidePanel:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mPendingHidePanel:Z

    .line 93
    sget v1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method
