.class public final Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;
.super Ljava/lang/Object;
.source "TakeScreenshotService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/screenshot/TakeScreenshotService;",
        ">;"
    }
.end annotation


# instance fields
.field private final globalScreenshotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/GlobalScreenshot;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final userManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
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
            "Lcom/android/systemui/screenshot/GlobalScreenshot;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->globalScreenshotProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->userManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/GlobalScreenshot;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/GlobalScreenshot;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/android/systemui/screenshot/TakeScreenshotService;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/screenshot/TakeScreenshotService;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/os/UserManager;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/screenshot/TakeScreenshotService;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->globalScreenshotProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->userManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->get()Lcom/android/systemui/screenshot/TakeScreenshotService;

    move-result-object p0

    return-object p0
.end method
