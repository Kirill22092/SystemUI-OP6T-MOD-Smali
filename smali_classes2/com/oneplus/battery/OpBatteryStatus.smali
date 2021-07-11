.class public Lcom/oneplus/battery/OpBatteryStatus;
.super Lcom/android/settingslib/fuelgauge/BatteryStatus;
.source "OpBatteryStatus.java"


# instance fields
.field public fastCharge:I

.field public mProtectCharging:Z

.field public mTimeToFull:J

.field public pdcharge:Z

.field public wirelessCharging:Z

.field public wirelessChargingDeviated:Z

.field public wirelessWarpCharging:Z


# direct methods
.method public constructor <init>(IIIIIIZZZZ)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(IIIII)V

    const-wide/16 p1, -0x1

    .line 41
    iput-wide p1, p0, Lcom/oneplus/battery/OpBatteryStatus;->mTimeToFull:J

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryStatus;->mProtectCharging:Z

    .line 61
    iput p6, p0, Lcom/oneplus/battery/OpBatteryStatus;->fastCharge:I

    .line 63
    iput-boolean p7, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessCharging:Z

    .line 64
    iput-boolean p8, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessWarpCharging:Z

    .line 67
    iput-boolean p9, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessChargingDeviated:Z

    .line 70
    iput-boolean p10, p0, Lcom/oneplus/battery/OpBatteryStatus;->pdcharge:Z

    .line 72
    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryStatus;->mProtectCharging:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(Landroid/content/Intent;)V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lcom/oneplus/battery/OpBatteryStatus;->mTimeToFull:J

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryStatus;->mProtectCharging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;IZZZZ)V
    .locals 2

    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpBatteryStatus;-><init>(Landroid/content/Intent;)V

    .line 88
    iput p2, p0, Lcom/oneplus/battery/OpBatteryStatus;->fastCharge:I

    .line 90
    iput-boolean p3, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessCharging:Z

    .line 91
    iput-boolean p4, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessWarpCharging:Z

    .line 94
    iput-boolean p5, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessChargingDeviated:Z

    .line 97
    iput-boolean p6, p0, Lcom/oneplus/battery/OpBatteryStatus;->pdcharge:Z

    const-string p2, "fastcharge_status"

    const/4 p3, 0x0

    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "estimate_time_to_full"

    const-wide/16 p4, 0x0

    .line 103
    invoke-virtual {p1, p2, p4, p5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "OpBatteryStatus TimeToFull "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p6, "OpBatteryStatus"

    invoke-static {p6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p2, v0, p4

    if-eqz p2, :cond_0

    .line 107
    iput-wide v0, p0, Lcom/oneplus/battery/OpBatteryStatus;->mTimeToFull:J

    :cond_0
    const-string p2, "protect_charging"

    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryStatus;->mProtectCharging:Z

    goto :goto_0

    :cond_1
    const-wide/16 p1, -0x1

    .line 114
    iput-wide p1, p0, Lcom/oneplus/battery/OpBatteryStatus;->mTimeToFull:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getChargingSpeed(Landroid/content/Context;)I
    .locals 3

    .line 132
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget v2, p0, Lcom/oneplus/battery/OpBatteryStatus;->fastCharge:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isFastCharging(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 133
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget v1, p0, Lcom/oneplus/battery/OpBatteryStatus;->fastCharge:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWarpCharging(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessCharging:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessWarpCharging:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->config_chargingSlowlyThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->config_chargingFastThreshold:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 143
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 144
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_3
    if-ge p0, v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    .line 148
    :cond_5
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-gtz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1
.end method

.method public getSwarpRemainingTime()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/oneplus/battery/OpBatteryStatus;->mTimeToFull:J

    return-wide v0
.end method

.method public isPdCharging()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryStatus;->pdcharge:Z

    return p0
.end method

.method public isProtectCharging()Z
    .locals 0

    .line 201
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryStatus;->mProtectCharging:Z

    return p0
.end method

.method public isWirelessChargingDeviated()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessChargingDeviated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpBatteryStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxChargingWattage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}, fastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/battery/OpBatteryStatus;->fastCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wirelessCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wirelessWarpCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessWarpCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wirelessChargingDeviated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpBatteryStatus;->wirelessChargingDeviated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pdcharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryStatus;->pdcharge:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
