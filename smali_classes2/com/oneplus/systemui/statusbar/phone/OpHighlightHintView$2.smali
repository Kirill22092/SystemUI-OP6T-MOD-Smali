.class Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpHighlightHintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->playBreathingAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 357
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 359
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    iget-object v0, p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 362
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->access$300()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "HighlightHintView"

    const-string p1, "playBreathingAnimation, onAnimationEnd: Restart breathing animation"

    .line 363
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
