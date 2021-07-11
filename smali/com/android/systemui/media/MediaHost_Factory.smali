.class public final Lcom/android/systemui/media/MediaHost_Factory;
.super Ljava/lang/Object;
.source "MediaHost_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaHost;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaDataFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHostStatesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final stateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost_Factory;->stateProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p5, p0, Lcom/android/systemui/media/MediaHost_Factory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;)",
            "Lcom/android/systemui/media/MediaHost_Factory;"
        }
    .end annotation

    .line 65
    new-instance v6, Lcom/android/systemui/media/MediaHost_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaHost_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;)",
            "Lcom/android/systemui/media/MediaHost;"
        }
    .end annotation

    .line 51
    new-instance v6, Lcom/android/systemui/media/MediaHost;

    .line 52
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    .line 53
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/media/MediaHierarchyManager;

    .line 54
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/media/MediaDataFilter;

    .line 55
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/media/MediaHostStatesManager;

    .line 56
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaHost;
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost_Factory;->stateProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaDataFilterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost_Factory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/media/MediaHost_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost_Factory;->get()Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    return-object p0
.end method
