.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private mAllTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private mFinished:Z

.field private mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->DEBUG:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TileQueryHelper"

    const-string v1, "new TileQueryHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private addCurrentAndStockTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 14

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_tiles_stock:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 116
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    aget-object v8, v0, v6

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v5

    move v12, v11

    :goto_2
    if-ge v11, v10, :cond_2

    aget-object v13, v9, v11

    .line 128
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v12, v7

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    if-nez v12, :cond_3

    .line 133
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 138
    :cond_4
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    const-string v0, "dbg:mem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 139
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "custom("

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 150
    :cond_7
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_8

    .line 151
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 152
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_3

    .line 156
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTileHost;->isNeedToHide(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    .line 160
    :cond_9
    invoke-interface {v3, p0, v7}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 161
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 162
    invoke-interface {v3, p0, v5}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 163
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 170
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$-7aqDrq4N73id-i9gI_WE72bklw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$-7aqDrq4N73id-i9gI_WE72bklw;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTile: spec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileQueryHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    .line 280
    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v1, 0x0

    .line 281
    iput-boolean v1, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 282
    const-class v1, Landroid/widget/Button;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 284
    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 285
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p4, :cond_2

    iget-object p3, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 286
    :cond_3
    iput-object p2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 287
    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 288
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createStateAndAddTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 294
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v1, 0x1

    .line 295
    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 296
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 297
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 298
    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {p3, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p2, 0x0

    .line 299
    invoke-direct {p0, p1, p4, v0, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    .line 264
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 265
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$addCurrentAndStockTiles$0(Ljava/util/ArrayList;)V
    .locals 4

    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 172
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    .line 174
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 175
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 176
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method private synthetic lambda$addPackageTiles$1(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 13

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    .line 186
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 188
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->quick_settings_tiles_stock:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 191
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 192
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 200
    invoke-static {v7}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-direct {p0, v0, v7}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v8

    .line 203
    invoke-virtual {p1, v7}, Lcom/android/systemui/qs/QSTileHost;->isNeedToHide(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "spec="

    const-string v10, "TileQueryHelper"

    if-eqz v8, :cond_4

    .line 208
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_3

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", addPkgTile"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_3
    invoke-direct {p0, v7, v6, v8, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    .line 214
    :cond_4
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v11, v8, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v11, :cond_5

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v8, :cond_5

    .line 215
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", icons are 0. skip."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :cond_5
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_6

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", serviceIcon="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v11, v11, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", appIcon="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_6
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 225
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v12, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_0

    :cond_7
    if-nez v8, :cond_8

    .line 229
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", icon is null, skip."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :cond_8
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object v11, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v12, 0x106000b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 236
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 237
    sget-boolean v11, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_9

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", calling create. icon="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v5, :cond_a

    .line 240
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_a
    const-string v5, "null"

    :goto_1
    invoke-direct {p0, v7, v8, v5, v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->createStateAndAddTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x1

    .line 244
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method private synthetic lambda$notifyTilesChanged$2(Ljava/util/ArrayList;Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    .line 254
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    if-eqz p2, :cond_1

    .line 256
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    instance-of p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    if-eqz p1, :cond_1

    .line 257
    check-cast p0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    :cond_1
    return-void
.end method

.method private notifyTilesChanged(Z)V
    .locals 3

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroyTiles()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 306
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public isFinished()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return p0
.end method

.method public synthetic lambda$addCurrentAndStockTiles$0$TileQueryHelper(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$addCurrentAndStockTiles$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$addPackageTiles$1$TileQueryHelper(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$addPackageTiles$1(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public synthetic lambda$notifyTilesChanged$2$TileQueryHelper(Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$notifyTilesChanged$2(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public queryTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addCurrentAndStockTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public recalcEditPage()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    if-eqz p0, :cond_1

    .line 330
    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcEditPage()V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-void
.end method
