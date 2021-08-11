.class public final Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;
.super Ljava/lang/Object;
.source "AssistModule_ProvideAssistHandleViewControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final navigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
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
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;)",
            "Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleViewController;"
        }
    .end annotation

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->proxyProvideAssistHandleViewController(Lcom/android/systemui/statusbar/NavigationBarController;)Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAssistHandleViewController(Lcom/android/systemui/statusbar/NavigationBarController;)Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/assist/AssistModule;->provideAssistHandleViewController(Lcom/android/systemui/statusbar/NavigationBarController;)Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->get()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    return-object p0
.end method
