.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior;
.super Ljava/lang/Object;
.source "ToggleRangeBehavior.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToggleRangeBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleRangeBehavior.kt\ncom/android/systemui/controls/ui/ToggleRangeBehavior\n*L\n1#1,362:1\n*E\n"
.end annotation


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private colorOffset:I

.field public context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public control:Landroid/service/controls/Control;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentRangeValue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentStatusText:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isChecked:Z

.field private isToggleable:Z

.field private rangeAnimator:Landroid/animation/ValueAnimator;

.field public rangeTemplate:Landroid/service/controls/templates/RangeTemplate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public templateId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$levelToRangeValue(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$rangeToLevelValue(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeToLevelValue(F)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setRangeAnimator$p(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->findNearestStep(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ControlsUiController"

    const-string v1, "Illegal format in range template"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private final levelToRangeValue(I)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v1, 0x0

    const-string v2, "rangeTemplate"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result p0

    const/4 v1, 0x0

    int-to-float v1, v1

    const/16 v2, 0x2710

    int-to-float v2, v2

    int-to-float p1, p1

    invoke-static {v0, p0, v1, v2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final rangeToLevelValue(F)I
    .locals 5

    const/4 v0, 0x0

    int-to-float v0, v0

    const/16 v1, 0x2710

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v3, 0x0

    const-string v4, "rangeTemplate"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result p0

    invoke-static {v0, v1, v2, p0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setup(Landroid/service/controls/templates/RangeTemplate;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v0, 0x0

    const-string v1, "rangeTemplate"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final setup(Landroid/service/controls/templates/ToggleRangeTemplate;)V
    .locals 2

    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleRangeTemplate;->getRange()Landroid/service/controls/templates/RangeTemplate;

    move-result-object v0

    const-string/jumbo v1, "template.getRange()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleRangeTemplate;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    return-void
.end method

.method private final setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z
    .locals 2

    instance-of v0, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setup(Landroid/service/controls/templates/ToggleRangeTemplate;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/service/controls/templates/RangeTemplate;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/service/controls/templates/RangeTemplate;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setup(Landroid/service/controls/templates/RangeTemplate;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    const-string/jumbo v0, "template.getTemplate()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z

    move-result v1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported template type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ControlsUiController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final beginUpdateRange()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v1, "cvh"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setUserInteractionInProgress(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->control_status_expanded:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusTextSize(F)V

    return-void

    :cond_0
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 10
    .param p1    # Lcom/android/systemui/controls/ui/ControlWithState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    iput p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->colorOffset:I

    const-string v1, "control"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v2, "control.getStatusText()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v2, "cvh"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    sget v3, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v3, "ld.findDrawableByLayerId(R.id.clip_layer)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    const-string/jumbo v1, "template"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "template.getTemplateId()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeToLevelValue(F)I

    move-result p1

    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "rangeTemplate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public final endUpdateRange()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v1, "cvh"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->control_status_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/service/controls/templates/RangeTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rangeTemplate.getTemplateId()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->findNearestStep(F)F

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->setValue(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setUserInteractionInProgress(Z)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "clipLayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p0, "rangeTemplate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final findNearestStep(F)F
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v1, 0x0

    const-string v2, "rangeTemplate"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_3

    sub-float v4, p1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    move-result v3

    add-float/2addr v0, v3

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result p0

    return p0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getClipLayer()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "clipLayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cvh"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "rangeTemplate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getTemplateId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "templateId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 3
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/View;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/GestureDetector;Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    return p0
.end method

.method public final isToggleable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    return p0
.end method

.method public final updateRange(IZZ)V
    .locals 9

    const/16 v0, 0x2710

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    const-string v3, "clipLayer"

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    const-string v5, "cvh"

    if-nez v2, :cond_1

    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_0

    iget v6, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->colorOffset:I

    invoke-virtual {v2, p2, v6, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core(ZIZ)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v2, 0x2

    const/4 v6, 0x1

    if-eqz p3, :cond_8

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v6

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v7

    if-eq v7, p1, :cond_a

    iget-object v7, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->drag(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-eq p1, v0, :cond_a

    new-array v0, v2, [I

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getClipLayer()Landroid/graphics/drawable/ClipDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v3

    aput v3, v0, v1

    aput p1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$$inlined$apply$lambda$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$$inlined$apply$lambda$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v7, 0x2bc

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    :goto_3
    if-eqz p2, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/service/controls/templates/RangeTemplate;->getFormatString()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "%.1f"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    if-eqz p3, :cond_c

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1, v2, v4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    const-string p0, "rangeTemplate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    invoke-static {p1, p0, v1, v2, v4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    :goto_4
    return-void

    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method
