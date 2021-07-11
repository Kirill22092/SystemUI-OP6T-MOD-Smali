.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final DEBUG:Z

.field private static final SPEW:Z

.field private static final S_VENDORMODE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBouncerShowing:Z

.field private mExpanded:Z

.field protected mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field protected mPanelFraction:F

.field private mState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    .line 52
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 53
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->SPEW:Z

    const-string v0, "ro.vendor.factory_mode"

    .line 81
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->S_VENDORMODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isFactoryMode()Z
    .locals 1

    .line 160
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->S_VENDORMODE:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    move p2, v1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->resetViews(Z)V

    const/4 p2, 0x0

    .line 269
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 270
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    move p2, v2

    .line 272
    :goto_0
    sget-boolean p3, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "collapsePanel: animate=%s waiting=%s"

    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-nez p2, :cond_2

    .line 273
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_2
    return-void
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 138
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    return p0
.end method

.method public go(I)V
    .locals 3

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "go state: %d -> %d"

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public isClosed()Z
    .locals 0

    .line 286
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    return p0
.end method

.method public onClosingFinished()V
    .locals 0

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .line 306
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "onExpandingFinished"

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 117
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    .line 290
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "onPanelCollapsed"

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 1

    .line 294
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "onPanelFullyOpened"

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .line 282
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "onPanelPeeked"

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 99
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "panel_bar_super_parcelable"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string/jumbo v0, "state"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    :cond_1
    return-void

    .line 100
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "panel_bar_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 172
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isFactoryMode()Z

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-nez v0, :cond_1

    .line 199
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "onTouch: no panel for touch at (%d,%d)"

    .line 199
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isEnabled()Z

    move-result v1

    .line 204
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    const/4 v6, 0x3

    if-eqz v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v0, v2, v5

    if-eqz v1, :cond_2

    const-string v7, ""

    goto :goto_0

    :cond_2
    const-string v7, " (disabled)"

    :goto_0
    aput-object v7, v2, v3

    const-string v7, "PanelBar.onTouch: state=%d ACTION_DOWN: panel %s %s"

    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez v1, :cond_4

    .line 208
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 208
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 214
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    return v4

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 175
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent: all panels disabled, isFactoryMode."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result p0

    if-nez p0, :cond_b

    .line 180
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    .line 188
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_a

    .line 189
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    .line 189
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v4

    .line 181
    :cond_b
    :goto_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "onTouch: all panels disabled, just pass touch event for highlgiht hint"

    .line 181
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public onTrackingStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public panelEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 4

    .line 225
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 233
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->SPEW:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "panelExpansionChanged: start state=%d"

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 235
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    .line 236
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    const/4 p1, 0x2

    if-eqz p2, :cond_4

    .line 240
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p2, :cond_1

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 245
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p2

    .line 246
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PanelBar;->SPEW:Z

    if-eqz v3, :cond_2

    new-array v3, p1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "panelExpansionChanged:  -> %s: f=%.1f"

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    move p2, v2

    :goto_1
    if-eqz p2, :cond_5

    .line 249
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v3, :cond_5

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 252
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_6

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 257
    :cond_6
    :goto_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PanelBar;->SPEW:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, ""

    if-eqz p2, :cond_7

    const-string p2, " fullyOpened"

    goto :goto_3

    :cond_7
    move-object p2, p0

    :goto_3
    aput-object p2, v3, v1

    if-eqz v0, :cond_8

    const-string p0, " fullyClosed"

    :cond_8
    aput-object p0, v3, p1

    const-string p0, "panelExpansionChanged: end state=%d [%s%s ]"

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 227
    :cond_a
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "panelExpansionChanged isNaN frac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " expanded "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "frac cannot be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method

.method protected shouldPanelBeVisible()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected updateVisibility()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->shouldPanelBeVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
