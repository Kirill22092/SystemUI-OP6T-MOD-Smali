.class public Lcom/android/systemui/globalactions/GlobalActionsComponent;
.super Lcom/android/systemui/SystemUI;
.source "GlobalActionsComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/GlobalActions;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field private final mGlobalActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/GlobalActions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugin:Lcom/android/systemui/plugins/GlobalActions;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ExtensionController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/GlobalActions;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mGlobalActionsProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public static synthetic lambda$bGplH0pcKhfpL1pOMBpgWKJntvw(Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/plugins/GlobalActions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->onExtensionCallback(Lcom/android/systemui/plugins/GlobalActions;)V

    return-void
.end method

.method private onExtensionCallback(Lcom/android/systemui/plugins/GlobalActions;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions;->destroy()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    return-void
.end method


# virtual methods
.method public handleShowGlobalActionsMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setGlobalActionsVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/GlobalActions;->showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    return-void
.end method

.method public handleShowShutdownUi(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/GlobalActions;->showShutdownUi(ZLjava/lang/String;)V

    return-void
.end method

.method public onGlobalActionsHidden()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setGlobalActionsVisible(Z)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onGlobalActionsShown()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public op_reboot(ZLjava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->op_reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public reboot(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->reboot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public shutdown()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public start()V
    .locals 3

    const-class v0, Lcom/android/systemui/plugins/GlobalActions;

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mGlobalActionsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$_JK3806lHhx7U5FWWTWu23JrO_A;

    invoke-direct {v2, v0}, Lcom/android/systemui/globalactions/-$$Lambda$_JK3806lHhx7U5FWWTWu23JrO_A;-><init>(Ljavax/inject/Provider;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$bGplH0pcKhfpL1pOMBpgWKJntvw;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$bGplH0pcKhfpL1pOMBpgWKJntvw;-><init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
