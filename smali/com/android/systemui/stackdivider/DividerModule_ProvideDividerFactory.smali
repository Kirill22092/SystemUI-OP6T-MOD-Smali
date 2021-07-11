.class public final Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;
.super Ljava/lang/Object;
.source "DividerModule_ProvideDividerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/stackdivider/Divider;",
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

.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final imeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final recentsOptionalLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final systemWindowsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->recentsOptionalLazyProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->systemWindowsProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->imeControllerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->handlerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->transactionPoolProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;)",
            "Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;"
        }
    .end annotation

    .line 99
    new-instance v9, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/stackdivider/Divider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;)",
            "Lcom/android/systemui/stackdivider/Divider;"
        }
    .end annotation

    .line 80
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 81
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Optional;

    .line 82
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/wm/DisplayController;

    .line 83
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/wm/SystemWindows;

    .line 84
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/wm/DisplayImeController;

    .line 85
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/os/Handler;

    .line 86
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 87
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/TransactionPool;

    .line 79
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->proxyProvideDivider(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayImeController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/TransactionPool;)Lcom/android/systemui/stackdivider/Divider;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDivider(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayImeController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/TransactionPool;)Lcom/android/systemui/stackdivider/Divider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;",
            "Lcom/android/systemui/wm/DisplayController;",
            "Lcom/android/systemui/wm/SystemWindows;",
            "Lcom/android/systemui/wm/DisplayImeController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/TransactionPool;",
            ")",
            "Lcom/android/systemui/stackdivider/Divider;"
        }
    .end annotation

    .line 120
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/stackdivider/DividerModule;->provideDivider(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayImeController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/TransactionPool;)Lcom/android/systemui/stackdivider/Divider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 119
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/stackdivider/Divider;
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->recentsOptionalLazyProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->systemWindowsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->imeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->handlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->transactionPoolProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/stackdivider/Divider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->get()Lcom/android/systemui/stackdivider/Divider;

    move-result-object p0

    return-object p0
.end method
