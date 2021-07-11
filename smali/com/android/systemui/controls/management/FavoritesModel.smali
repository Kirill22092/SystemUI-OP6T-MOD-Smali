.class public final Lcom/android/systemui/controls/management/FavoritesModel;
.super Ljava/lang/Object;
.source "FavoritesModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoritesModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoritesModel.kt\ncom/android/systemui/controls/management/FavoritesModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1313#2:253\n1382#2,3:254\n300#2,7:257\n1313#2:264\n1382#2,3:265\n*E\n*S KotlinDebug\n*F\n+ 1 FavoritesModel.kt\ncom/android/systemui/controls/management/FavoritesModel\n*L\n81#1:253\n81#1,3:254\n95#1,7:257\n85#1:264\n85#1,3:265\n*E\n"
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final componentName:Landroid/content/ComponentName;

.field private dividerPosition:I

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

.field private final itemTouchHelperCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modified:Z

.field private final moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;",
            "Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorites"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoritesModelCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    .line 50
    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    .line 1313
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1383
    check-cast p3, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 86
    new-instance v1, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    iget-object v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, p3, v0}, Lcom/android/systemui/controls/management/ControlInfoWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Z)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    new-instance p2, Lcom/android/systemui/controls/management/DividerWrapper;

    const/4 p3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, p3, v1}, Lcom/android/systemui/controls/management/DividerWrapper;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 209
    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

    invoke-direct {p1, p0, v2, v2}, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;II)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->itemTouchHelperCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    return-void
.end method

.method public static final synthetic access$getDividerPosition$p(Lcom/android/systemui/controls/management/FavoritesModel;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    return p0
.end method

.method private final moveElement(II)V
    .locals 2

    if-ge p1, p2, :cond_0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p1, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-lt p1, p2, :cond_1

    .line 199
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final onMoveItemInternal(II)V
    .locals 4

    .line 138
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_2

    .line 141
    :cond_1
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-le p1, v0, :cond_7

    if-gt p2, v0, :cond_7

    .line 142
    :cond_2
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    const-string v3, "null cannot be cast to non-null type com.android.systemui.controls.management.ControlInfoWrapper"

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->setFavorite(Z)V

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_4
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-le p1, v0, :cond_6

    if-gt p2, v0, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->setFavorite(Z)V

    goto :goto_0

    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDivider(II)V

    move v1, v2

    .line 152
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->moveElement(II)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_8
    if-eqz v1, :cond_9

    .line 155
    iget-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 157
    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    if-nez p1, :cond_a

    .line 158
    iput-boolean v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    .line 159
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {p0}, Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;->onFirstChange()V

    :cond_a
    return-void
.end method

.method private final updateDivider(II)V
    .locals 4

    .line 165
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    add-int/lit8 p1, v0, -0x1

    .line 167
    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerNone(IZ)V

    move v1, v2

    .line 172
    :cond_0
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-ne p1, p2, :cond_4

    .line 173
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerShow(IZ)V

    :goto_0
    move v1, v2

    goto :goto_2

    .line 176
    :cond_1
    iget v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-le p1, v3, :cond_4

    if-gt p2, v3, :cond_4

    add-int/2addr v3, v2

    .line 177
    iput v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ne v3, v2, :cond_2

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerNone(IZ)V

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 182
    :goto_1
    iget p2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p2, v3, :cond_3

    .line 183
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerShow(IZ)V

    goto :goto_0

    :cond_3
    move v1, p1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 188
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method

.method private final updateDividerNone(IZ)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/systemui/controls/management/DividerWrapper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/management/DividerWrapper;->setShowNone(Z)V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {p0, p2}, Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;->onNoneChanged(Z)V

    return-void

    .line 114
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.controls.management.DividerWrapper"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateDividerShow(IZ)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/controls/management/DividerWrapper;

    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/management/DividerWrapper;->setShowDivider(Z)V

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.controls.management.DividerWrapper"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 302
    check-cast v3, Lcom/android/systemui/controls/management/ElementWrapper;

    .line 95
    instance-of v6, v3, Lcom/android/systemui/controls/ControlInterface;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {v3}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_3

    return-void

    .line 99
    :cond_3
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ge v2, p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-le v2, p1, :cond_6

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 103
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    goto :goto_3

    .line 105
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    :goto_3
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public getFavorites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1383
    check-cast v1, Lcom/android/systemui/controls/management/ElementWrapper;

    if-eqz v1, :cond_0

    .line 82
    check-cast v1, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getControlInfo()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.android.systemui.controls.management.ControlInfoWrapper"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public final getItemTouchHelperCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 209
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->itemTouchHelperCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    return-object p0
.end method

.method public getMoveHelper()Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    return-object p0
.end method

.method public onMoveItem(II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    return-void
.end method
