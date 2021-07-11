.class public final Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;
.super Ljava/lang/Object;
.source "ControlsRequestDialog_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/management/ControlsRequestDialog;",
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
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsListingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
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
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->controllerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->controlsListingControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsRequestDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsRequestDialog;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    .line 39
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 41
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/management/ControlsRequestDialog;-><init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/management/ControlsListingController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/management/ControlsRequestDialog;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->controllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->controlsListingControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsRequestDialog;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->get()Lcom/android/systemui/controls/management/ControlsRequestDialog;

    move-result-object p0

    return-object p0
.end method
