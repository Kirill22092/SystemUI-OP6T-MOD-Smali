.class public Lcom/android/systemui/statusbar/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# instance fields
.field private final mCachedDeviceConfigFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mCachedDeviceConfigFlags:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$FeatureFlags$quCg0PddUt747ILcyW36A9ZoNcM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$FeatureFlags$quCg0PddUt747ILcyW36A9ZoNcM;-><init>(Lcom/android/systemui/statusbar/FeatureFlags;)V

    const-string/jumbo p0, "systemui"

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private getDeviceConfigFlag(Ljava/lang/String;Z)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mCachedDeviceConfigFlags:Ljava/util/Map;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mCachedDeviceConfigFlags:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string/jumbo v1, "systemui"

    .line 79
    invoke-static {v1, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mCachedDeviceConfigFlags:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$quCg0PddUt747ILcyW36A9ZoNcM(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/FeatureFlags;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method private onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mCachedDeviceConfigFlags:Ljava/util/Map;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mCachedDeviceConfigFlags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public isNewNotifPipelineEnabled()Z
    .locals 2

    const-string v0, "notification.newpipeline.enabled"

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/FeatureFlags;->getDeviceConfigFlag(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNewNotifPipelineRenderingEnabled()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "notification.newpipeline.rendering"

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/FeatureFlags;->getDeviceConfigFlag(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
