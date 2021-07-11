.class public final Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;
.super Ljava/lang/Object;
.source "NotifPipelineInitializer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final groupCoalescerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;",
            ">;"
        }
    .end annotation
.end field

.field private final listBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final notifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final notifCoordinatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;"
        }
    .end annotation
.end field

.field private final notifInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final notifViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pipelineWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->pipelineWrapperProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->groupCoalescerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->listBuilderProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifInflaterProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifViewManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;"
        }
    .end annotation

    .line 105
    new-instance v10, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;"
        }
    .end annotation

    .line 83
    new-instance v10, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;

    .line 84
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 85
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 86
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 87
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 88
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    .line 89
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 90
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/dump/DumpManager;

    .line 91
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/FeatureFlags;

    .line 92
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->pipelineWrapperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->groupCoalescerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->listBuilderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifInflaterProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->notifViewManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;

    move-result-object p0

    return-object p0
.end method
