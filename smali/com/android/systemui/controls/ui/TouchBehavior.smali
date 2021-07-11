.class public final Lcom/android/systemui/controls/ui/TouchBehavior;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

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

.field private lastColorOffset:I

.field private statelessTouch:Z

.field public template:Landroid/service/controls/templates/ControlTemplate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEnabled$p(Lcom/android/systemui/controls/ui/TouchBehavior;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLastColorOffset$p(Lcom/android/systemui/controls/ui/TouchBehavior;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    return p0
.end method

.method public static final synthetic access$setStatelessTouch$p(Lcom/android/systemui/controls/ui/TouchBehavior;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    return-void
.end method

.method private final getEnabled()Z
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 12
    .param p1    # Lcom/android/systemui/controls/ui/ControlWithState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    .line 70
    iput p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    .line 71
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v2, "cvh"

    if-eqz v1, :cond_7

    const-string v3, "control"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v4, "control.getStatusText()"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, p1, v5, v4, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    const-string v1, "control.getControlTemplate()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 75
    sget v1, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "ld.findDrawableByLayerId(R.id.clip_layer)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v5, 0x2710

    :cond_0
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 78
    iget-object v6, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move v8, p2

    invoke-static/range {v6 .. v11}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "clipLayer"

    .line 77
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public final getControl()Landroid/service/controls/Control;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "control"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

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

    .line 49
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
