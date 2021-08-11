.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;
    }
.end annotation


# instance fields
.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private mCurrentPanelAlpha:I

.field private mDozing:Z

.field private mRtlChangeListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method getCurrentPanelAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    int-to-float p0, p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;->onRtlPropertielsChanged(I)V

    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return-void
.end method

.method setPanelAlphaInternal(F)V
    .locals 2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setRtlChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
