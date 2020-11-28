.class public Lcom/android/systemui/qs/customize/QSEditPageManager;
.super Ljava/lang/Object;
.source "QSEditPageManager.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# static fields
.field private static TAG:Ljava/lang/String; = "QSEditPageManager"


# instance fields
.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanRemoveTile:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDragLabel:Landroid/widget/TextView;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mLowerTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSource:Landroidx/recyclerview/widget/RecyclerView;

.field mTarget:Landroidx/recyclerview/widget/RecyclerView;

.field private mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mUpperTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->reloadResources()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addPage(Lcom/android/systemui/qs/customize/QSEditViewPager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 168
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->addPage(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->updateIndicator()V

    return-void
.end method

.method private fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/customize/QSEditViewPager;",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v0

    .line 226
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 227
    new-instance v2, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-direct {v2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/customize/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 230
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    mul-int v5, v3, v0

    add-int v6, v5, v0

    .line 234
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 235
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p2, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4, v8, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_0

    if-ne v7, v6, :cond_0

    .line 239
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 241
    invoke-direct {p0, v4, v5, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 247
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    .line 251
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/customize/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private getAndRemoveLower(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 4

    const/4 v0, 0x0

    .line 528
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p1

    .line 534
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndRemoveLower: number of tiles="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->printTiles(Ljava/util/List;)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->printTiles(Ljava/util/List;)V

    .line 537
    throw p1
.end method

.method private getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->getPage(I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method private getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I
    .locals 0

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method private getPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    return-object p0

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    return-object p0
.end method

.method private printTiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .line 543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 544
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, ":tile "

    .line 545
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    .line 547
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "NULL"

    .line 552
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    sget-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printTiles: tiles size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " => "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reloadResources()V
    .locals 14

    .prologue
    const/4 v7, 0x3

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070638

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    .local v1, "dimensionPixelSize":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070636

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 67
    .local v2, "dimensionPixelSize2":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070637

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 68
    .local v3, "dimensionPixelSize3":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    const-string v0, "tweaks_num_columns"

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v4

    .line 70
    .local v4, "mQsColumns":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    const-string v0, "tweaks_num_rows"

    invoke-static {v0, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 72
    .local v5, "mQsRows":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b0091

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 73
    .local v11, "integer":I
    sget-object v13, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    .line 74
    .local v13, "tag":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v0, "rows="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, ", lower_rows="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/customize/ItemLocations;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    .line 81
    new-instance v6, Lcom/android/systemui/qs/customize/ItemLocations;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/qs/customize/ItemLocations;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    .line 82
    return-void
.end method

.method private removePage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)V
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->removePage(I)V

    .line 174
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->updateIndicator()V

    return-void
.end method

.method private setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            "Lcom/android/systemui/qs/customize/QSEditViewPager;",
            ")V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {v0, p2, p3, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;-><init>(Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditPageManager;)V

    .line 85
    new-instance p2, Lcom/android/systemui/qs/customize/QSEditPageManager$1;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/ItemLocations;->getColumns()I

    move-result p3

    invoke-direct {p2, p0, v1, p3}, Lcom/android/systemui/qs/customize/QSEditPageManager$1;-><init>(Lcom/android/systemui/qs/customize/QSEditPageManager;Landroid/content/Context;I)V

    .line 85
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 105
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->addPage(Lcom/android/systemui/qs/customize/QSEditViewPager;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public beginDragAndDrop(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result p1

    .line 114
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 115
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginDragAndDrop isUpperPage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "itemCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pageCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-gt p1, v0, :cond_1

    const/4 p1, 0x2

    if-ge v1, p1, :cond_1

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    .line 123
    :goto_0
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginDragAndDrop mCanRemoveTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public calculateItemLocation()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 517
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 518
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/systemui/qs/customize/ItemLocations;->setParentLocation(III)V

    .line 519
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUpperPager="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 521
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    aget v3, v0, v2

    aget v6, v0, v4

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {v1, v3, v6, p0}, Lcom/android/systemui/qs/customize/ItemLocations;->setParentLocation(III)V

    .line 522
    sget-object p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLowerPager="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canRemoveTile()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    return p0
.end method

.method public canScrollToNextPage()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageEmpty(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public endDragAndDrop()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->drag_to_add_tiles:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDragLabel()Landroid/widget/TextView;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getItemLocations(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;
    .locals 0

    .line 221
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemLocations()Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object p0

    return-object p0
.end method

.method public isInLowerPage(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->containsPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method public isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->containsPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method public isPageEmpty(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 209
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageEmpty()Z

    move-result p0

    return p0
.end method

.method public isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 213
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageFull()Z

    move-result p0

    return p0
.end method

.method public isPageMoreThanFull(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 217
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageMoreThanFull()Z

    move-result p0

    return p0
.end method

.method public onAfterItemAdded(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 328
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object p1

    .line 331
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 332
    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAfterItemAdded:items="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string v2, "onAfterItemAdded:page is full, add an empty page"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    .line 339
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAfterItemRemoved(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 344
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 351
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    sget-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string v1, "onAfterItemRemoved:remove the empty page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->removePage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)V

    .line 356
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onBeforeItemAdded(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v1

    .line 262
    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBeforeItemAdded:items="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string v3, "onBeforeItemAdded:page is full, move last item to the next page"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    move v2, p1

    .line 270
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 271
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    .line 272
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    .line 274
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    const/4 v5, 0x0

    if-ne v2, p1, :cond_0

    .line 278
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 279
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 282
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 283
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 284
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 287
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    if-eqz v5, :cond_2

    .line 289
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 290
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onBeforeItemRemoved(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 301
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 306
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 309
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    .line 310
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    .line 311
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 312
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 315
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 316
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 317
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 319
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    return-void
.end method

.method public rebuildPager(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 10

    .line 364
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object p1

    .line 366
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x1

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_2

    .line 372
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    .line 373
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    add-int/lit8 v3, v3, 0x1

    .line 375
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    .line 376
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 380
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageMoreThanFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 381
    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 382
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 384
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 385
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    const/4 v4, -0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 390
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 391
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 393
    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    move v4, v5

    goto :goto_0

    :cond_2
    return v4
.end method

.method public recalcEditPage()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->reloadResources()V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    return-void
.end method

.method public recalcSpecs()V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 489
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 491
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 492
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getAndRemoveLower(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 494
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 501
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 502
    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v3, :cond_3

    .line 503
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTileSpecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 474
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 7

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 457
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    .line 458
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 459
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    move v5, v2

    .line 460
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 461
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v6, v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSpecs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 467
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    :cond_3
    :goto_2
    return-void
.end method

.method public scrollNextPage()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public scrollPrevPage()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setLayoutRTL(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->setLayoutRTL(Z)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->setLayoutRTL(Z)V

    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 481
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    return-void
.end method
