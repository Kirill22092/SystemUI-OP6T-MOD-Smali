.class public Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;
.super Ljava/lang/Object;
.source "OpSystemUIGestureOnlineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;


# instance fields
.field private mInit:Z

.field private mNonBlockBackGestureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEditorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseNativeOpaqueColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm.plugin.recordvideo.activity.MMRecordUI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mPhotoEditorList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.jingdong.app.mall"

    const-string v2, "com.bilibili.app"

    const-string v3, "com.bilibili.app.in"

    const-string v4, "tv.danmaku.bili"

    const-string v5, "com.tencent.tmgp.sgame"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mNonBlockBackGestureList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.ss.android.ugc.aweme"

    const-string v2, "com.ss.android.ugc.trill"

    const-string v3, "com.ss.android.article.news"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mUseNativeOpaqueColorList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mInit:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;
    .locals 2

    const-class v0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->sInstance:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-direct {v1}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;-><init>()V

    sput-object v1, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->sInstance:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    .line 60
    :cond_0
    sget-object v1, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->sInstance:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5

    .line 67
    const-class v0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mInit:Z

    if-nez v1, :cond_0

    const-string v1, "OpGestureOnlineConfig"

    const-string v2, "init"

    .line 69
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mInit:Z

    .line 72
    new-instance v1, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$1;)V

    .line 73
    new-instance v2, Lcom/oneplus/config/ConfigObserver;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "opSystemUIGestureOnlineConfig"

    invoke-direct {v2, p1, v3, v1, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-virtual {v2}, Lcom/oneplus/config/ConfigObserver;->register()V

    const-string p1, "OpGestureOnlineConfig"

    const-string v1, "Register online config observer"

    .line 77
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "OpGestureOnlineConfig"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register online config fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mInit:Z

    goto :goto_0

    :cond_0
    const-string p0, "OpGestureOnlineConfig"

    const-string p1, "already init."

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public isInNonBlockBackGestureList(Ljava/lang/String;)Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mNonBlockBackGestureList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInPhotoEditorList(Ljava/lang/String;)Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mPhotoEditorList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUseNativeOpaqueColor(Ljava/lang/String;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mUseNativeOpaqueColorList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mUseNativeOpaqueColorList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "OpGestureOnlineConfig"

    const-string p1, "[OnlineConfig] config is null!"

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 112
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 113
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    .line 114
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "value"

    .line 117
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v5, v0

    .line 118
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 119
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "photoEditorList"

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mPhotoEditorList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mPhotoEditorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mPhotoEditorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "OpGestureOnlineConfig"

    const-string v3, "[OnlineConfig] photo editor list changed"

    .line 127
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 126
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_2
    const-string v2, "nonBlockBackGestureList"

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mNonBlockBackGestureList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 130
    :try_start_5
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mNonBlockBackGestureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mNonBlockBackGestureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v2, "OpGestureOnlineConfig"

    const-string v3, "[OnlineConfig] non block back gesture list changed"

    .line 133
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 132
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_3
    const-string v2, "nativeOpaqueColorList"

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mUseNativeOpaqueColorList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 137
    :try_start_9
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mUseNativeOpaqueColorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->mUseNativeOpaqueColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    const-string v2, "OpGestureOnlineConfig"

    const-string v3, "[OnlineConfig] native opaque color list changed"

    .line 140
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 139
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Get gesture online config error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpGestureOnlineConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpGestureOnlineConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method
