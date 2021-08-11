.class public final Lcom/android/systemui/controls/TooltipManager;
.super Ljava/lang/Object;
.source "TooltipManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltipManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TooltipManager.kt\ncom/android/systemui/controls/TooltipManager\n*L\n1#1,160:1\n*E\n"
.end annotation


# instance fields
.field private final arrowView:Landroid/view/View;

.field private final below:Z

.field private final layout:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxTimesShown:I

.field private final preferenceName:Ljava/lang/String;

.field private final preferenceStorer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shown:I

.field private final textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->preferenceName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/controls/TooltipManager;->maxTimesShown:I

    iput-boolean p4, p0, Lcom/android/systemui/controls/TooltipManager;->below:Z

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/android/systemui/R$layout;->controls_onboarding:I

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/systemui/controls/TooltipManager$preferenceStorer$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/controls/TooltipManager$preferenceStorer$1;-><init>(Lcom/android/systemui/controls/TooltipManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->preferenceStorer:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    sget p4, Lcom/android/systemui/R$id;->onboarding_text:I

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->textView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    sget p4, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/controls/TooltipManager$$special$$inlined$apply$lambda$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/controls/TooltipManager$$special$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/TooltipManager;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    sget p4, Lcom/android/systemui/R$id;->arrow:I

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p4, Landroid/util/TypedValue;

    invoke-direct {p4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010435

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p4, p4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->recents_onboarding_toast_arrow_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-boolean v3, p0, Lcom/android/systemui/controls/TooltipManager;->below:Z

    invoke-static {v2, v0, v3}, Lcom/android/systemui/recents/TriangleShape;->create(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const-string v2, "arrowPaint"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p4, Landroid/graphics/CornerPathEffect;

    int-to-float p1, p1

    invoke-direct {p4, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->arrowView:Landroid/view/View;

    iget-boolean p1, p0, Lcom/android/systemui/controls/TooltipManager;->below:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/controls/TooltipManager;->arrowView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager;->arrowView:Landroid/view/View;

    const-string p1, "arrowView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x2

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/TooltipManager;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final synthetic access$getBelow$p(Lcom/android/systemui/controls/TooltipManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/TooltipManager;->below:Z

    return p0
.end method

.method public static final synthetic access$getPreferenceName$p(Lcom/android/systemui/controls/TooltipManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager;->preferenceName:Ljava/lang/String;

    return-object p0
.end method

.method private final shouldShow()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    iget p0, p0, Lcom/android/systemui/controls/TooltipManager;->maxTimesShown:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/controls/TooltipManager$hide$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/TooltipManager$hide$1;-><init>(Lcom/android/systemui/controls/TooltipManager;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final show(III)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/controls/TooltipManager;->shouldShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget p1, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager;->preferenceStorer:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/controls/TooltipManager$show$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/controls/TooltipManager$show$1;-><init>(Lcom/android/systemui/controls/TooltipManager;II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
