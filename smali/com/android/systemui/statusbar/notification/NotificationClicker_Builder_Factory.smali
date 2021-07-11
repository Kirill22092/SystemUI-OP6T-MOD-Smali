.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;
.super Ljava/lang/Object;
.source "NotificationClicker_Builder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
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
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->bubbleControllerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->bubbleControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->get()Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    move-result-object p0

    return-object p0
.end method
