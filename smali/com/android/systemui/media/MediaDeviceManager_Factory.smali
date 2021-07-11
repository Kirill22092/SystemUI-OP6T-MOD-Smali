.class public final Lcom/android/systemui/media/MediaDeviceManager_Factory;
.super Ljava/lang/Object;
.source "MediaDeviceManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaDeviceManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final fgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final localMediaManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/LocalMediaManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mr2managerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/MediaRouter2Manager;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/LocalMediaManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/MediaRouter2Manager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->localMediaManagerFactoryProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->mr2managerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->fgExecutorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p6, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDeviceManager_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/LocalMediaManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/MediaRouter2Manager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/media/MediaDeviceManager_Factory;"
        }
    .end annotation

    .line 76
    new-instance v7, Lcom/android/systemui/media/MediaDeviceManager_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/MediaDeviceManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDeviceManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/LocalMediaManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/MediaRouter2Manager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/media/MediaDeviceManager;"
        }
    .end annotation

    .line 60
    new-instance v7, Lcom/android/systemui/media/MediaDeviceManager;

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 62
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/media/LocalMediaManagerFactory;

    .line 63
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/media/MediaRouter2Manager;

    .line 64
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 65
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/media/MediaDataManager;

    .line 66
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/MediaDeviceManager;-><init>(Landroid/content/Context;Lcom/android/systemui/media/LocalMediaManagerFactory;Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/dump/DumpManager;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaDeviceManager;
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->localMediaManagerFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->mr2managerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->fgExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/media/MediaDeviceManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/MediaDeviceManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDeviceManager_Factory;->get()Lcom/android/systemui/media/MediaDeviceManager;

    move-result-object p0

    return-object p0
.end method
