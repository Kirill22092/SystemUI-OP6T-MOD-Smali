.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

.field private final mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/dump/DumpHandler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 108
    array-length v0, p3

    if-nez v0, :cond_0

    const-string p3, "--dump-priority"

    const-string v0, "CRITICAL"

    .line 109
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/LogBufferFreezer;->attach(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 72
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "debug.crash_sysui"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 76
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 78
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x3e8

    const/16 v1, 0x384

    .line 79
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 80
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    .line 92
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 92
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method
