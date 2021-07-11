.class public final Lcom/android/systemui/media/MediaDataFilter;
.super Ljava/lang/Object;
.source "MediaDataFilter.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDataFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDataFilter.kt\ncom/android/systemui/media/MediaDataFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,153:1\n1591#2,2:154\n1591#2,2:156\n1591#2:158\n1591#2,2:159\n1592#2:161\n1591#2,2:163\n1591#2,2:166\n149#3:162\n150#3:165\n121#3,3:168\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDataFilter.kt\ncom/android/systemui/media/MediaDataFilter\n*L\n77#1,2:154\n83#1,2:156\n100#1:158\n100#1,2:159\n100#1:161\n107#1,2:163\n123#1,2:166\n107#1:162\n107#1:165\n131#1,3:168\n*E\n"
.end annotation


# instance fields
.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final dataSource:Lcom/android/systemui/media/MediaDataCombineLatest;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDataManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final mediaEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaResumeListener:Lcom/android/systemui/media/MediaResumeListener;

.field private final userTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataCombineLatest;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDataCombineLatest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaResumeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaDataManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaResumeListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->dataSource:Lcom/android/systemui/media/MediaDataCombineLatest;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaResumeListener:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDataFilter;->executor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->listeners:Ljava/util/Set;

    .line 52
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 55
    new-instance p1, Lcom/android/systemui/media/MediaDataFilter$1;

    iget-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/MediaDataFilter$1;-><init>(Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->dataSource:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaDataCombineLatest;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    return-void
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/media/MediaDataFilter;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDataManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final handleUserSwitched$packages__apps__OPSystemUI__android_common__OPSystemUI_core(I)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->listeners:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "mediaEntries.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " after user change"

    const-string v3, "MediaDataFilter"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataManager$Listener;

    const-string v4, "it"

    .line 103
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->dataSource:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataCombineLatest;->getData()Ljava/util/Map;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    .line 108
    iget-object v5, p0, Lcom/android/systemui/media/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/MediaDataManager$Listener;

    const/4 v7, 0x0

    .line 112
    invoke-interface {v6, v4, v7, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final hasActiveMedia()Z
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 121
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final hasAnyMedia()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaResumeListener:Lcom/android/systemui/media/MediaResumeListener;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaResumeListener;->isResumptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->hasActiveMedia()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 78
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 87
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSwipeToDismiss()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "mediaEntries.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/media/MediaDataManager;->setTimedOut$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDataManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
