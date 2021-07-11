.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$OICE3JOCIwmVbbHi746Bfw-wQKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$OICE3JOCIwmVbbHi746Bfw-wQKU;->f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$OICE3JOCIwmVbbHi746Bfw-wQKU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$OICE3JOCIwmVbbHi746Bfw-wQKU;->f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$OICE3JOCIwmVbbHi746Bfw-wQKU;->f$1:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->lambda$startActivateAnimation$0$ActivatableNotificationView(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
