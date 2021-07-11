.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;
.super Ljava/lang/Object;
.source "AppOpsCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

.field private final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;

    const-string v0, "AppOpsCoordinator"

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 133
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 190
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 75
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/ForegroundServiceController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method
