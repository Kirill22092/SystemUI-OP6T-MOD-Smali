.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->accept(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,729:1\n1313#2:730\n1382#2,3:731\n1313#2:734\n1382#2,3:735\n1591#2:738\n1591#2,2:739\n1592#2:741\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1\n*L\n315#1:730\n315#1,3:731\n322#1:734\n322#1,3:735\n330#1:738\n330#1,2:739\n330#1:741\n*E\n"
.end annotation


# instance fields
.field final synthetic $controls:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 314
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1383
    check-cast v3, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 315
    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_0
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/controls/controller/Favorites;->updateControls(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    invoke-static {v0, v3, v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$findRemoved(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 322
    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    .line 1313
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1383
    move-object v6, v3

    check-cast v6, Landroid/service/controls/Control;

    .line 323
    new-instance v3, Lcom/android/systemui/controls/ControlStatus;

    .line 325
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v7, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    .line 326
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v3

    .line 323
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 327
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    sget-object v3, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v5, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 1591
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 331
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v6

    .line 1591
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 332
    invoke-virtual {v10}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 333
    iget-object v7, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v8, v7, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v9, v7, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->createRemovedStatus$default(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;ZILjava/lang/Object;)Lcom/android/systemui/controls/ControlStatus;

    move-result-object v7

    .line 334
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 339
    :cond_5
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 338
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject$default(Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    move-result-object v0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$dataCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
