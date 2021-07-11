.class public Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;
.super Ljava/lang/Object;
.source "OpFodFingerTouchValidator.java"


# instance fields
.field private mAodMode:Z

.field private mFingerOnSensor:Z

.field private mFingerOnView:Z

.field mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mAodMode:Z

    .line 33
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator$1;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 29
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mAodMode:Z

    return p1
.end method


# virtual methods
.method public isFingerDown()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

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

.method public isFingerDownOnSensor()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    return p0
.end method

.method public isFingerDownOnView()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    return p0
.end method

.method public reset()V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset: callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodFingerTouchValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    .line 169
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    return-void
.end method

.method public resetTouchFromSensor()V
    .locals 2

    const-string v0, "OpFodFingerTouchValidator"

    const-string v1, "resetTouchFromSensor"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "OpFodFingerTouchValidator"

    aput-object v2, v0, v1

    .line 145
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mAodMode:Z

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "([%s]: aodMode: %b, fingerOnView: %b, fingerOnSensor: %b)"

    .line 145
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validateFingerAction(I)Z
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateFingerAction: getAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodFingerTouchValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 61
    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    if-nez v3, :cond_1

    .line 62
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isDoingEnroll()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "validateFingerAction: onView, not allow to unlock by fingerprint. return."

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 71
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    .line 73
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 81
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    if-eqz p1, :cond_3

    .line 84
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public validateFingerAction(II)Z
    .locals 3

    const-string v0, "OpFodFingerTouchValidator"

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "validateFingerAction: onSensor, return, acquiredInfo: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 98
    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    if-eqz p1, :cond_1

    const-string p0, "validateFingerAction: onSensor, finger on view return."

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "validateFingerAction: onSensor, return, vendorCode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-nez p2, :cond_3

    .line 123
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    .line 125
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnView:Z

    return p1

    .line 128
    :cond_3
    iget-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    if-eqz p2, :cond_4

    .line 130
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->mFingerOnSensor:Z

    return p1

    :cond_4
    const-string p0, "validateFingerAction: onSensor, not receive touch down before."

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
