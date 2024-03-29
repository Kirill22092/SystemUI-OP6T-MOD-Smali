.class public final Lcom/android/keyguard/clock/ClockManager;
.super Ljava/lang/Object;
.source "ClockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/ClockManager$AvailableClocks;,
        Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;
    }
.end annotation


# instance fields
.field private final mBuiltinClocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

.field private final mCurrentUserObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mHeight:I

.field private mIsDocked:Z

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;",
            "Lcom/android/keyguard/clock/ClockManager$AvailableClocks;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field private final mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/clock/ClockManager$1;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/ClockManager$1;-><init>(Lcom/android/keyguard/clock/ClockManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$hg7TNpAa_jeQQKjwxI39ao59w9U;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$hg7TNpAa_jeQQKjwxI39ao59w9U;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/android/keyguard/clock/ClockManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/ClockManager$2;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    iput-object p6, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    iput-object p8, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    new-instance p3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qcpjSm9nfcenHjNSU7lKV-TGsX4;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qcpjSm9nfcenHjNSU7lKV-TGsX4;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-direct {v6, p6}, Lcom/android/systemui/settings/CurrentUserObservable;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    new-instance v7, Lcom/android/keyguard/clock/SettingsWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    invoke-direct {v7, p6}, Lcom/android/keyguard/clock/SettingsWrapper;-><init>(Landroid/content/ContentResolver;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/clock/ClockManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/systemui/settings/CurrentUserObservable;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/keyguard/clock/SettingsWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/clock/ClockManager;)I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/clock/ClockManager;)I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    new-instance v0, Lcom/android/keyguard/clock/DefaultClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/DefaultClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$reload$2(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 1

    instance-of v0, p1, Lcom/android/keyguard/clock/DefaultClockController;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method private synthetic lambda$reload$3(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    invoke-virtual {p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getCurrentClock()Lcom/android/systemui/plugins/ClockPlugin;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    instance-of p0, p2, Lcom/android/keyguard/clock/DefaultClockController;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$mUjYY_SkgClnk-NIhp881jS2o8E;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$mUjYY_SkgClnk-NIhp881jS2o8E;-><init>(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/systemui/plugins/ClockPlugin;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private register()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const-class v2, Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_custom_clock_face"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "docked_clock_face"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qgNV-V-ndKBDwD0H6bkgmOPGFf8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qgNV-V-ndKBDwD0H6bkgmOPGFf8;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addBuiltinClock(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->register()V

    :cond_0
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method getClockInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getContentObserver()Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method isDocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/clock/ClockManager;->mIsDocked:Z

    return p0
.end method

.method public synthetic lambda$new$0$ClockManager(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/ClockManager;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$reload$3$ClockManager(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/clock/ClockManager;->lambda$reload$3(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V

    return-void
.end method

.method public removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    iget-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->unregister()V

    :cond_0
    return-void
.end method
