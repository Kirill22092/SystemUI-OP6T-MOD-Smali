.class public final Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;
.super Ljava/lang/Object;
.source "BubbleVolatileRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubbleVolatileRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleVolatileRepository.kt\ncom/android/systemui/bubbles/storage/BubbleVolatileRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,94:1\n716#2:95\n738#2,2:96\n673#2:98\n746#2,2:99\n1241#2:101\n1266#2,3:102\n1269#2,3:112\n1313#2:116\n1382#2,3:117\n1241#2:121\n1266#2,3:122\n1269#2,3:132\n1313#2:136\n1382#2,3:137\n307#3,7:105\n307#3,7:125\n149#4:115\n150#4:120\n149#4:135\n150#4:140\n*E\n*S KotlinDebug\n*F\n+ 1 BubbleVolatileRepository.kt\ncom/android/systemui/bubbles/storage/BubbleVolatileRepository\n*L\n63#1:95\n63#1,2:96\n77#1:98\n77#1,2:99\n81#1:101\n81#1,3:102\n81#1,3:112\n81#1:116\n81#1,3:117\n88#1:121\n88#1,3:122\n88#1,3:132\n88#1:136\n88#1,3:137\n81#1,7:105\n88#1,7:125\n81#1:115\n81#1:120\n88#1:135\n88#1:140\n*E\n"
.end annotation


# instance fields
.field private capacity:I

.field private entities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 1
    .param p1    # Landroid/content/pm/LauncherApps;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "launcherApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 38
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    const/16 p1, 0x10

    .line 44
    iput p1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->capacity:I

    return-void
.end method

.method private final cache(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    .line 1241
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1266
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1267
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    .line 81
    new-instance v3, Lcom/android/systemui/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    .line 307
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1269
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/ShortcutKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    iget-object v2, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/ShortcutKey;->getPkg()Ljava/lang/String;

    move-result-object v3

    .line 1313
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1383
    check-cast v5, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    .line 82
    invoke-virtual {v5}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/ShortcutKey;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/pm/LauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic capacity$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final uncache(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    .line 1241
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1266
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1267
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    .line 88
    new-instance v3, Lcom/android/systemui/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    .line 307
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1269
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/ShortcutKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/ShortcutKey;->getPkg()Ljava/lang/String;

    move-result-object v3

    .line 1313
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1383
    check-cast v5, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    .line 89
    invoke-virtual {v5}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/ShortcutKey;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/pm/LauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized addBubbles(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "bubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->capacity:I

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    .line 64
    iget-object v4, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    new-instance v5, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;

    invoke-direct {v5, v3}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;-><init>(Lcom/android/systemui/bubbles/storage/BubbleEntity;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->capacity:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    .line 68
    iget-object v2, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->cache(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getBubbles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeBubbles(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "bubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    .line 78
    iget-object v3, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->entities:Ljava/util/Set;

    new-instance v4, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;-><init>(Lcom/android/systemui/bubbles/storage/BubbleEntity;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
