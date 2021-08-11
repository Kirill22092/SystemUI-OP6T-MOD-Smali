.class public final Lcom/android/systemui/qs/DoubleLineTileLayout;
.super Landroid/view/ViewGroup;
.source "DoubleLineTileLayout.kt"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDoubleLineTileLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleLineTileLayout.kt\ncom/android/systemui/qs/DoubleLineTileLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1591#2,2:166\n1591#2,2:168\n*E\n*S KotlinDebug\n*F\n+ 1 DoubleLineTileLayout.kt\ncom/android/systemui/qs/DoubleLineTileLayout\n*L\n70#1,2:166\n116#1,2:168\n*E\n"
.end annotation


# instance fields
.field private _listening:Z

.field private cellMarginHorizontal:I

.field private cellMarginVertical:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smallTileSize:I

.field private tilesToShow:I

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/internal/logging/UiEventLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->updateResources()Z

    return-void
.end method

.method private final calculateMaxColumns(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginHorizontal:I

    add-int v1, v0, p0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p1, v0

    add-int/2addr v0, p0

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final getLeftForColumn(II)I
    .locals 1

    mul-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private final getTopBottomRow()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginVertical:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final getTwoLineHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    mul-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginVertical:I

    mul-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSPanel$TileRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->_listening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/DoubleLineTileLayout;->addTileView(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    return-void
.end method

.method protected final addTileView(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1
    .param p1    # Lcom/android/systemui/qs/QSPanel$TileRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getNumVisibleTiles()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->tilesToShow:I

    return p0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSPanel$TileRecord;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->updateResources()Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->updateResources()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-direct {p0, p4}, Lcom/android/systemui/qs/DoubleLineTileLayout;->calculateMaxColumns(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->tilesToShow:I

    div-int/2addr p4, p1

    iget-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    move p5, p3

    :goto_0
    if-ge p5, p2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->tilesToShow:I

    const-string/jumbo v2, "tileView"

    if-lt p5, v1, :cond_1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez p5, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v2, p5, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    :cond_2
    rem-int v1, p5, p1

    invoke-direct {p0, v1, p4}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getLeftForColumn(II)I

    move-result v1

    if-ge p5, p1, :cond_3

    move v2, p3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getTopBottomRow()I

    move-result v2

    :goto_1
    iget v3, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    add-int v4, v1, v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    invoke-static {v1}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    invoke-static {v2}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getTwoLineHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSPanel$TileRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->_listening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->_listening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getNumVisibleTiles()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v3, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    const-string/jumbo v5, "tile"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    invoke-interface {v3, v4, v0, v5, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateResources()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_margin_horizontal_two_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginHorizontal:I

    sget v1, Lcom/android/systemui/R$dimen;->new_qs_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginVertical:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x0

    return p0
.end method
