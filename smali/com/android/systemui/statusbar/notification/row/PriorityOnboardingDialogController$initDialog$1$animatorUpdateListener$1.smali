.class final Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;
.super Ljava/lang/Object;
.source "PriorityOnboardingDialogController.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $baseSize:I

.field final synthetic $mImportanceRingView:Landroid/widget/ImageView;

.field final synthetic $ring:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic $ringColor:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;IILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$ring:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$ringColor:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$baseSize:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$mImportanceRingView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$ring:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$ringColor:I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$baseSize:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$ring:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;->$mImportanceRingView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
