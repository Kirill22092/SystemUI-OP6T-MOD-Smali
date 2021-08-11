.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->$this_apply:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p4, "parent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view.context"

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    iget-object p3, p3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$startEditingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    iget-object p3, p3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$startFavoritingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;->$this_apply:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
