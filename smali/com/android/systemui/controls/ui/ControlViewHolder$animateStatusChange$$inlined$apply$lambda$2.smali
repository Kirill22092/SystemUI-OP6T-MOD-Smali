.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 389
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 391
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$getStatus$p(Lcom/android/systemui/controls/ui/ControlViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 392
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$setStatusAnimator$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/Animator;)V

    return-void
.end method
