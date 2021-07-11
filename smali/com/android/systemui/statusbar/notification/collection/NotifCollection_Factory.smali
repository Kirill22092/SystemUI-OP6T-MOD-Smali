.class public final Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;
.super Ljava/lang/Object;
.source "NotifCollection_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
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

.field private final logBufferEulogizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->statusBarServiceProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;"
        }
    .end annotation

    .line 78
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;"
        }
    .end annotation

    .line 62
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 63
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBarService;

    .line 64
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/util/time/SystemClock;

    .line 65
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/FeatureFlags;

    .line 66
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 67
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 68
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;-><init>(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;Lcom/android/systemui/dump/LogBufferEulogizer;Lcom/android/systemui/dump/DumpManager;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->statusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->loggerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object p0

    return-object p0
.end method
