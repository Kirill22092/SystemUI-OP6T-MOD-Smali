.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIFactory$ContextHolder;
    }
.end annotation


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# instance fields
.field private mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanup()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 90
    sput-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->config_systemUIFactoryComponent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIFactory;

    sput-object v1, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    .line 81
    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIFactory;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating SystemUIFactory component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIFactory"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No SystemUIFactory component configured"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/SystemUIFactory;",
            ">()TT;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIFactory;->buildSystemUIRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    .line 101
    new-instance p1, Lcom/android/systemui/Dependency;

    invoke-direct {p1}, Lcom/android/systemui/Dependency;-><init>()V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->createDependency()Lcom/android/systemui/Dependency$DependencyInjector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/Dependency$DependencyInjector;->createSystemUI(Lcom/android/systemui/Dependency;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/Dependency;->start()V

    return-void
.end method


# virtual methods
.method protected buildSystemUIRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/SystemUIRootComponent;
    .locals 1

    .line 115
    invoke-static {}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builder()Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider;

    invoke-direct {v0}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->dependencyProvider(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;

    new-instance v0, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    invoke-direct {v0, p1}, Lcom/android/systemui/SystemUIFactory$ContextHolder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->contextHolder(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->build()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object p0

    return-object p0
.end method

.method public createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 13

    .line 152
    new-instance v12, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 155
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v11, Landroid/os/Handler;

    .line 156
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;)V

    return-object v12
.end method

.method public createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 10

    .line 164
    new-instance p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 166
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/NotificationMediaManager;

    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    .line 167
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/NotificationListener;

    const-class v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 168
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/phone/DozeParameters;

    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    .line 169
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/bubbles/BubbleController;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/bubbles/BubbleController;)V

    return-object p0
.end method

.method public createScreenshotNotificationSmartActionsProvider(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;
    .locals 0

    .line 143
    new-instance p0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    return-object p0
.end method

.method public getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/dagger/SystemUIRootComponent;

    return-object p0
.end method

.method public getSystemUIServiceComponents(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 127
    sget p0, Lcom/android/systemui/R$array;->config_systemUIServiceComponents:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemUIServiceComponentsPerUser(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 132
    sget p0, Lcom/android/systemui/R$array;->config_systemUIServiceComponentsPerUser:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
