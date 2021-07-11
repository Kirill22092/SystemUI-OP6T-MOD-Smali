.class public final Lcom/android/systemui/pip/tv/PipManager_Factory;
.super Ljava/lang/Object;
.source "PipManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/pip/tv/PipManager;",
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

.field private final dividerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
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

.field private final pipTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceTransactionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
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
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->surfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->dividerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/tv/PipManager_Factory;
    .locals 8
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
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;)",
            "Lcom/android/systemui/pip/tv/PipManager_Factory;"
        }
    .end annotation

    .line 78
    new-instance v7, Lcom/android/systemui/pip/tv/PipManager_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/tv/PipManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 8
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
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;)",
            "Lcom/android/systemui/pip/tv/PipManager;"
        }
    .end annotation

    .line 62
    new-instance v7, Lcom/android/systemui/pip/tv/PipManager;

    .line 63
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 64
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 65
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/pip/PipBoundsHandler;

    .line 66
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 67
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 68
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/stackdivider/Divider;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/tv/PipManager;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/PipSurfaceTransactionHelper;Lcom/android/systemui/stackdivider/Divider;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/pip/tv/PipManager;
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->surfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipManager_Factory;->dividerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/pip/tv/PipManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager_Factory;->get()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p0

    return-object p0
.end method
