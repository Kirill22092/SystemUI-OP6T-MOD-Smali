.class public final Lcom/android/systemui/controls/ui/ControlViewHolder;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlViewHolder.kt\ncom/android/systemui/controls/ui/ControlViewHolder\n*L\n1#1,445:1\n*E\n"
.end annotation


# static fields
.field private static final ATTR_DISABLED:[I

.field private static final ATTR_ENABLED:[I

.field public static final Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

.field private static final FORCE_PANEL_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final baseLayer:Landroid/graphics/drawable/GradientDrawable;

.field private behavior:Lcom/android/systemui/controls/ui/Behavior;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final clipLayer:Landroid/graphics/drawable/ClipDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsController:Lcom/android/systemui/controls/controller/ControlsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public cws:Lcom/android/systemui/controls/ui/ControlWithState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isLoading:Z

.field private lastAction:Landroid/service/controls/actions/ControlAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastChallengeDialog:Landroid/app/Dialog;

.field private final layout:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextStatusText:Ljava/lang/CharSequence;

.field private final onDialogCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private stateAnimator:Landroid/animation/ValueAnimator;

.field private final status:Landroid/widget/TextView;

.field private statusAnimator:Landroid/animation/Animator;

.field private final subtitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toggleBackgroundIntensity:F

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userInteractionInProgress:Z

.field private visibleDialog:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x31

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x32

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 74
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    .line 78
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    .line 79
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/ui/ControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "controlActionCoordinator"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 103
    sget p2, Lcom/android/systemui/R$fraction;->controls_toggle_bg_intensity:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    .line 107
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "layout.requireViewById(R.id.icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 108
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->status:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "layout.requireViewById(R.id.status)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const-string p1, ""

    .line 109
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 110
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "layout.requireViewById(R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 111
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "layout.requireViewById(R.id.subtitle)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 112
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout.getContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 120
    new-instance p1, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 134
    sget p2, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/graphics/drawable/ClipDrawable;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    const/4 p4, 0x0

    .line 135
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 136
    sget p2, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 138
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 136
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.ClipDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getBaseLayer$p(Lcom/android/systemui/controls/ui/ControlViewHolder;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public static final synthetic access$getStatus$p(Lcom/android/systemui/controls/ui/ControlViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setLastChallengeDialog$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/app/Dialog;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$setStateAnimator$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setStatusAnimator$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/Animator;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$updateStatusRow(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateStatusRow(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    return-void
.end method

.method private final animateBackgroundChange(ZZI)V
    .locals 20

    move-object/from16 v11, p0

    .line 303
    iget-object v0, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->control_default_background:I

    iget-object v2, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 304
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 306
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_0

    new-array v4, v1, [I

    const v5, 0x101009e

    aput v5, v4, v2

    .line 308
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_0

    .line 309
    :cond_0
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, p3

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :goto_0
    new-array v4, v0, [Ljava/lang/Integer;

    .line 310
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v0, "cws"

    .line 306
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-array v3, v0, [Ljava/lang/Integer;

    .line 313
    iget-object v4, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$color;->control_default_background:I

    iget-object v6, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 314
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 312
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 304
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 318
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v15, v3

    check-cast v15, Landroid/graphics/drawable/GradientDrawable;

    .line 319
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    instance-of v3, v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    if-eqz v3, :cond_3

    .line 320
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    invoke-static {v12, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    move v10, v3

    goto :goto_2

    :cond_3
    move v10, v12

    .line 324
    :goto_2
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-eqz p1, :cond_7

    .line 326
    invoke-virtual {v15}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    goto :goto_3

    :cond_5
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_3
    move/from16 v16, v3

    .line 327
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    move/from16 v17, v3

    goto :goto_4

    :cond_6
    move/from16 v17, v10

    .line 328
    :goto_4
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v18

    new-array v0, v0, [I

    .line 329
    iget-object v3, v11, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ClipDrawable;->getAlpha()I

    move-result v3

    aput v3, v0, v2

    iget v2, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 330
    new-instance v8, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;

    move-object v0, v8

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v10

    move/from16 v5, v18

    move-object/from16 v6, p0

    move v7, v12

    move-object v11, v8

    move-object v8, v13

    move-object/from16 v19, v13

    move-object v13, v9

    move/from16 v9, p1

    move/from16 p2, v10

    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;-><init>(Landroid/graphics/drawable/GradientDrawable;IIIFLcom/android/systemui/controls/ui/ControlViewHolder;ILkotlin/jvm/internal/Ref$IntRef;ZLkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v13, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 337
    new-instance v11, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$2;

    move-object v0, v11

    move/from16 v4, p2

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$2;-><init>(Landroid/graphics/drawable/GradientDrawable;IIIFLcom/android/systemui/controls/ui/ControlViewHolder;ILkotlin/jvm/internal/Ref$IntRef;ZLkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v13, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x2bc

    .line 342
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 343
    sget-object v0, Lcom/android/systemui/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v0, p0

    .line 329
    iput-object v13, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    goto :goto_5

    :cond_7
    move/from16 p2, v10

    move-object v0, v11

    move-object/from16 v19, v13

    .line 347
    iget v1, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v15, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    move-object/from16 v1, v19

    .line 348
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v15, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 349
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    move/from16 v12, p2

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 350
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_5
    return-void

    .line 318
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final animateStatusChange(ZLkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    .line 359
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 363
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    const/4 v0, 0x2

    const-string v1, "alpha"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 364
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 365
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array p2, v3, [F

    const v3, 0x3ee66666    # 0.45f

    aput v3, p2, v2

    invoke-static {p1, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p2, -0x1

    .line 367
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v0, 0x1f4

    .line 368
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x384

    .line 370
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 371
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 365
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 374
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    .line 375
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 376
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 377
    new-instance v6, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$1;

    invoke-direct {v6, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 383
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array v6, v3, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {p2, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 384
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    .line 388
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 389
    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 387
    iput-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    :goto_0
    return-void
.end method

.method public static synthetic applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 261
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core(ZIZ)V

    return-void
.end method

.method public static synthetic bindBehavior$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;IILjava/lang/Object;)Lcom/android/systemui/controls/ui/Behavior;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;I)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p0

    return-object p0
.end method

.method private final setEnabled(Z)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 289
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private final updateContentDescription()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateStatusRow(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 1

    .line 407
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 412
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p5, :cond_1

    .line 414
    invoke-virtual {p5}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 416
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_2

    .line 421
    :cond_1
    instance-of p2, p3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p2, :cond_5

    .line 424
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez p2, :cond_3

    .line 425
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 427
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    .line 428
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    .line 430
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result p1

    const/16 p2, 0x34

    if-eq p1, p2, :cond_6

    .line 435
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final action(Landroid/service/controls/actions/ControlAction;)V
    .locals 4
    .param p1    # Landroid/service/controls/actions/ControlAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v2, 0x0

    const-string v3, "cws"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsController;->action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final actionResponse(I)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->enableActionOnTouch(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 200
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 199
    invoke-virtual {p1, p0, v3, v0, v1}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 201
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 194
    :cond_2
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 195
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 194
    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 204
    :cond_3
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 204
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 190
    :cond_4
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    goto :goto_1

    .line 184
    :cond_5
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 186
    :cond_6
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const-string p0, "cws"

    .line 178
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core(ZIZ)V
    .locals 11

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v0

    .line 268
    :goto_1
    sget-object v1, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v4, 0x0

    const-string v5, "cws"

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ControlWithState;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v7

    .line 269
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/RenderInfo;->getForeground()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 270
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v8

    .line 274
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v9, v0

    goto :goto_2

    :cond_2
    move v9, p3

    .line 277
    :goto_2
    new-instance v10, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v4, v7

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    .line 281
    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/RenderInfo;->getEnabledBackground()I

    move-result v0

    invoke-direct {p0, v9, p1, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateBackgroundChange(ZZI)V

    return-void

    .line 271
    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;I)Lcom/android/systemui/controls/ui/Behavior;
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/Behavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/Behavior;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/android/systemui/controls/ui/Behavior;",
            ">;I)",
            "Lcom/android/systemui/controls/ui/Behavior;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/Behavior;

    .line 247
    invoke-interface {p1, p0}, Lcom/android/systemui/controls/ui/Behavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 250
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0, p3}, Lcom/android/systemui/controls/ui/Behavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V

    const-string p0, "behavior.also {\n        \u2026nd(cws, offset)\n        }"

    .line 256
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string p0, "cws"

    .line 257
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final bindData(Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 6
    .param p1    # Lcom/android/systemui/controls/ui/ControlWithState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$$inlined$let$lambda$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->runPendingAction(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 172
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 173
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 172
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;IILjava/lang/Object;)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 214
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 215
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final getClipLayer()Landroid/graphics/drawable/ClipDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    return-object p0
.end method

.method public final getControlStatus()I
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "cws"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    const-string v0, "ControlTemplate.NO_TEMPLATE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "cws"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getCws()Lcom/android/systemui/controls/ui/ControlWithState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cws"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getDeviceType()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v1, 0x0

    const-string v2, "cws"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getDeviceType()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLastAction()Landroid/service/controls/actions/ControlAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    return-object p0
.end method

.method public final getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public final setErrorStatus()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_error_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    return-void
.end method

.method public final setStatusText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 291
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 292
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setStatusTextSize(F)V
    .locals 1

    .line 287
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final setUserInteractionInProgress(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    return-void
.end method

.method public final setVisibleDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final usePanel()Z
    .locals 2

    .line 234
    sget-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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
