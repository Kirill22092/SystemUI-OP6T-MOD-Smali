.class public final Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;
.super Ljava/lang/Object;
.source "StatusBarStateControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
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
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    move-result-object p0

    return-object p0
.end method
