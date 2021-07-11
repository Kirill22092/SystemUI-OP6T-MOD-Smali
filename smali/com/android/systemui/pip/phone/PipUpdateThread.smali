.class public final Lcom/android/systemui/pip/phone/PipUpdateThread;
.super Landroid/os/HandlerThread;
.source "PipUpdateThread.java"


# static fields
.field private static sInstance:Lcom/android/systemui/pip/phone/PipUpdateThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "pip"

    .line 31
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .line 35
    sget-object v0, Lcom/android/systemui/pip/phone/PipUpdateThread;->sInstance:Lcom/android/systemui/pip/phone/PipUpdateThread;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/systemui/pip/phone/PipUpdateThread;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/PipUpdateThread;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/PipUpdateThread;->sInstance:Lcom/android/systemui/pip/phone/PipUpdateThread;

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/pip/phone/PipUpdateThread;->sInstance:Lcom/android/systemui/pip/phone/PipUpdateThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/systemui/pip/phone/PipUpdateThread;
    .locals 2

    .line 46
    const-class v0, Lcom/android/systemui/pip/phone/PipUpdateThread;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/android/systemui/pip/phone/PipUpdateThread;->ensureThreadLocked()V

    .line 48
    sget-object v1, Lcom/android/systemui/pip/phone/PipUpdateThread;->sInstance:Lcom/android/systemui/pip/phone/PipUpdateThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
