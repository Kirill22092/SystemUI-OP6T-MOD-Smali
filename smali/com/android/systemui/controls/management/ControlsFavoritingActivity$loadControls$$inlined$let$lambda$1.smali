.class final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->loadControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,385:1\n1241#2:386\n1266#2,3:387\n1269#2,3:397\n300#2,7:404\n307#3,7:390\n65#4:400\n90#4,3:401\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1\n*L\n150#1:386\n150#1,3:387\n150#1,3:397\n156#1,7:404\n150#1,7:390\n151#1:400\n151#1,3:401\n*E\n"
.end annotation


# instance fields
.field final synthetic $emptyZoneString:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->$emptyZoneString:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V
    .locals 10
    .param p1    # Lcom/android/systemui/controls/controller/ControlsController$LoadData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController$LoadData;->getAllControls()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController$LoadData;->getFavoritesIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController$LoadData;->getErrorOnLoad()Z

    move-result p1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {v4}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Lcom/android/systemui/controls/management/StructureContainer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lcom/android/systemui/controls/management/AllModel;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v8, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->$emptyZoneString:Ljava/lang/CharSequence;

    const-string v9, "emptyZoneString"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v9}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getControlsModelCallback$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

    move-result-object v9

    invoke-direct {v7, v4, v1, v8, v9}, Lcom/android/systemui/controls/management/AllModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;)V

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/controls/management/StructureContainer;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/ControlsModel;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getComparator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$setListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/StructureContainer;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/StructureContainer;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v5}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getStructureExtra$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_4
    if-ne v2, v4, :cond_6

    move v2, v1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_single_structure"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$setListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getExecutor$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;->accept(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V

    return-void
.end method
