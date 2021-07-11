.class public Lcom/android/systemui/theme/ThemeOverlayController;
.super Lcom/android/systemui/SystemUI;
.source "ThemeOverlayController.java"


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mThemeManager:Lcom/android/systemui/theme/ThemeOverlayManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 77
    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->updateThemeOverlays()V

    return-void
.end method

.method private updateThemeOverlays()V
    .locals 6

    .line 117
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "theme_customization_overlay_packages"

    .line 118
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayManager;->THEME_CATEGORIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ThemeOverlayController"

    const-string v4, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    .line 132
    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/UserHandle;

    const/4 v3, 0x0

    .line 135
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 136
    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 137
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayManager;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/theme/ThemeOverlayManager;->applyCurrentUserOverlays(Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    .line 84
    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/om/OverlayManager;

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayManager;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->launcher_overlayable_package:I

    .line 87
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->themepicker_overlayable_package:I

    .line 88
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/theme/ThemeOverlayManager;-><init>(Landroid/content/om/OverlayManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayManager;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/theme/ThemeOverlayController$1;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_customization_overlay_packages"

    .line 100
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayController$2;

    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/theme/ThemeOverlayController$2;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/os/Handler;)V

    const/4 p0, 0x0

    const/4 v3, -0x1

    .line 99
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
