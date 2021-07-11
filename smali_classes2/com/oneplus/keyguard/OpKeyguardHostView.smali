.class public Lcom/oneplus/keyguard/OpKeyguardHostView;
.super Landroid/widget/FrameLayout;
.source "OpKeyguardHostView.java"


# instance fields
.field protected mKeyguardSecurityNavigationSpace:Landroid/view/View;

.field private mNavigationbarHide:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mNavigationbarHide:Z

    return-void
.end method

.method private getNavigationSpaceHeight()I
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNavigationSpaceHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpKeyguardHostView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mNavigationbarHide:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 2

    .line 66
    const-class v0, Lcom/android/keyguard/KeyguardHostView;

    const-string v1, "mSecurityContainer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object p0
.end method

.method private isGestureNavigationBarMode()Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    .line 122
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isAppFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    const-string p0, "OpKeyguardHostView"

    const-string p1, "fitSystemWindows: isAppFullScreen."

    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onHideNavBar(Z)V
    .locals 3

    .line 76
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mNavigationbarHide:Z

    .line 77
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mKeyguardSecurityNavigationSpace:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHideNavBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->isGestureNavigationBarMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->isGestureNavigationBarMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onHideNavBar setVisibility GONE:"

    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mKeyguardSecurityNavigationSpace:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->getNavigationSpaceHeight()I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mKeyguardSecurityNavigationSpace:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mKeyguardSecurityNavigationSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mKeyguardSecurityNavigationSpace:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHideNavBar setVisibility VISIBLE, height:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public resetFlipperY()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardSecurityContainer;->resetFlipperY()V

    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/keyguard/OpKeyguardSecurityContainer;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;I)V

    :cond_0
    return-void
.end method

.method protected updateNavigationSpace()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardHostView;->mNavigationbarHide:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardHostView;->onHideNavBar(Z)V

    return-void
.end method
