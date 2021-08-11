.class public Lcom/android/systemui/util/sensors/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;,
        Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;,
        Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLastEvent:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaused:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRegistered:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field private mSensorDelay:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProxSensor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorDelay:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/android/systemui/util/sensors/ProximitySensor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$1;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V

    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->findCustomProxSensor(Landroid/content/res/Resources;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->getCustomProxThreshold(Landroid/content/res/Resources;)F
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "ProxSensor"

    const-string v2, "Can not load custom proximity sensor."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    const p1, 0x1fa2651

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/sensors/ProximitySensor;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private findCustomProxSensor(Landroid/content/res/Resources;)Landroid/hardware/Sensor;
    .locals 3

    sget v0, Lcom/android/systemui/R$string;->proximity_sensor_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method private getCustomProxThreshold(Landroid/content/res/Resources;)F
    .locals 0

    :try_start_0
    sget p0, Lcom/android/systemui/R$dimen;->proximity_sensor_threshold:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "R.dimen.proximity_sensor_threshold must be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$alertListeners$0(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;->onSensorEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProxSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;-><init>(ZJ)V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->alertListeners()V

    return-void
.end method


# virtual methods
.method public alertListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ghFL-7mqmC5TPLUcAxsPY-h6a_M;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ghFL-7mqmC5TPLUcAxsPY-h6a_M;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getSensorAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNear()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->getSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->getNear()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isRegistered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    return p0
.end method

.method public synthetic lambda$alertListeners$0$ProximitySensor(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->lambda$alertListeners$0(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregisterInternal()V

    return-void
.end method

.method public register(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->getSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxListener registered multiple times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProxSensor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->registerInternal()V

    const/4 p0, 0x1

    return p0
.end method

.method protected registerInternal()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Registering sensor listener"

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    iget p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorDelay:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->registerInternal()V

    return-void
.end method

.method public setSensorDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorDelay:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isRegistered()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string/jumbo p0, "{registered=%s, paused=%s, near=%s, sensor=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregisterInternal()V

    :cond_0
    return-void
.end method

.method protected unregisterInternal()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregistering sensor listener"

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    return-void
.end method
