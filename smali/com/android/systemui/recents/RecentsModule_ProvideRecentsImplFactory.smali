.class public final Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;
.super Ljava/lang/Object;
.source "RecentsModule_ProvideRecentsImplFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/recents/RecentsImplementation;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/ContextComponentHelper;",
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
            "Lcom/android/systemui/dagger/ContextComponentHelper;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->componentHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/ContextComponentHelper;",
            ">;)",
            "Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/RecentsImplementation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/ContextComponentHelper;",
            ">;)",
            "Lcom/android/systemui/recents/RecentsImplementation;"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->proxyProvideRecentsImpl(Landroid/content/Context;Lcom/android/systemui/dagger/ContextComponentHelper;)Lcom/android/systemui/recents/RecentsImplementation;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideRecentsImpl(Landroid/content/Context;Lcom/android/systemui/dagger/ContextComponentHelper;)Lcom/android/systemui/recents/RecentsImplementation;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/systemui/recents/RecentsModule;->provideRecentsImpl(Landroid/content/Context;Lcom/android/systemui/dagger/ContextComponentHelper;)Lcom/android/systemui/recents/RecentsImplementation;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/recents/RecentsImplementation;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/recents/RecentsImplementation;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->componentHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/RecentsImplementation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->get()Lcom/android/systemui/recents/RecentsImplementation;

    move-result-object p0

    return-object p0
.end method
