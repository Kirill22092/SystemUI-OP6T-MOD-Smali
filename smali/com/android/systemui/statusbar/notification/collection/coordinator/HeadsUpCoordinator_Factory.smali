.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;
.super Ljava/lang/Object;
.source "HeadsUpCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final headsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpViewBinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationInterruptStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->notificationInterruptStateProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 49
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 50
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 51
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 52
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->notificationInterruptStateProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    move-result-object p0

    return-object p0
.end method
