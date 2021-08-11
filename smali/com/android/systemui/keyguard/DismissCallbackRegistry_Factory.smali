.class public final Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;
.super Ljava/lang/Object;
.source "DismissCallbackRegistry_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field private final uiBgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DismissCallbackRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/DismissCallbackRegistry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->get()Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-result-object p0

    return-object p0
.end method
