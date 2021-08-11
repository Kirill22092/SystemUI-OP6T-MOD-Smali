.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->animateBackgroundChange(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;IIIFLcom/android/systemui/controls/ui/ControlViewHolder;ILkotlin/jvm/internal/Ref$IntRef;ZLkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$setStateAnimator$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method
