.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;
.super Ljava/lang/Object;
.source "NotifBindPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;,
        Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;,
        Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;
    }
.end annotation


# instance fields
.field private final mBindEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private final mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mScratchCallbacksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)Lcom/android/systemui/statusbar/notification/row/BindStage;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->startPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private getBindEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    return-object p0
.end method

.method public static synthetic lambda$Ub0DE4cDhgUUqolBUMUBBCvUjYs(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroidx/core/os/CancellationSignal;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->onBindRequested(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroidx/core/os/CancellationSignal;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    return-void
.end method

.method static synthetic lambda$onBindRequested$0(Ljava/util/Set;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$startPipeline$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->onPipelineComplete(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private onBindRequested(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroidx/core/os/CancellationSignal;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->getBindEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    if-eqz p3, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$AMh7TPDBgF4c0_yw5t-ceqMMco8;

    invoke-direct {v1, v0, p3}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$AMh7TPDBgF4c0_yw5t-ceqMMco8;-><init>(Ljava/util/Set;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    invoke-virtual {p2, v1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private onPipelineComplete(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->getBindEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logFinishedPipeline(Ljava/lang/String;I)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;->onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logRequestPipelineRun(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->getBindEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logRequestPipelineRowNotSet(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/row/BindStage;->abortStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private startPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logStartPipeline(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$3PgyvwQAf2ulPzCouWU3DaPqlCo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$3PgyvwQAf2ulPzCouWU3DaPqlCo;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/statusbar/notification/row/BindStage;->executeStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No stage was ever set on the pipeline"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public synthetic lambda$startPipeline$1$NotifBindPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->lambda$startPipeline$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public manageRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logManagedRow(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->getBindEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p2, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    return-void
.end method

.method public setStage(Lcom/android/systemui/statusbar/notification/row/BindStage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logStageSet(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$Ub0DE4cDhgUUqolBUMUBBCvUjYs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$Ub0DE4cDhgUUqolBUMUBBCvUjYs;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/BindRequester;->setBindRequestListener(Lcom/android/systemui/statusbar/notification/row/BindRequester$BindRequestListener;)V

    return-void
.end method
