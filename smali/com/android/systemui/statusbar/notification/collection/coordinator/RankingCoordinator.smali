.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;
.super Ljava/lang/Object;
.source "RankingCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mDozingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private final mStatusBarStateCallback:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mSuspendedFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;

    const-string v1, "IsSuspendedFilter"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mSuspendedFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;

    const-string v1, "IsDozingFilter"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mDozingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mStatusBarStateCallback:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mDozingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mStatusBarStateCallback:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mSuspendedFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mDozingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method
