.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideNotificationMessagingUtilFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/internal/util/NotificationMessagingUtil;",
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

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/internal/util/NotificationMessagingUtil;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->proxyProvideNotificationMessagingUtil(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;)Lcom/android/internal/util/NotificationMessagingUtil;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationMessagingUtil(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;)Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider;->provideNotificationMessagingUtil(Landroid/content/Context;)Lcom/android/internal/util/NotificationMessagingUtil;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/NotificationMessagingUtil;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/internal/util/NotificationMessagingUtil;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->get()Lcom/android/internal/util/NotificationMessagingUtil;

    move-result-object p0

    return-object p0
.end method
