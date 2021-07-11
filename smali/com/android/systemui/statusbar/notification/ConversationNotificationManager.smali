.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConversationNotifications.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConversationNotifications.kt\ncom/android/systemui/statusbar/notification/ConversationNotificationManager\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,206:1\n1084#2,2:207\n1084#2,2:209\n*E\n*S KotlinDebug\n*F\n+ 1 ConversationNotifications.kt\ncom/android/systemui/statusbar/notification/ConversationNotificationManager\n*L\n180#1,2:207\n195#1,2:209\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mainHandler:Landroid/os/Handler;

.field private notifPanelCollapsed:Z

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final notificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final states:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notificationEntryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationGroupManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->mainHandler:Landroid/os/Handler;

    .line 73
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifPanelCollapsed:Z

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getNotifPanelCollapsed$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifPanelCollapsed:Z

    return p0
.end method

.method public static final synthetic access$getNotificationEntryManager$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public static final synthetic access$getNotificationGroupManager$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object p0
.end method

.method public static final synthetic access$getStates$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$removeTrackedEntry(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->removeTrackedEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$resetBadgeUi(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public static final synthetic access$resetCount(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetCount(Ljava/lang/String;)V

    return-void
.end method

.method private final removeTrackedEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 193
    :goto_0
    sget-object p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 194
    sget-object p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$2;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 1084
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ConversationLayout;

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final resetCount(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getUnreadCount(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;)I
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recoveredBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->getUnreadCount()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onNotificationPanelExpandStateChanged(Z)V
    .locals 2

    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifPanelCollapsed:Z

    if-eqz p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    invoke-static {p1}, Lkotlin/collections/MapsKt;->asSequence(Ljava/util/Map;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 173
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Lkotlin/sequences/Sequence;)Ljava/util/Map;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 180
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$2;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 1084
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 180
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_1
    return-void
.end method
