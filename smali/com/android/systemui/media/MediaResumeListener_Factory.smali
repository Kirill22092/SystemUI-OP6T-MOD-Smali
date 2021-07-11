.class public final Lcom/android/systemui/media/MediaResumeListener_Factory;
.super Ljava/lang/Object;
.source "MediaResumeListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaResumeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

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

.field private final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
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
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaResumeListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)",
            "Lcom/android/systemui/media/MediaResumeListener_Factory;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/systemui/media/MediaResumeListener_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaResumeListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaResumeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)",
            "Lcom/android/systemui/media/MediaResumeListener;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/systemui/media/MediaResumeListener;

    .line 49
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 50
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 51
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    .line 52
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/tuner/TunerService;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaResumeListener;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaResumeListener;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/media/MediaResumeListener_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaResumeListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaResumeListener_Factory;->get()Lcom/android/systemui/media/MediaResumeListener;

    move-result-object p0

    return-object p0
.end method
