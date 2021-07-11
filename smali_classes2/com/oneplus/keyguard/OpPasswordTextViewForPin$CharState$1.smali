.class Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 497
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 502
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->mCancelled:Z

    if-nez p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    iget-object p1, p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$300(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    iget-object p1, p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$400(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Ljava/util/Stack;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->reset()V

    .line 506
    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    iget-object v0, p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->access$500(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;Landroid/animation/Animator;)V

    .line 507
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 513
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;->mCancelled:Z

    return-void
.end method
