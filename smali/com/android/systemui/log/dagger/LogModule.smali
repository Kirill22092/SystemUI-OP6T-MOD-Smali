.class public Lcom/android/systemui/log/dagger/LogModule;
.super Ljava/lang/Object;
.source "LogModule.java"


# direct methods
.method public static provideBroadcastDispatcherLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 4

    .line 107
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    const-string v1, "BroadcastDispatcherLog"

    const/16 v2, 0x1f4

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->attach(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method

.method public static provideDozeLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 4

    .line 47
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    const-string v1, "DozeLog"

    const/16 v2, 0x64

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->attach(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method

.method public static provideLogcatEchoTracker(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTracker;
    .locals 1

    .line 118
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->create(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance p0, Lcom/android/systemui/log/LogcatEchoTrackerProd;

    invoke-direct {p0}, Lcom/android/systemui/log/LogcatEchoTrackerProd;-><init>()V

    return-object p0
.end method

.method public static provideNotifInteractionLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 4

    .line 83
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    const-string v1, "NotifInteractionLog"

    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->attach(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method

.method public static provideNotificationSectionLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 4

    .line 71
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    const-string v1, "NotifSectionLog"

    const/16 v2, 0x3e8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->attach(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method

.method public static provideNotificationsLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 4

    .line 59
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    const-string v1, "NotifLog"

    const/16 v2, 0x3e8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->attach(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method

.method public static provideQuickSettingsLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 4

    .line 95
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    const-string v1, "QSLog"

    const/16 v2, 0x1f4

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->attach(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method
