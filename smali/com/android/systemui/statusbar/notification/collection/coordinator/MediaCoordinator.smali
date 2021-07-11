.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;
.super Ljava/lang/Object;
.source "MediaCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mIsMediaFeatureEnabled:Ljava/lang/Boolean;

.field private final mMediaFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaFeatureFlag;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator$1;

    const-string v1, "MediaCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;->mMediaFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaFeatureFlag;->getEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;->mIsMediaFeatureEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;)Ljava/lang/Boolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;->mIsMediaFeatureEnabled:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;->mMediaFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method
