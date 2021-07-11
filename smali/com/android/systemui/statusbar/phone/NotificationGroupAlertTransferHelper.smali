.class public Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
.super Ljava/lang/Object;
.source "NotificationGroupAlertTransferHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;,
        Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;
    }
.end annotation


# instance fields
.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGroupAlertEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsDozing:Z

.field private final mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private final mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

.field private final mPendingAlerts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 70
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 182
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 80
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->handleSuppressedSummaryAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->checkShouldTransferBack(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 4

    .line 382
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getContentFlag()I

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 384
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->getContentViews()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 385
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->requireContentViews(I)V

    .line 387
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationGroupAlertTransferHelper$eMYMUXNB2yOw4q9wL9gYe0M0Ark;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationGroupAlertTransferHelper$eMYMUXNB2yOw4q9wL9gYe0M0Ark;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/row/BindRequester;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    return-void

    .line 402
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_0
    return-void
.end method

.method private checkShouldTransferBack(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V
    .locals 11

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 333
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mGroup:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 335
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 339
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 338
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 341
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mGroup:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->getPendingChildrenNotAlerting(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 347
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 348
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 349
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 351
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 352
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 351
    invoke-virtual {v7, v9, v4}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    move v7, v4

    .line 354
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 357
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;

    iput-boolean v4, v7, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;->mAbortOnInflation:Z

    move v7, v4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_7

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_5

    move v5, v4

    :cond_5
    if-eqz v5, :cond_6

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    goto :goto_1

    .line 366
    :cond_6
    iput-boolean v4, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mAlertSummaryOnNextAddition:Z

    :goto_1
    const-wide/16 v0, 0x0

    .line 368
    iput-wide v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    :cond_7
    return-void
.end method

.method private getPendingChildrenNotAlerting(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)I
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingNotificationsIterator()Ljava/lang/Iterable;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 222
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->isPendingNotificationInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private handleSuppressedSummaryAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 4

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 276
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    .line 277
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mGroup:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->pendingInflationsWillAddChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 289
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 292
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v2

    if-nez v2, :cond_4

    .line 293
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    .line 300
    :cond_3
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->transferAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method private isPendingNotificationInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$alertNotificationWhenPossible$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 388
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;

    if-eqz p3, :cond_1

    .line 390
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;->access$000(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 391
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->markContentViewsFreeable(I)V

    .line 396
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/BindRequester;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    :cond_1
    :goto_0
    return-void
.end method

.method private onAlertStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 177
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 178
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->handleSuppressedSummaryAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    :cond_0
    return-void
.end method

.method private onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 410
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private pendingInflationsWillAddChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingNotificationsIterator()Ljava/lang/Iterable;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 241
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->isPendingNotificationInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private transferAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 1

    .line 315
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 316
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already bound."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic lambda$alertNotificationWhenPossible$0$NotificationGroupAlertTransferHelper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->lambda$alertNotificationWhenPossible$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 4

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mIsDozing:Z

    if-eq v0, p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    const-wide/16 v2, 0x0

    .line 124
    iput-wide v2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    const/4 v2, 0x0

    .line 125
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mAlertSummaryOnNextAddition:Z

    goto :goto_0

    .line 128
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mIsDozing:Z

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onAlertStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method
