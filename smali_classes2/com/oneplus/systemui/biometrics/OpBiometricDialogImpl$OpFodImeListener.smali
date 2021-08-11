.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFodImeListener;
.super Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;
.source "OpBiometricDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpFodImeListener"
.end annotation


# direct methods
.method private constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFodImeListener;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    return-void
.end method


# virtual methods
.method public onImeVisibilityChanged(ZI)V
    .locals 1

    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onImeVisibilityChanged: imeVisible= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", imeHeight= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OpBiometricDialogImpl"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onImeShow(Z)V

    return-void
.end method
