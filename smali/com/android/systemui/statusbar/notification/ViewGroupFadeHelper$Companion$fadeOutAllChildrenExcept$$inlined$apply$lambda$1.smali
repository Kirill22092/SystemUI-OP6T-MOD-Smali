.class final Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ViewGroupFadeHelper.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $root$inlined:Landroid/view/ViewGroup;

.field final synthetic $viewsToFadeOut$inlined:Ljava/util/Set;


# direct methods
.method constructor <init>(JLandroid/view/ViewGroup;Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;->$root$inlined:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;->$viewsToFadeOut$inlined:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;->$root$inlined:Landroid/view/ViewGroup;

    .line 64
    sget v1, Lcom/android/systemui/R$id;->view_group_fade_helper_previous_value_tag:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const-string v1, "animation"

    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;->$viewsToFadeOut$inlined:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 70
    sget v3, Lcom/android/systemui/R$id;->view_group_fade_helper_restore_tag:I

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;->$root$inlined:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->view_group_fade_helper_previous_value_tag:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void

    .line 65
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
