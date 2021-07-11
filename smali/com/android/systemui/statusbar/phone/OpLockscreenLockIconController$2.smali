.class Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$2;
.super Ljava/lang/Object;
.source "OpLockscreenLockIconController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
