.class public final Lcom/android/systemui/util/InjectionInflationController_Factory;
.super Ljava/lang/Object;
.source "InjectionInflationController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/InjectionInflationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final rootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;",
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
            "Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController_Factory;->rootComponentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;",
            ">;)",
            "Lcom/android/systemui/util/InjectionInflationController_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/util/InjectionInflationController_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/InjectionInflationController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;",
            ">;)",
            "Lcom/android/systemui/util/InjectionInflationController;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/systemui/util/InjectionInflationController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/InjectionInflationController;-><init>(Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/InjectionInflationController;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController_Factory;->rootComponentProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController_Factory;->get()Lcom/android/systemui/util/InjectionInflationController;

    move-result-object p0

    return-object p0
.end method
