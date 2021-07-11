.class public final Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;
.super Ljava/lang/Object;
.source "AuxiliaryPersistenceWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuxiliaryPersistenceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuxiliaryPersistenceWrapper.kt\ncom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,140:1\n2013#2,10:141\n*E\n*S KotlinDebug\n*F\n+ 1 AuxiliaryPersistenceWrapper.kt\ncom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper\n*L\n95#1,10:141\n*E\n"
.end annotation


# instance fields
.field private favorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/Executor;)V
    .locals 7
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Landroid/app/backup/BackupManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;-><init>(Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;)V

    return-void
.end method


# virtual methods
.method public final changeFile(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->changeFileAndBackupManager(Ljava/io/File;Landroid/app/backup/BackupManager;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->initialize()V

    return-void
.end method

.method public final getCachedFavoritesAndRemoveFor(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->getFileExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    .line 2013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2015
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2016
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 95
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2017
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2019
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2022
    :cond_2
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    .line 98
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 99
    iget-object p0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    goto :goto_1

    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->deleteFile()V

    :goto_1
    return-object v0
.end method

.method public final getFavorites()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    return-object p0
.end method

.method public final initialize()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->getFileExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->readFavorites()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 76
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    return-void
.end method
