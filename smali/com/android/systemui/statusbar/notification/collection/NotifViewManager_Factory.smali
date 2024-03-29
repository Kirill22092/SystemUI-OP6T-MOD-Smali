.class public final Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;
.super Ljava/lang/Object;
.source "NotifViewManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final rowRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;"
        }
    .end annotation
.end field

.field private final stabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
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
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->rowRegistryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->stabilityManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/FeatureFlags;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->rowRegistryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->stabilityManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    move-result-object p0

    return-object p0
.end method
