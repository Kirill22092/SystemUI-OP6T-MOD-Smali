.class Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpLockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 146
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 141
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
