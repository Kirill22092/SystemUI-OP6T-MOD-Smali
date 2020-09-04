.class public Lcom/oneplus/support/lifecycle/LifecycleRegistry;
.super Lcom/oneplus/support/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/FastSafeIterableMap<",
            "Lcom/oneplus/support/lifecycle/LifecycleObserver;",
            "Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/Lifecycle;-><init>()V

    .line 60
    new-instance v0, Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 77
    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 78
    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 100
    sget-object p1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-void
.end method

.method private backwardPass(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    .line 301
    invoke-virtual {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_1

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 305
    :goto_0
    iget-object v3, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/lifecycle/LifecycleObserver;

    invoke-virtual {v3, v4}, Lcom/oneplus/support/collection/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->downEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 308
    invoke-static {v3}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->pushParentState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    .line 309
    invoke-virtual {v2, p1, v3}, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 310
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateTargetState(Lcom/oneplus/support/lifecycle/LifecycleObserver;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object p1, p1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 157
    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->min(Lcom/oneplus/support/lifecycle/Lifecycle$State;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->min(Lcom/oneplus/support/lifecycle/Lifecycle$State;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object p0

    return-object p0
.end method

.method private static downEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;
    .locals 3

    .line 254
    sget-object v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$1;->$SwitchMap$com$oneplus$support$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 262
    :cond_1
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    .line 260
    :cond_2
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_STOP:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    .line 258
    :cond_3
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    .line 256
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private forwardPass(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    .line 286
    invoke-virtual {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->iteratorWithAdditions()Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;

    move-result-object v0

    .line 287
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 290
    :goto_0
    iget-object v3, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/lifecycle/LifecycleObserver;

    invoke-virtual {v3, v4}, Lcom/oneplus/support/collection/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->pushParentState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    .line 293
    iget-object v3, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->upEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 294
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 3

    .line 236
    sget-object v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$1;->$SwitchMap$com$oneplus$support$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :pswitch_0
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    .line 244
    :pswitch_1
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    .line 242
    :pswitch_2
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    .line 239
    :pswitch_3
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSynced()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 147
    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v2}, Lcom/oneplus/support/collection/SafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    .line 148
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static min(Lcom/oneplus/support/lifecycle/Lifecycle$State;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 1

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private moveToState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 132
    iget-boolean p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 138
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->sync()V

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    return-void

    .line 133
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private popParentState()V
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    const-string p0, "LifecycleRegistry"

    const-string v0, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    .line 320
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 325
    iput-boolean v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 327
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v2}, Lcom/oneplus/support/collection/SafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 328
    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->backwardPass(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    .line 331
    iget-boolean v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 332
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->forwardPass(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 336
    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private static upEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;
    .locals 3

    .line 270
    sget-object v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$1;->$SwitchMap$com$oneplus$support$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 277
    :cond_2
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    .line 275
    :cond_3
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    .line 273
    :cond_4
    :goto_0
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0
.end method


# virtual methods
.method public addObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 163
    :goto_0
    new-instance v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Lcom/oneplus/support/lifecycle/LifecycleObserver;Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    .line 164
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/support/collection/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz v1, :cond_1

    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-nez v1, :cond_2

    return-void

    .line 175
    :cond_2
    iget v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 176
    :goto_2
    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->calculateTargetState(Lcom/oneplus/support/lifecycle/LifecycleObserver;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v4

    .line 177
    iget v5, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 178
    :goto_3
    iget-object v5, v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    .line 179
    invoke-virtual {v4, p1}, Lcom/oneplus/support/collection/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 180
    iget-object v4, v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-direct {p0, v4}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->pushParentState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    .line 181
    iget-object v4, v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v4}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->upEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 182
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->popParentState()V

    .line 184
    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->calculateTargetState(Lcom/oneplus/support/lifecycle/LifecycleObserver;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 189
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->sync()V

    .line 191
    :cond_6
    iget p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    return-void
.end method

.method public getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->moveToState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public markState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->moveToState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public removeObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
