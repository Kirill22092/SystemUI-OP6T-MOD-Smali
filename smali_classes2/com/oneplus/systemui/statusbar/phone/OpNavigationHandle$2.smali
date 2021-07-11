.class Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;
.super Ljava/lang/Object;
.source "OpNavigationHandle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->doEndAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endAnim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 261
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;->val$endAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;->val$endAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
