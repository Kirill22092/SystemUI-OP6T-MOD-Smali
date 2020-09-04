.class public Lcom/android/systemui/statusbar/phone/DoubleTapHelper;
.super Ljava/lang/Object;
.source "DoubleTapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private final mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

.field private mActivationX:F

.field private mActivationY:F

.field private final mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

.field private final mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

.field private mDoubleTapSlop:F

.field private mDownX:F

.field private mDownY:F

.field private final mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

.field private mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:F

.field private mTrackTouch:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DoubleTapHelper$GFsC9BR8swazZioXO_-_Yt7_6kU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DoubleTapHelper$GFsC9BR8swazZioXO_-_Yt7_6kU;-><init>(Lcom/android/systemui/statusbar/phone/DoubleTapHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->double_tap_slop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    return-void
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$GFsC9BR8swazZioXO_-_Yt7_6kU(Lcom/android/systemui/statusbar/phone/DoubleTapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    return-void
.end method

.method private makeActive()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method private makeInactive()V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 118
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 82
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 87
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;->onSlideBack()Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    .line 90
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez p2, :cond_4

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeActive()V

    .line 92
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    sub-float/2addr v1, v3

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    sub-float/2addr p1, v3

    .line 98
    invoke-interface {v0, p2, v1, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;->onDoubleTapLog(ZFF)V

    :cond_5
    if-eqz p2, :cond_6

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;->onDoubleTap()Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    .line 107
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 108
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto :goto_0

    .line 112
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 113
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto :goto_0

    .line 72
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    .line 75
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    .line 123
    :cond_9
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    return p0
.end method
