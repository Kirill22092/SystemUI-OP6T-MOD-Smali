.class public Lcom/android/systemui/qs/customize/ItemLocations;
.super Ljava/lang/Object;
.source "ItemLocations.java"


# static fields
.field private static FLIP_PAGE_WIDTH:I = 0x50

.field private static SCREEN_WIDTH:I = 0x438


# instance fields
.field private mColumns:I

.field private mIsLayoutRTL:Z

.field private mItemHeight:I

.field private mItemLocations:[Landroid/graphics/Rect;

.field private mItemWidth:I

.field private mItems:I

.field private mMargin:I

.field private mParentLocation:Landroid/graphics/Point;

.field private mRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCREEN_WIDTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemLocations"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    .line 41
    iput p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    .line 42
    iput p2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    .line 43
    iput p3, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    .line 44
    iput p4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    .line 45
    iput p5, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    mul-int/2addr p4, p5

    .line 47
    iput p4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    .line 48
    new-array p1, p4, [Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->initLocationItems()V

    return-void
.end method

.method private initLocationItems()V
    .locals 13

    .line 79
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    .line 80
    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mItemWidth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mItemHeight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ItemLocations"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 87
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 88
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    if-ge v6, v8, :cond_2

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_0

    add-int/lit8 v0, v0, 0xa

    :cond_0
    add-int/2addr v1, v5

    move v8, v5

    .line 94
    :goto_1
    iget v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    if-ge v8, v9, :cond_1

    add-int/2addr v4, v5

    .line 96
    iget-object v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v2

    add-int v12, v1, v0

    invoke-direct {v10, v4, v1, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v10, v9, v7

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Location="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    aget-object v9, v9, v7

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v11, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    return p0
.end method

.method public getMaxItems()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    return p0
.end method

.method public getPositionIndex(II)I
    .locals 2

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    if-ge v0, v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget p0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    div-int p1, v0, p0

    mul-int/2addr p1, p0

    add-int/2addr p1, p0

    rem-int/2addr v0, p0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public isGoingToNextPage(I)Z
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 137
    sget p0, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 139
    :cond_1
    sget p0, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    sub-int/2addr p0, v2

    if-le p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public isGoingToPrevPage(I)Z
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 144
    sget p0, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    sget v2, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    sub-int/2addr p0, v2

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 146
    :cond_1
    sget p0, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public isLayoutRTL()Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    return p0
.end method

.method public setLayoutRTL(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    return-void
.end method

.method public setParentLocation(III)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 59
    iget p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    div-int/2addr p3, p1

    iput p3, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->initLocationItems()V

    return-void
.end method
