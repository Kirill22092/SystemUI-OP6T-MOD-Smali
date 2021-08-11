.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1\n*L\n1#1,575:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $anchor:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->$anchor:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->$adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getPopupThemedContext$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->$anchor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;->$adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1$onClick$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->show()V

    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$setPopup$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ListPopupWindow;)V

    return-void
.end method
