.class Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;
.super Ljava/lang/Object;
.source "OpKeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1070
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const-string v1, "OpKeyguardUpdateMonitor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Event has no values!"

    .line 1071
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 1080
    :goto_1
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 1081
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;IZ)V

    .line 1084
    :cond_3
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1085
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_4
    return-void
.end method
