.class public Lcom/android/systemui/DejankUtils;
.super Ljava/lang/Object;
.source "DejankUtils.java"


# static fields
.field public static final STRICT_MODE_ENABLED:Z

.field private static final sAnimationCallbackRunnable:Ljava/lang/Runnable;

.field private static sBlockingIpcs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sChoreographer:Landroid/view/Choreographer;

.field private static final sHandler:Landroid/os/Handler;

.field private static sImmediate:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sPendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProxy:Landroid/os/Binder$ProxyTransactListener;

.field private static sTemporarilyIgnoreStrictMode:Z

.field private static final sWhitelistedFrameworkClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.sysui.strictmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/DejankUtils$1;

    invoke-direct {v0}, Lcom/android/systemui/DejankUtils$1;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sProxy:Landroid/os/Binder$ProxyTransactListener;

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    const-string v1, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    const-string v1, "android.os.IPowerManager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/DejankUtils;->sProxy:Landroid/os/Binder$ProxyTransactListener;

    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    sget-object v0, Lcom/android/systemui/-$$Lambda$DejankUtils$SyBRIrRRZtwJZ1Fy9Pe5WnzuioU;->INSTANCE:Lcom/android/systemui/-$$Lambda$DejankUtils$SyBRIrRRZtwJZ1Fy9Pe5WnzuioU;

    sput-object v0, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Stack;
    .locals 1

    sget-object v0, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic lambda$static$0()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static postAfterTraversal(Ljava/lang/Runnable;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/DejankUtils;->postAnimationCallback()V

    return-void
.end method

.method private static postAnimationCallback()V
    .locals 4

    sget-object v0, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    sget-object v1, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setImmediate(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sput-boolean p0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    return-void
.end method

.method public static startDetectingBlockingIpcs(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static stopDetectingBlockingIpcs(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v1, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sput-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    sget-object v1, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sput-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static whitelistIpcs(Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    sput-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    sget-object v1, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sput-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
