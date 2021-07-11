.class final Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->animateBackgroundChange(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newBaseColor$inlined:I

.field final synthetic $newClipColor$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $oldAlpha$inlined:F

.field final synthetic $oldBaseColor$inlined:I

.field final synthetic $oldColor$inlined:I

.field final synthetic $this_apply$inlined:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;IIIFLcom/android/systemui/controls/ui/ControlViewHolder;ILkotlin/jvm/internal/Ref$IntRef;ZLkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$this_apply$inlined:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$oldColor$inlined:I

    iput p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$oldBaseColor$inlined:I

    iput p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$newBaseColor$inlined:I

    iput p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$oldAlpha$inlined:F

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p8, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$newClipColor$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$this_apply$inlined:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$this_apply$inlined:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$oldColor$inlined:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$newClipColor$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$getBaseLayer$p(Lcom/android/systemui/controls/ui/ControlViewHolder;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$oldBaseColor$inlined:I

    .line 334
    iget v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$newBaseColor$inlined:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    .line 333
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$1;->$oldAlpha$inlined:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void

    .line 331
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
