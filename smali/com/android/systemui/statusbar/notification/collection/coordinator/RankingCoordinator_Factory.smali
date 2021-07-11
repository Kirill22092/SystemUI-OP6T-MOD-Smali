.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;
.super Ljava/lang/Object;
.source "RankingCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    move-result-object p0

    return-object p0
.end method
