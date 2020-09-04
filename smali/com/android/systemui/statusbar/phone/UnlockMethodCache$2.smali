.class Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const-string p1, "KeyguardUpdateMonitorCallback#onBiometricAuthenticated"

    .line 162
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$100(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 168
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method
