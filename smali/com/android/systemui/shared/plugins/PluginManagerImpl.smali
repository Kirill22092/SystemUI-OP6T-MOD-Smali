.class public Lcom/android/systemui/shared/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$CrashWhilePluginActiveException;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final isDebuggable:Z

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

.field private final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field private final mPluginInitializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;",
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

.field private final mWhitelistedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 6

    .line 86
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 87
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    .line 95
    invoke-interface {p5}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getBgLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    .line 96
    iput-boolean p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isDebuggable:Z

    .line 97
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {p5, p2}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getWhitelistedPlugins(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 98
    new-instance p1, Lcom/android/systemui/shared/plugins/PluginPrefs;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/shared/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 99
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {p5, p1}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getPluginEnabler(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 100
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginInitializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

    .line 102
    new-instance p1, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;)V

    .line 104
    invoke-static {p1}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 106
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPluginPackageWhitelisted(Ljava/lang/String;)Z
    .locals 3

    .line 369
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 375
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isPluginWhitelisted(Landroid/content/ComponentName;)Z
    .locals 3

    .line 383
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private startListening()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.PLUGIN_CHANGED"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.DISABLE_PLUGIN"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 159
    invoke-static {p2}, Lcom/android/systemui/shared/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Z)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v7, p3

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->loadAll()V

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->startListening()V

    return-void

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 334
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 335
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 4

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isDebuggable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isPluginPackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    sget-object p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get class loader for non-whitelisted plugin. Src:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    .line 309
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    .line 311
    invoke-static {v1, v3, p1, v0, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 312
    new-instance v1, Ldalvik/system/PathClassLoader;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 313
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 314
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 316
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    return-object p0
.end method

.method public getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    return-object p0
.end method

.method public getWhitelistedPlugins()[Ljava/lang/String;
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginInitializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

    invoke-interface {p0}, Lcom/android/systemui/shared/plugins/PluginInitializer;->handleWtfs()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 215
    sget-object p1, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 218
    invoke-virtual {p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->loadAll()V

    goto :goto_0

    .line 220
    :cond_0
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 221
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isPluginWhitelisted(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 230
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 233
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    .line 237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v6, "stat_sys_warning"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 239
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "system_notification_accent_color"

    const-string v8, "color"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    .line 243
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 244
    invoke-virtual {v8, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v8, v0

    .line 248
    :goto_1
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-string v11, "ALR"

    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v9, 0x0

    .line 251
    invoke-virtual {v4, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 253
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v9, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v9, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Plugin \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" has updated"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "Restart SysUI for changes to take effect."

    .line 257
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 258
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.systemui.action.RESTART"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 258
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    .line 260
    iget-object v8, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v7, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 261
    new-instance v7, Landroid/app/Notification$Action$Builder;

    const/4 v8, 0x0

    const-string v9, "Restart SysUI"

    invoke-direct {v7, v8, v9, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 262
    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 263
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 265
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reloading "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 269
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reloading "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/systemui/shared/plugins/PluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v1, v5, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    if-ne v1, v2, :cond_8

    .line 279
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-enabling previously disabled plugin that has been updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    .line 284
    :cond_8
    monitor-enter p0

    :try_start_2
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 286
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 287
    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_3

    .line 290
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 291
    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_4

    .line 294
    :cond_a
    monitor-exit p0

    :goto_5
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;)V"
        }
    .end annotation

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->destroy()V

    .line 185
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->stopListening()V

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
