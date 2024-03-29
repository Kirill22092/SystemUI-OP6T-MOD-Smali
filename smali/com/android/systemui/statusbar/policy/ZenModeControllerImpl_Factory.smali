.class public final Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
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

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->handlerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    move-result-object p0

    return-object p0
.end method
