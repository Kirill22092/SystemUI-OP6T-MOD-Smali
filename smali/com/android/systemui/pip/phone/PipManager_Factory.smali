.class public final Lcom/android/systemui/pip/phone/PipManager_Factory;
.super Ljava/lang/Object;
.source "PipManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/pip/phone/PipManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final floatingContentCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSnapAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->deviceConfigProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->pipSnapAlgorithmProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/phone/PipManager_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)",
            "Lcom/android/systemui/pip/phone/PipManager_Factory;"
        }
    .end annotation

    .line 105
    new-instance v10, Lcom/android/systemui/pip/phone/PipManager_Factory;

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

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/pip/phone/PipManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/phone/PipManager;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSnapAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)",
            "Lcom/android/systemui/pip/phone/PipManager;"
        }
    .end annotation

    .line 83
    new-instance v10, Lcom/android/systemui/pip/phone/PipManager;

    .line 84
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 85
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 86
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/wm/DisplayController;

    .line 87
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/util/FloatingContentCoordinator;

    .line 88
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/DeviceConfigProxy;

    .line 89
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/pip/PipBoundsHandler;

    .line 90
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 91
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 92
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/model/SysUiState;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/pip/phone/PipManager;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/model/SysUiState;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/android/systemui/pip/phone/PipManager;
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->deviceConfigProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->pipSnapAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipManager_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/pip/phone/PipManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/phone/PipManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipManager_Factory;->get()Lcom/android/systemui/pip/phone/PipManager;

    move-result-object p0

    return-object p0
.end method
