.class final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "ControlsFavoritingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->bindButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,385:1\n1591#2,2:386\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$2$1\n*L\n326#1,2:386\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getComponent$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/StructureContainer;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/StructureContainer;->getModel()Lcom/android/systemui/controls/management/ControlsModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/controls/management/ControlsModel;->getFavorites()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v2}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getController$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v4}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getComponent$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/StructureContainer;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForStructure(Lcom/android/systemui/controls/controller/StructureInfo;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getGlobalActionsComponent$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/globalactions/GlobalActionsComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    return-void
.end method
