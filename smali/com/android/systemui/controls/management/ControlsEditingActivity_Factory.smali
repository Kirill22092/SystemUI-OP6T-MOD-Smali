.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;
.super Ljava/lang/Object;
.source "ControlsEditingActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/management/ControlsEditingActivity;",
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

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final globalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
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
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->controllerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->globalActionsComponentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsEditingActivity;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 42
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/management/ControlsEditingActivity;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/management/ControlsEditingActivity;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->controllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->globalActionsComponentProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->get()Lcom/android/systemui/controls/management/ControlsEditingActivity;

    move-result-object p0

    return-object p0
.end method
