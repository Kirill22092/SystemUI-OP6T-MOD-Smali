.class public Lcom/android/systemui/util/sensors/AsyncSensorManager;
.super Landroid/hardware/SensorManager;
.source "AsyncSensorManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/SensorManager;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/SensorManagerPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInner:Landroid/hardware/SensorManager;

.field private final mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/SensorManagerPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;)V
    .locals 1

    .line 64
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 69
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    if-nez p3, :cond_0

    .line 72
    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "async_sensor"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 76
    :cond_0
    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 81
    const-class p1, Lcom/android/systemui/plugins/SensorManagerPlugin;

    const/4 p3, 0x1

    invoke-interface {p2, p0, p1, p3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$cancelTriggerSensorImpl$4(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Canceling "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncSensorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerDynamicSensorCallbackImpl$1(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$registerListenerImpl$0(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)V
    .locals 8

    const-string v0, "AsyncSensorManager"

    if-nez p1, :cond_0

    const-string v1, "sensor cannot be null"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Registering "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$registerPluginListener$5(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/SensorManagerPlugin;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/SensorManagerPlugin;->registerListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestTriggerSensorImpl$3(Landroid/hardware/Sensor;Landroid/hardware/TriggerEventListener;)V
    .locals 2

    const-string v0, "AsyncSensorManager"

    if-nez p1, :cond_0

    const-string v1, "sensor cannot be null"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p2, p1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$setOperationParameterImpl$7(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    return-void
.end method

.method private synthetic lambda$unregisterDynamicSensorCallbackImpl$2(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method private synthetic lambda$unregisterListenerImpl$8(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$unregisterPluginListener$6(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/SensorManagerPlugin;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/SensorManagerPlugin;->unregisterListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 1

    .line 169
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 171
    iget-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 0

    .line 133
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 0

    .line 123
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    .line 128
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method protected getActiveSensorListImpl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected getActiveSensorListImplByHandle(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    return-object p0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 0

    .line 216
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 0

    .line 222
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic lambda$cancelTriggerSensorImpl$4$AsyncSensorManager(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$cancelTriggerSensorImpl$4(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public synthetic lambda$registerDynamicSensorCallbackImpl$1$AsyncSensorManager(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$registerDynamicSensorCallbackImpl$1(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic lambda$registerListenerImpl$0$AsyncSensorManager(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$registerListenerImpl$0(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)V

    return-void
.end method

.method public synthetic lambda$registerPluginListener$5$AsyncSensorManager(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$registerPluginListener$5(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    return-void
.end method

.method public synthetic lambda$requestTriggerSensorImpl$3$AsyncSensorManager(Landroid/hardware/Sensor;Landroid/hardware/TriggerEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$requestTriggerSensorImpl$3(Landroid/hardware/Sensor;Landroid/hardware/TriggerEventListener;)V

    return-void
.end method

.method public synthetic lambda$setOperationParameterImpl$7$AsyncSensorManager(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$setOperationParameterImpl$7(Landroid/hardware/SensorAdditionalInfo;)V

    return-void
.end method

.method public synthetic lambda$unregisterDynamicSensorCallbackImpl$2$AsyncSensorManager(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$unregisterDynamicSensorCallbackImpl$2(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method public synthetic lambda$unregisterListenerImpl$8$AsyncSensorManager(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$unregisterListenerImpl$8(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public synthetic lambda$unregisterPluginListener$6$AsyncSensorManager(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$unregisterPluginListener$6(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/SensorManagerPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->onPluginConnected(Lcom/android/systemui/plugins/SensorManagerPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/SensorManagerPlugin;Landroid/content/Context;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/SensorManagerPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->onPluginDisconnected(Lcom/android/systemui/plugins/SensorManagerPlugin;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/SensorManagerPlugin;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$F0WdeYeejMV4rm6D4L93BEBFpEM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$F0WdeYeejMV4rm6D4L93BEBFpEM;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 8

    if-nez p2, :cond_0

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sensor cannot be null \n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncSensorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_0
    iget-object p6, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)V

    invoke-virtual {p6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public registerPluginListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AsyncSensorManager"

    const-string p1, "No plugins registered"

    .line 188
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$aB8h3ftRLBeKmBma753sk37oSSM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$aB8h3ftRLBeKmBma753sk37oSSM;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$3wS3f7_WzpwBtp5OJ_snyLIVx0A;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$3wS3f7_WzpwBtp5OJ_snyLIVx0A;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/TriggerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sensor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$hqcwBQ7SIv_uRvhgQvDc2LVBJ_U;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$hqcwBQ7SIv_uRvhgQvDc2LVBJ_U;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterPluginListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
