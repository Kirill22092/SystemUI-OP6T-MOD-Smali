.class public final Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;
.super Ljava/lang/Object;
.source "ScreenshotNotificationsController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/screenshot/ScreenshotNotificationsController;",
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

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
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
            "Landroid/view/WindowManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;)",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;)",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationsController;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->get()Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object p0

    return-object p0
.end method
