.class public Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;
.super Ljava/lang/Object;
.source "NotificationRankingManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationRankingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationRankingManager.kt\ncom/android/systemui/statusbar/notification/collection/NotificationRankingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1591#2,2:220\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationRankingManager.kt\ncom/android/systemui/statusbar/notification/collection/NotificationRankingManager\n*L\n147#1,2:220\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field private final logger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

.field private final mediaManager$delegate:Lkotlin/Lazy;

.field private final mediaManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notifFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field private final peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field private final rankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mediaManager"

    const-string v4, "getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;)V
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/NotificationFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;",
            "Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "mediaManagerLazy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sectionsFeatureManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peopleNotificationIdentifier"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highPriorityProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManagerLazy:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->notifFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->logger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManager$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static final synthetic access$filter(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->filter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method public static final synthetic access$getMediaManagerLazy$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getPeopleNotificationIdentifier$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    return-object p0
.end method

.method public static final synthetic access$getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getUsePeopleFiltering$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getUsePeopleFiltering()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method private final filter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->notifFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->resetInitializationTime()V

    :cond_0
    return p0
.end method

.method private final filterAndSortLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->logger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logFilterAndSort(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$filterAndSortLocked$filtered$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$filterAndSortLocked$filtered$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingComparator:Ljava/util/Comparator;

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object p2

    invoke-static {p2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getBucketForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setBucket(I)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private final getBucketForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getUsePeopleFiltering()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x5

    :goto_1
    return p0
.end method

.method private final getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManager$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method private final getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const-string v1, "sbn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p1

    const-string v1, "ranking"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result p0

    return p0
.end method

.method private final getUsePeopleFiltering()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result p0

    return p0
.end method

.method private final isConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method private final isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    const-string v1, "mediaManager"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    const-string p1, "ranking"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final updateRankingForEntries(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_3

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v3, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    const-string v5, "entry.sbn"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    const-string v5, "entry.sbn"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    const-string v6, "entry.sbn"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    const-string v7, "entry.sbn"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    const-string v7, "entry.sbn.notification"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    const-string v8, "entry.sbn"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method public final updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/service/notification/NotificationListenerService$RankingMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->updateRankingForEntries(Ljava/lang/Iterable;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->filterAndSortLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
