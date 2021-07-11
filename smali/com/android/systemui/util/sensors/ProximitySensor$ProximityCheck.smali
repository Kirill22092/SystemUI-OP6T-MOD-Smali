.class public Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

.field private final mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 278
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    const-string v0, "prox_check"

    .line 279
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->setTag(Ljava/lang/String;)V

    .line 280
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 281
    new-instance p1, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$VWMwluPHAE8LZl7uid6iAJaZ0zg;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$VWMwluPHAE8LZl7uid6iAJaZ0zg;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;)V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    return-void
.end method

.method public static synthetic lambda$VWMwluPHAE8LZl7uid6iAJaZ0zg(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method static synthetic lambda$onProximityEvent$0(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;Ljava/util/function/Consumer;)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->getNear()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 317
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$ruTS1Tk02_hYvk7mh0KkebUZDkE;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$ruTS1Tk02_hYvk7mh0KkebUZDkE;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 319
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->unregister()V

    .line 321
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private unregister()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregister(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V

    .line 311
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public check(JLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->getSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 300
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-nez p3, :cond_1

    .line 304
    iget-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    invoke-virtual {p3, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->register(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)Z

    .line 305
    iget-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->unregister()V

    .line 292
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->alertListeners()V

    return-void
.end method
