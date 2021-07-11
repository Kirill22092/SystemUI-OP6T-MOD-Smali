.class Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFodBurnInProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlwaysOnEnableChanged(Z)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAlwaysOnEnableChanged(Z)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAlwaysOnEnableChanged: active= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodBurnInProtectionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    const-string v0, "OpFodBurnInProtectionHelper"

    const-string v1, "onStartedWakingUp"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    return-void
.end method
