.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;
.super Ljava/lang/Object;
.source "AppOpsCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final appOpsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;"
        }
    .end annotation
.end field

.field private final foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServiceController;

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appops/AppOpsController;

    .line 42
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;-><init>(Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->appOpsControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    move-result-object p0

    return-object p0
.end method
