.class public abstract Lcom/android/systemui/dagger/SystemUIModule;
.super Ljava/lang/Object;
.source "SystemUIModule.java"


# direct methods
.method static provideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)V

    return-object p0
.end method

.method static provideSysUiState()Lcom/android/systemui/model/SysUiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/model/SysUiState;

    invoke-direct {v0}, Lcom/android/systemui/model/SysUiState;-><init>()V

    return-object v0
.end method
