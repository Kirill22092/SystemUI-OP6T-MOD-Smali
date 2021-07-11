.class public final Lcom/android/systemui/controls/ui/TemperatureControlBehavior;
.super Ljava/lang/Object;
.source "TemperatureControlBehavior.kt"

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

.field private subBehavior:Lcom/android/systemui/controls/ui/Behavior;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 11
    .param p1    # Lcom/android/systemui/controls/ui/ControlWithState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "cws"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v1, "cvh"

    if-eqz v0, :cond_f

    const-string v2, "control"

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v3, "control.getStatusText()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v3, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "ld.findDrawableByLayerId(R.id.clip_layer)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 48
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getCurrentActiveMode()I

    move-result v7

    .line 49
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    .line 50
    invoke-static {}, Landroid/service/controls/templates/ControlTemplate;->getNoTemplateObject()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 51
    invoke-static {}, Landroid/service/controls/templates/ControlTemplate;->getErrorTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 66
    sget-object v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    .line 67
    iget-object v4, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/service/controls/Control;->getStatus()I

    move-result v4

    const-string/jumbo v5, "subTemplate"

    .line 68
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p2

    .line 66
    invoke-virtual {v3, v4, v0, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 64
    invoke-virtual {p1, v1, p2, v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;I)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 67
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 64
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    const/4 v0, 0x1

    if-eqz v7, :cond_5

    if-eq v7, v0, :cond_5

    move v6, v0

    goto :goto_1

    :cond_5
    move v6, v4

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    if-eqz v6, :cond_6

    const/16 v4, 0x2710

    :cond_6
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 56
    iget-object v5, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v5, :cond_8

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/TemperatureControlBehavior;Landroid/service/controls/templates/TemperatureControlTemplate;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 56
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_9
    const-string p0, "clipLayer"

    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_a
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.service.controls.templates.TemperatureControlTemplate"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_c
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2
.end method

.method public final getControl()Landroid/service/controls/Control;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "control"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cvh"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-void
.end method
