.class public final Lcom/android/systemui/media/MediaTimeoutListener_Factory;
.super Ljava/lang/Object;
.source "MediaTimeoutListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaTimeoutListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControllerFactory;",
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
            "Lcom/android/systemui/media/MediaControllerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControllerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/media/MediaTimeoutListener_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControllerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/media/MediaTimeoutListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControllerFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaTimeoutListener;-><init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaTimeoutListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->get()Lcom/android/systemui/media/MediaTimeoutListener;

    move-result-object p0

    return-object p0
.end method
