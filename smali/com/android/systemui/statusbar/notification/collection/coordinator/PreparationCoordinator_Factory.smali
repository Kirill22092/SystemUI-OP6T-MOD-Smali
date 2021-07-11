.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;
.super Ljava/lang/Object;
.source "PreparationCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final errorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;",
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

.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private final viewBarnProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
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
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->notifInflaterProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->errorManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->viewBarnProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->serviceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;"
        }
    .end annotation

    .line 68
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 55
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 56
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 57
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 58
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

    .line 59
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/internal/statusbar/IStatusBarService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->loggerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->notifInflaterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->errorManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->viewBarnProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->serviceProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    move-result-object p0

    return-object p0
.end method
