.class Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpAodAlwaysOnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpAodAlwaysOnKeyguardUpdateMonitorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;-><init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {v0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$302(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;I)I

    .line 192
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    const-string p1, "phone state changed"

    invoke-static {p0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Ljava/lang/String;)V

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/oneplus/battery/OpBatteryStatus;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$400(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 200
    invoke-static {v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$400(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    const-string v1, "Battery lower than 5"

    invoke-static {v0, v1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-static {v0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$502(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;I)I

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRefreshBatteryInfo: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$500(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AodAlwaysOnController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    const-string p1, "user switch complete"

    invoke-static {p0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Ljava/lang/String;)V

    return-void
.end method
