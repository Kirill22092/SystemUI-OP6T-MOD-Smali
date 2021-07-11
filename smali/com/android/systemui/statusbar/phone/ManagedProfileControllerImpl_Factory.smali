.class public final Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;
.super Ljava/lang/Object;
.source "ManagedProfileControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 34
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    move-result-object p0

    return-object p0
.end method
