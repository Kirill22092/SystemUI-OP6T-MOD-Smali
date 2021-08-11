.class Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpLockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
