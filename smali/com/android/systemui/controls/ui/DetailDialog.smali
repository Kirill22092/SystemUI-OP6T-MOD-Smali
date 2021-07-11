.class public final Lcom/android/systemui/controls/ui/DetailDialog;
.super Landroid/app/Dialog;
.source "DetailDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetailDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetailDialog.kt\ncom/android/systemui/controls/ui/DetailDialog\n*L\n1#1,155:1\n*E\n"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private activityView:Landroid/app/ActivityView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final intent:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stateCallback:Landroid/app/ActivityView$StateCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Control_DetailPanel:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    const-string p1, "DetailDialog"

    .line 48
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->TAG:Ljava/lang/String;

    .line 59
    new-instance p1, Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    .line 61
    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Landroid/app/ActivityView$StateCallback;

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 82
    sget p1, Lcom/android/systemui/R$layout;->controls_detail_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 84
    sget p1, Lcom/android/systemui/R$id;->controls_activity_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 85
    iget-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    sget p1, Lcom/android/systemui/R$id;->control_detail_close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 89
    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget p1, Lcom/android/systemui/R$id;->control_detail_open_in_app:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 93
    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$4;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 120
    sget p1, Lcom/android/systemui/R$id;->control_detail_root:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 122
    iget-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    sget v1, Lcom/android/systemui/R$dimen;->controls_activity_view_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string/jumbo v1, "systemui.controls_panel_top_offset"

    .line 125
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$3;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 137
    sget p2, Lcom/android/systemui/R$dimen;->controls_activity_view_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setCornerRadius(F)V

    :cond_0
    return-void

    .line 132
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->release()V

    .line 152
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final getActivityView()Landroid/app/ActivityView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public show()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setCallback(Landroid/app/ActivityView$StateCallback;)V

    .line 145
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
