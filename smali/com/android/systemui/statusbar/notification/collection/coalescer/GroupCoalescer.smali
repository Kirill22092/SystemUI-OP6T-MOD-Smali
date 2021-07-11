.class public Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;
.super Ljava/lang/Object;
.source "GroupCoalescer.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;
    }
.end annotation


# instance fields
.field private final mBatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/systemui/util/time/SystemClock;

.field private final mCoalescedEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

.field private final mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMaxGroupLingerDuration:J

.field private final mMinGroupLingerDuration:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;)V
    .locals 8

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 82
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;JJ)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 306
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$M7iIsb-J8YQ8wPCcv2h3sqACpyk;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$M7iIsb-J8YQ8wPCcv2h3sqACpyk;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mEventComparator:Ljava/util/Comparator;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 101
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    .line 102
    iput-wide p4, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMinGroupLingerDuration:J

    .line 103
    iput-wide p6, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMaxGroupLingerDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->maybeEmitBatch(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    return-object p0
.end method

.method private applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 267
    new-instance v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 268
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->logMissingRanking(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 235
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 240
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 247
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->setBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mEventComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->logEmitBatch(Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;->onNotificationBatchPosted(Ljava/util/List;)V

    return-void

    .line 236
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Batch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot emit out-of-date batch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getOrBuildBatch(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;-><init>(JLjava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handleNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 8

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->getOrBuildBatch(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    move-result-object v0

    .line 191
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 193
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    .line 194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 196
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->requireRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v5

    move-object v1, v7

    move-object v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;-><init>(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->resetShortTimeout(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 184
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification has already been coalesced: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$new$1(Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;)I
    .locals 2

    .line 308
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getPosition()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getPosition()I

    move-result p1

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method private synthetic lambda$resetShortTimeout$0(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    return-void
.end method

.method private maybeEmitBatch(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getBatch()Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->logEarlyEmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getBatch()Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 170
    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCreatedTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMaxGroupLingerDuration:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->logMaxBatchTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requireRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 1

    .line 258
    new-instance p0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 259
    invoke-virtual {p1, p2, p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ranking map does not contain key "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resetShortTimeout(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 4

    .line 219
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;-><init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMinGroupLingerDuration:J

    .line 223
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 281
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 285
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "Coalesced notifications:"

    .line 286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "       Created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCreatedTimestamp:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p3, p1, :cond_2

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    ERROR: batches contain "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " events but am tracking "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 298
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " total events"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    All tracked events:"

    .line 299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 301
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "        "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic lambda$resetShortTimeout$0$GroupCoalescer(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->lambda$resetShortTimeout$0(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    return-void
.end method

.method public setNotificationHandler(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    return-void
.end method
