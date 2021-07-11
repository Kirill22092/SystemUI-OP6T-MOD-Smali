.class public Lcom/android/systemui/dagger/SystemServicesModule;
.super Ljava/lang/Object;
.source "SystemServicesModule.java"


# direct methods
.method static provideAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .line 85
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static provideActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    .line 91
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method static provideAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    .line 97
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method static provideAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    .line 103
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method static provideConnectivityManagager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 109
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static provideDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 121
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static provideDisplayId(Landroid/content/Context;)I
    .locals 0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    return p0
.end method

.method static provideIActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 139
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    const-string v0, "batterystats"

    .line 152
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method static provideIDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    const-string v0, "dreams"

    .line 159
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    const-string v0, "package"

    .line 165
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    const-string/jumbo v0, "statusbar"

    .line 172
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static provideIWallPaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    const-string/jumbo v0, "wallpaper"

    .line 179
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .line 185
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method static provideKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .locals 1

    .line 191
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static provideLatencyTracker(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .locals 0

    .line 197
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    return-object p0
.end method

.method static provideLauncherApps(Landroid/content/Context;)Landroid/content/pm/LauncherApps;
    .locals 1

    .line 203
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 212
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->create(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method static provideMediaRouter2Manager(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;
    .locals 0

    .line 217
    invoke-static {p0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object p0

    return-object p0
.end method

.method static provideNetworkScoreManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;
    .locals 1

    .line 223
    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    return-object p0
.end method

.method static provideNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    .line 229
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method static providePackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static providePackageManagerWrapper()Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .locals 1

    .line 241
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method static providePowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    .line 248
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method static provideResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static provideSensorPrivacyManager(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .locals 1

    .line 260
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method

.method static provideShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;
    .locals 1

    .line 266
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    return-object p0
.end method

.method static provideTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1

    .line 273
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method static provideTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 279
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static provideTrustManager(Landroid/content/Context;)Landroid/app/trust/TrustManager;
    .locals 1

    .line 285
    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static provideUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    .line 298
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method static provideVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1

    .line 292
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    return-object p0
.end method

.method static provideWallpaperManager(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1

    const-string/jumbo v0, "wallpaper"

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static provideWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    .line 309
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static provideWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 315
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method
