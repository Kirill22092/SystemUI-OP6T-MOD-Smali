.class public final Lcom/android/systemui/controls/ui/ToggleBehavior;
.super Ljava/lang/Object;
.source "ToggleBehavior.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public control:Landroid/service/controls/Control;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public template:Landroid/service/controls/templates/ToggleTemplate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 9
    .param p1    # Lcom/android/systemui/controls/ui/ControlWithState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v2, "cvh"

    if-eqz v1, :cond_a

    const-string v3, "control"

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v4, "control.getStatusText()"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, p1, v4, v5, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    instance-of v1, p1, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/service/controls/templates/ToggleTemplate;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz v1, :cond_7

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroid/service/controls/templates/ToggleTemplate;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "ld.findDrawableByLayerId(R.id.clip_layer)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleTemplate;->isChecked()Z

    move-result v4

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v5, p2

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo p0, "template"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "clipLayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.service.controls.templates.ToggleTemplate"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported template type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ControlsUiController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public final getTemplate()Landroid/service/controls/templates/ToggleTemplate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "template"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ToggleBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
