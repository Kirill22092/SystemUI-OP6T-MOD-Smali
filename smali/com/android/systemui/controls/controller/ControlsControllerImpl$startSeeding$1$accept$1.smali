.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->accept(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,729:1\n1591#2,2:730\n149#3,2:732\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1\n*L\n426#1,2:730\n437#1,2:732\n*E\n"
.end annotation


# instance fields
.field final synthetic $controls:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 424
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/controls/Control;

    .line 427
    invoke-virtual {v2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 428
    :goto_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 429
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    const-string/jumbo v5, "structureToControls.get(\u2026ableListOf<ControlInfo>()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    .line 432
    new-instance v5, Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.controlId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "it.title"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "it.subtitle"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v2

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 431
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 438
    sget-object v3, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 439
    new-instance v4, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iget-object v5, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$componentName:Landroid/content/ComponentName;

    const-string v6, "s"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cs"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v1}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 438
    invoke-virtual {v3, v4}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    goto :goto_3

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$callback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/systemui/controls/controller/SeedResponse;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "componentName.packageName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 444
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$remaining:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$callback:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$didAnyFail:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$startSeeding(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;Z)V

    return-void
.end method
