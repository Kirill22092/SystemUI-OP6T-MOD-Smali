.class public final Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;
.super Ljava/lang/Object;
.source "OverviewProxyRecentsImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dividerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;"
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
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->dividerOptionalProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;)",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;)",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;-><init>(Ljava/util/Optional;Ljava/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->dividerOptionalProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->get()Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    move-result-object p0

    return-object p0
.end method
