.class public final Lcom/android/systemui/wm/DisplayImeController_Factory;
.super Ljava/lang/Object;
.source "DisplayImeController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/wm/DisplayImeController;",
        ">;"
    }
.end annotation


# instance fields
.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final syswinProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
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
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->syswinProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->displayControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->transactionPoolProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayImeController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;)",
            "Lcom/android/systemui/wm/DisplayImeController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wm/DisplayImeController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/wm/DisplayImeController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayImeController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;)",
            "Lcom/android/systemui/wm/DisplayImeController;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wm/DisplayImeController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wm/SystemWindows;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wm/DisplayController;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/TransactionPool;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/wm/DisplayImeController;-><init>(Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayController;Landroid/os/Handler;Lcom/android/systemui/TransactionPool;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/wm/DisplayImeController;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->syswinProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController_Factory;->transactionPoolProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/wm/DisplayImeController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayImeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayImeController_Factory;->get()Lcom/android/systemui/wm/DisplayImeController;

    move-result-object p0

    return-object p0
.end method
