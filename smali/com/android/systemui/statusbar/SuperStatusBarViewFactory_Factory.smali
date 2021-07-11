.class public final Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;
.super Ljava/lang/Object;
.source "SuperStatusBarViewFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->notificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->lockIconControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;)",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;)",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 49
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 50
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController;

    .line 51
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    .line 52
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->notificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->lockIconControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->get()Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-result-object p0

    return-object p0
.end method
