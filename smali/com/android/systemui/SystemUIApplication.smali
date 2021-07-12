.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;


# static fields
.field private static final DEBUG:Z

.field private static mGearContext:Landroid/content/Context;


# instance fields
.field private mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

.field private mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

.field private mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;

.field private mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

.field private mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string p0, "SystemUIService"

    const-string v0, "SystemUIApplication constructed."

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Lcom/android/systemui/BootCompleteCacheImpl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object p0
.end method

.method private needOverrideServicesByOp([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 162
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 163
    array-length v0, p1

    if-lez v0, :cond_0

    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    :cond_0
    const-class p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/SystemUIApplication;->mGearContext:Landroid/content/Context;

    return-object v0
.end method

.method private startServicesIfNeeded(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v0}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    move-result v0

    const-string v1, "SystemUIService"

    if-nez v0, :cond_1

    const-string/jumbo v0, "sys.boot_completed"

    .line 194
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v0}, Lcom/android/systemui/BootCompleteCacheImpl;->setBootComplete()V

    .line 196
    sget-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BOOT_COMPLETED was already sent"

    .line 197
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->createDumpManager()Lcom/android/systemui/dump/DumpManager;

    move-result-object v0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting SystemUI services for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v2, Landroid/util/TimingsTraceLog;

    const-wide/16 v3, 0x1000

    const-string v5, "SystemUIBootTiming"

    invoke-direct {v2, v5, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 208
    invoke-virtual {v2, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 209
    invoke-static {p0}, Lcom/oneplus/systemui/util/OpMdmLogger;->init(Landroid/content/Context;)V

    .line 210
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_7

    .line 212
    aget-object v7, p2, v5

    .line 213
    sget-boolean v8, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 217
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v10, v7}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveSystemUI(Ljava/lang/String;)Lcom/android/systemui/SystemUI;

    move-result-object v10

    if-nez v10, :cond_3

    .line 219
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    .line 220
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/android/systemui/SystemUI;

    .line 222
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aput-object v10, v6, v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    sget-boolean v6, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "running: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v10, v10, v5

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    .line 233
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v10, v8

    if-lez v6, :cond_5

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialization of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v6}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 241
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 244
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v5

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 228
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 246
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    invoke-interface {p1}, Lcom/android/systemui/dagger/SystemUIRootComponent;->getInitController()Lcom/android/systemui/InitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/InitController;->executePostInitTasks()V

    .line 247
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 249
    iput-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 254
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 259
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 80
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "SystemUIService"

    const-string v1, "SystemUIApplication created."
	
	sput-object p0, Lcom/android/systemui/SystemUIApplication;->mGearContext:Landroid/content/Context;

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemUIBootTiming"

    const-wide/16 v2, 0x1000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "DependencyInjection"

    .line 86
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;

    invoke-interface {v1, p0}, Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    .line 89
    invoke-interface {v1}, Lcom/android/systemui/dagger/SystemUIRootComponent;->getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    invoke-interface {v1}, Lcom/android/systemui/dagger/SystemUIRootComponent;->provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    .line 91
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 96
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    invoke-virtual {p0, v0}, Landroid/app/Application;->setTheme(I)V

    .line 98
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 101
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    :goto_0
    return-void
.end method

.method public setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;

    return-void
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 2

    .line 180
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIFactory;->getSystemUIServiceComponentsPerUser(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartSecondaryServices"

    .line 182
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIFactory;->getSystemUIServiceComponents(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->needOverrideServicesByOp([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartServices"

    .line 157
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
