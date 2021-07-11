.class public Lcom/android/systemui/statusbar/policy/DeadZone;
.super Ljava/lang/Object;
.source "DeadZone.java"


# instance fields
.field private final mDebugFlash:Ljava/lang/Runnable;

.field private mDecay:I

.field private final mDisplayId:I

.field private mDisplayRotation:I

.field private mFlashFrac:F

.field private mHold:I

.field private mLastPokeTime:J

.field private final mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private final mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mShouldFlash:Z

.field private mSizeMax:I

.field private mSizeMin:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeadZone$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DeadZone$1;-><init>(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 72
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 73
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayId:I

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    return-void
.end method

.method private getSize(J)F
    .locals 5

    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    sub-long/2addr p1, v1

    .line 85
    iget v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    add-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 86
    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    :goto_0
    int-to-float p0, p0

    return p0

    :cond_1
    int-to-long v3, v1

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    int-to-float p0, v0

    return p0

    :cond_2
    int-to-float v0, v0

    .line 89
    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float p0, p0

    int-to-long v3, v1

    sub-long/2addr p1, v3

    long-to-float p1, p1

    int-to-float p2, v2

    div-float/2addr p1, p2

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0
.end method

.method static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private poke(Landroid/view/MotionEvent;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    .line 174
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(I)V
    .locals 2

    .line 99
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 102
    sget v0, Lcom/android/systemui/R$integer;->navigation_bar_deadzone_hold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    .line 103
    sget v0, Lcom/android/systemui/R$integer;->navigation_bar_deadzone_decay:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    .line 105
    sget v0, Lcom/android/systemui/R$dimen;->navigation_bar_deadzone_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    .line 106
    sget v0, Lcom/android/systemui/R$dimen;->navigation_bar_deadzone_size_max:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    .line 107
    sget v0, Lcom/android/systemui/R$integer;->navigation_bar_deadzone_orientation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    .line 114
    sget v0, Lcom/android/systemui/R$bool;->config_dead_zone_flash:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->setFlashOnTouchCapture(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v0

    float-to-int v0, v0

    .line 192
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 193
    iget v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 202
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0xdd

    const/16 v1, 0xee

    const/16 v2, 0xaa

    .line 203
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    return v4

    :cond_1
    if-nez v1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v1

    float-to-int v1, v1

    .line 142
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v3, :cond_4

    .line 143
    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    if-ne v3, v2, :cond_3

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    :goto_0
    if-eqz v4, :cond_5

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consuming errant click: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeadZone"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_5
    return v0
.end method

.method public setFlashOnTouchCapture(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
