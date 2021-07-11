.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;
.super Ljava/lang/Object;
.source "HeadsUpCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private mCurrentHun:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field private final mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private mNotifExtendingLifetime:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

.field private final mNotifSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

.field private final mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 172
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$3;

    const-string v1, "HeadsUpCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 207
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$4;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$4;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$5;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 82
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 83
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 84
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->onHeadsUpViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isCurrentlyShowingHun(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifExtendingLifetime:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifExtendingLifetime:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mCurrentHun:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mCurrentHun:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->endNotifLifetimeExtension()V

    return-void
.end method

.method private endNotifLifetimeExtension()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifExtendingLifetime:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;->onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifExtendingLifetime:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_0
    return-void
.end method

.method private isCurrentlyShowingHun(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mCurrentHun:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onHeadsUpViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    return-void
.end method

.method public getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    return-object p0
.end method
