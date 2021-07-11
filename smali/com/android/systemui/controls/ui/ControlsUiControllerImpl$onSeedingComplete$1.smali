.class final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;-><init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,575:1\n1662#2,14:576\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1\n*L\n114#1,14:576\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->accept(Z)V

    return-void
.end method

.method public final accept(Z)V
    .locals 5

    if-eqz p1, :cond_5

    .line 114
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlsController()Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->getFavorites()Ljava/util/List;

    move-result-object v0

    .line 1662
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1663
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1664
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1665
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 1666
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 115
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1668
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1669
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 115
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object v1, v3

    move v2, v4

    .line 1674
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1675
    :goto_1
    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 116
    :cond_4
    invoke-static {}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getEMPTY_STRUCTURE$cp()Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object v0

    :goto_2
    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$setSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$updatePreferences(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 119
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getParent$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$reload(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    return-void
.end method
