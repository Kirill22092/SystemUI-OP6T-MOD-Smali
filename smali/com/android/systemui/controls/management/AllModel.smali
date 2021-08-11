.class public final Lcom/android/systemui/controls/management/AllModel;
.super Ljava/lang/Object;
.source "AllModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/AllModel$OrderedMap;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllModel.kt\ncom/android/systemui/controls/management/AllModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,137:1\n1365#2,9:138\n1591#2:147\n240#2,2:148\n1592#2:150\n1374#2:151\n240#2,2:152\n1266#2,3:154\n1269#2,3:164\n1382#2,3:167\n673#2:170\n746#2,2:171\n307#3,7:157\n*E\n*S KotlinDebug\n*F\n+ 1 AllModel.kt\ncom/android/systemui/controls/management/AllModel\n*L\n54#1,9:138\n54#1:147\n54#1,2:148\n54#1:150\n54#1:151\n69#1,2:152\n88#1,3:154\n88#1,3:164\n61#1,3:167\n61#1:170\n61#1,2:171\n88#1,7:157\n*E\n"
.end annotation


# instance fields
.field private final controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsModelCallback:Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;

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

.field private final emptyZoneString:Ljava/lang/CharSequence;

.field private final favoriteIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modified:Z

.field private final moveHelper:Ljava/lang/Void;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "controls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialFavoriteIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyZoneString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsModelCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->controls:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/management/AllModel;->emptyZoneString:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/controls/management/AllModel;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p4}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    iget-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->controls:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/AllModel;->createWrappers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->elements:Ljava/util/List;

    return-void
.end method

.method private final createWrappers(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->getOrderedKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "map.getValue(zoneName)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;->INSTANCE:Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_2

    :cond_3
    new-instance v5, Lcom/android/systemui/controls/management/ZoneNameWrapper;

    const-string/jumbo v6, "zoneName"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3}, Lcom/android/systemui/controls/management/ZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    new-instance v0, Lcom/android/systemui/controls/management/ZoneNameWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel;->emptyZoneString:Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/ZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    :cond_6
    return-object p1
.end method


# virtual methods
.method public changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/AllModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/controls/management/ElementWrapper;

    instance-of v4, v3, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/ControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v0

    if-ne p2, v0, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/controls/management/AllModel;->modified:Z

    if-nez p1, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/controls/management/AllModel;->modified:Z

    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;

    invoke-interface {p0}, Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;->onFirstChange()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/ControlStatus;->setFavorite(Z)V

    :cond_6
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

    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public getFavorites()Ljava/util/List;
    .locals 7
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

    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/controls/management/AllModel;->controls:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public bridge synthetic getMoveHelper()Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/AllModel;->getMoveHelper()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    return-object p0
.end method

.method public getMoveHelper()Ljava/lang/Void;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel;->moveHelper:Ljava/lang/Void;

    return-object p0
.end method
