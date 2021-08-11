.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3$onClick$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3$onClick$$inlined$apply$lambda$1;->$this_apply:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;

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

    const-string/jumbo p4, "view"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/systemui/controls/ui/SelectionItem;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3$onClick$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;

    iget-object p2, p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$switchAppOrStructure(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectionItem;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3$onClick$$inlined$apply$lambda$1;->$this_apply:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.controls.ui.SelectionItem"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
