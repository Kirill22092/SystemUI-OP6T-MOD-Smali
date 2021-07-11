.class Lcom/android/systemui/statusbar/KeyguardIndicationController$12;
.super Landroid/os/Handler;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1160
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1161
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1163
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1164
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setTransientBiometricsError(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1167
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x66

    const-string v2, "KeyguardIndication"

    const/16 v3, 0x67

    if-ne p1, v0, :cond_4

    const-string p1, "MSG_PLAY_FAST_CHARGE_ANIMATION"

    .line 1171
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1173
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1174
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1176
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1177
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1182
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    .line 1184
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x384

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    const-string p1, "MSG_PLAY_FADE_OUT_ANIMATION"

    .line 1186
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$12;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_0
    return-void
.end method
