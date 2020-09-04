.class Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method private constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    .line 92
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    .line 97
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    .line 98
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 99
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 100
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 104
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    .line 105
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    new-instance p2, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v0

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v2

    invoke-direct {p2, p1, v0, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;FF)V

    invoke-static {p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    .line 107
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onBubbleTouched()V

    :cond_1
    return v1

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 113
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result p1

    sub-float p1, v2, p1

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    move p1, v3

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    .line 117
    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result p1

    int-to-float p1, p1

    .line 120
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 121
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    .line 123
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V

    return v1

    :cond_5
    if-ne p1, v1, :cond_7

    .line 127
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    .line 128
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 129
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    .line 130
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return v1

    .line 133
    :cond_6
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_8

    const-string p0, "OpDragPanelController"

    const-string p1, " doesn\'t touch before, skip drag"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-ne p1, v4, :cond_8

    .line 136
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    .line 137
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    :cond_8
    :goto_1
    return v0
.end method
