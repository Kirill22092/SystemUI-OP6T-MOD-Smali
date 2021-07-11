.class public final Lcom/android/systemui/media/MediaDeviceManager;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaDeviceManager$Listener;,
        Lcom/android/systemui/media/MediaDeviceManager$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDeviceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n1591#2,2:175\n1591#2,2:177\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager\n*L\n83#1,2:175\n104#1,2:177\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaDeviceManager$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final fgExecutor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDeviceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

.field private final mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final mr2manager:Landroid/media/MediaRouter2Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/LocalMediaManagerFactory;Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/LocalMediaManagerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaRouter2Manager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/media/MediaDataManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localMediaManagerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mr2manager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDeviceManager;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 45
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 50
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-class p2, Lcom/android/systemui/media/MediaDeviceManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "javaClass.name"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static final synthetic access$getFgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    return-object p0
.end method

.method public static final synthetic access$processDevice(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaDeviceManager;->processDevice(Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method private final processDevice(Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    new-instance v1, Lcom/android/systemui/media/MediaDeviceData;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-direct {v1, v0, v3, v2}, Lcom/android/systemui/media/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    .line 105
    invoke-interface {p2, p1, v1}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onMediaDeviceChanged(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDeviceManager$Listener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDeviceManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
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

    const-string v0, "MediaDeviceManager state:"

    .line 92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    new-instance v7, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;-><init>(Ljava/io/PrintWriter;Lcom/android/systemui/media/MediaDeviceManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
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

    if-eqz p2, :cond_0

    .line 64
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaDeviceManager$Token;

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDeviceManager$Token;->stop()V

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaDeviceManager$Token;

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDeviceManager$Token;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDeviceManager$Token;->stop()V

    .line 71
    :cond_2
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 72
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 74
    :goto_0
    new-instance p2, Lcom/android/systemui/media/MediaDeviceManager$Token;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/media/LocalMediaManagerFactory;->create(Ljava/lang/String;)Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object p3

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/android/systemui/media/MediaDeviceManager$Token;-><init>(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDeviceManager$Token;->start()V

    :cond_4
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

    .line 81
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceManager$Token;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->stop()V

    :cond_0
    if-eqz v0, :cond_1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    .line 85
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onKeyRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
