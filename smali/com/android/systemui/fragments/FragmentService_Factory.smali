.class public final Lcom/android/systemui/fragments/FragmentService_Factory;
.super Ljava/lang/Object;
.source "FragmentService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/fragments/FragmentService;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final rootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/SystemUIRootComponent;",
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
            "Lcom/android/systemui/dagger/SystemUIRootComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->rootComponentProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/SystemUIRootComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)",
            "Lcom/android/systemui/fragments/FragmentService_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/fragments/FragmentService_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fragments/FragmentService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/SystemUIRootComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)",
            "Lcom/android/systemui/fragments/FragmentService;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/SystemUIRootComponent;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fragments/FragmentService;-><init>(Lcom/android/systemui/dagger/SystemUIRootComponent;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/fragments/FragmentService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->rootComponentProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/fragments/FragmentService_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService_Factory;->get()Lcom/android/systemui/fragments/FragmentService;

    move-result-object p0

    return-object p0
.end method
