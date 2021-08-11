.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,729:1\n1218#2,9:730\n1313#2:739\n1382#2,3:740\n1227#2,3:743\n1313#2:746\n1382#2,3:747\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1\n*L\n350#1,9:730\n350#1:739\n350#1,3:740\n350#1,3:743\n356#1:746\n356#1,3:747\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v6, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object v7, v6, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v6, v6, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v6, v4, v8, v9}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$createRemovedStatus(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject(Ljava/util/List;Ljava/util/List;Z)Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->$dataCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
