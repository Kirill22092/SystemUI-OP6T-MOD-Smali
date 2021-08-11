.class public Lcom/android/systemui/broadcast/UserBroadcastDispatcher;
.super Ljava/lang/Object;
.source "UserBroadcastDispatcher.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserBroadcastDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserBroadcastDispatcher.kt\ncom/android/systemui/broadcast/UserBroadcastDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 5 ConvenienceExtensions.kt\ncom/android/systemui/util/ConvenienceExtensionsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,159:1\n1499#2,3:160\n1591#2,2:179\n307#3,7:163\n307#3,7:171\n32#4:170\n33#4:178\n45#5,2:181\n47#5,2:185\n149#6,2:183\n*E\n*S KotlinDebug\n*F\n+ 1 UserBroadcastDispatcher.kt\ncom/android/systemui/broadcast/UserBroadcastDispatcher\n*L\n81#1,3:160\n143#1,2:179\n105#1,7:163\n107#1,7:171\n107#1:170\n107#1:178\n151#1,2:181\n151#1,2:185\n151#1,2:183\n*E\n"
.end annotation


# instance fields
.field private final actionsToActionsReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/broadcast/ActionReceiver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private final bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

.field private final bgLooper:Landroid/os/Looper;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

.field private final receiverToActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgLooper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    iput-object p3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    new-instance p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    iget-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;-><init>(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    return-void
.end method

.method public static final synthetic access$getBgHandler$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    return-object p0
.end method

.method public static final synthetic access$getUserId$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    return p0
.end method

.method public static final synthetic access$handleRegisterReceiver(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Lcom/android/systemui/broadcast/ReceiverData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->handleRegisterReceiver(Lcom/android/systemui/broadcast/ReceiverData;)V

    return-void
.end method

.method public static final synthetic access$handleUnregisterReceiver(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->handleUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static synthetic actionsToActionsReceivers$annotations()V
    .locals 0

    return-void
.end method

.method private final handleRegisterReceiver(Lcom/android/systemui/broadcast/ReceiverData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "bgHandler.looper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const-string v1, "This method should only be called from BG thread"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/broadcast/ReceiverData;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/android/systemui/broadcast/ReceiverData;->getFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    invoke-virtual {p1}, Lcom/android/systemui/broadcast/ReceiverData;->getFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "receiverData.filter.actionsIterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->createActionReceiver$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Ljava/lang/String;)Lcom/android/systemui/broadcast/ActionReceiver;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v3, Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-virtual {v3, p1}, Lcom/android/systemui/broadcast/ActionReceiver;->addReceiverData(Lcom/android/systemui/broadcast/ReceiverData;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    invoke-virtual {p1}, Lcom/android/systemui/broadcast/ReceiverData;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logReceiverRegistered(ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final handleUnregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "bgHandler.looper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const-string v1, "This method should only be called from BG thread"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "receiverToActions.getOrD\u2026receiver, mutableSetOf())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/broadcast/ActionReceiver;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logReceiverUnregistered(ILandroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public createActionReceiver$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Ljava/lang/String;)Lcom/android/systemui/broadcast/ActionReceiver;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/broadcast/ActionReceiver;

    iget v3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    new-instance v4, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;-><init>(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)V

    new-instance v5, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;-><init>(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/broadcast/ActionReceiver;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)V

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/android/internal/util/IndentingPrintWriter;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/broadcast/ActionReceiver;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    return-void
.end method

.method public final isReceiverReferenceHeld$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroid/content/BroadcastReceiver;)Z
    .locals 4
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "actionsToActionsReceivers.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-virtual {v1, p1}, Lcom/android/systemui/broadcast/ActionReceiver;->hasReceiver(Landroid/content/BroadcastReceiver;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2
.end method

.method public final registerReceiver(Lcom/android/systemui/broadcast/ReceiverData;)V
    .locals 1
    .param p1    # Lcom/android/systemui/broadcast/ReceiverData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiverData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->bgHandler:Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
