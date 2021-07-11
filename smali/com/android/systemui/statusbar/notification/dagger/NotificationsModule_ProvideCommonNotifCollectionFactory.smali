.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;
.super Ljava/lang/Object;
.source "NotificationsModule_ProvideCommonNotifCollectionFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
        ">;"
    }
.end annotation


# instance fields
.field private final entryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final pipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->pipelineProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->entryManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;"
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->proxyProvideCommonNotifCollection(Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideCommonNotifCollection(Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule;->provideCommonNotifCollection(Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 59
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->pipelineProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->entryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->get()Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-result-object p0

    return-object p0
.end method
