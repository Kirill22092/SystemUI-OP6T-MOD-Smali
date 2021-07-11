.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;
.super Ljava/lang/Object;
.source "BubbleCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

.field private final mInterceptedDismissalEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifCallback:Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mOnEndDismissInterception:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mInterceptedDismissalEntries:Ljava/util/Set;

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;

    const-string v1, "BubbleCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifCallback:Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mOnEndDismissInterception:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mOnEndDismissInterception:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Set;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mInterceptedDismissalEntries:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->isInterceptingDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->createDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    return-object p0
.end method

.method private createDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 4

    .line 154
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result p0

    .line 161
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p1

    const/4 v3, 0x1

    .line 157
    invoke-static {v1, v2, p0, v3, p1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, v3, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    return-object v0
.end method

.method private isInterceptingDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mInterceptedDismissalEntries:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationDismissInterceptor(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifCallback:Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleController;->addNotifCallback(Lcom/android/systemui/bubbles/BubbleController$NotifCallback;)V

    return-void
.end method
