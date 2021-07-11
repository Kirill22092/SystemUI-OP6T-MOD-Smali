.class public Lcom/oneplus/os/OpMotorManager;
.super Ljava/lang/Object;
.source "OpMotorManager.java"


# instance fields
.field private mService:Lcom/oneplus/android/os/IOpMotorManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/oneplus/os/OpMotorManager;->mToken:Landroid/os/IBinder;

    const-string p1, "motor"

    .line 28
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    if-nez p1, :cond_0

    const-string p0, "OpMotorManager"

    const-string p1, "MotorManagerService was null"

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public downMotorBySystemApp(Ljava/lang/String;)I
    .locals 2

    const-string v0, "OpMotorManager"

    const-string v1, "downMotorBySystemApp"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "call service downMotorBySystemApp"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    iget-object p0, p0, Lcom/oneplus/os/OpMotorManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, p0}, Lcom/oneplus/android/os/IOpMotorManager;->downMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Remote exception in motormanager: "

    .line 62
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "downMotor get motor service again"

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "motor"

    .line 66
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMotorStateBySystemApp()I
    .locals 2

    const-string v0, "OpMotorManager"

    const-string v1, "getMotorStateBySystemApp"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    invoke-interface {v1}, Lcom/oneplus/android/os/IOpMotorManager;->getMotorStateBySystemApp()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Remote exception in motormanager: "

    .line 42
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v1, "getMotor get motor service again"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "motor"

    .line 46
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    :goto_0
    const/16 p0, -0xa

    return p0
.end method

.method public upMotorBySystemApp(Ljava/lang/String;)I
    .locals 2

    const-string v0, "OpMotorManager"

    const-string v1, "upMotorBySystemApp"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "call service upMotorBySystemApp"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    iget-object p0, p0, Lcom/oneplus/os/OpMotorManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, p0}, Lcom/oneplus/android/os/IOpMotorManager;->upMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Remote exception in motormanager: "

    .line 82
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "upMotor get motor service again"

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "motor"

    .line 86
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/os/OpMotorManager;->mService:Lcom/oneplus/android/os/IOpMotorManager;

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
