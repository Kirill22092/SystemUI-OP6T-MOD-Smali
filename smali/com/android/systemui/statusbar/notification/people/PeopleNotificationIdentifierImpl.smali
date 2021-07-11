.class public final Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;
.super Ljava/lang/Object;
.source "PeopleNotificationIdentifier.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeopleNotificationIdentifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeopleNotificationIdentifier.kt\ncom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl\n*L\n1#1,127:1\n*E\n"
.end annotation


# instance fields
.field private final groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "personExtractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private final extractPersonTypeInfo(Landroid/service/notification/StatusBarNotification;)I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;->isPersonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method private final getPeopleTypeOfSummary(Landroid/service/notification/StatusBarNotification;)I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 114
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 119
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 120
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->upperBound(II)I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    :cond_2
    return v1
.end method

.method private final getPersonTypeInfo(Landroid/service/notification/NotificationListenerService$Ranking;)I
    .locals 1
    .param p1    # Landroid/service/notification/NotificationListenerService$Ranking;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 99
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private final upperBound(II)I
    .locals 0

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public compareTo(II)I
    .locals 0

    .line 82
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public getPeopleNotificationType(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)I
    .locals 2
    .param p1    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/notification/NotificationListenerService$Ranking;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ranking"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPersonTypeInfo(Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->extractPersonTypeInfo(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->upperBound(II)I

    move-result p2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleTypeOfSummary(Landroid/service/notification/StatusBarNotification;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->upperBound(II)I

    move-result v0

    :goto_0
    return v0
.end method
