.class public Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "OpPhoneStatusBarView.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;


# instance fields
.field private mHighlightHintView:Landroid/view/View;

.field private mNotifications:Landroid/view/View;

.field private mStatusBarContentLeft:Landroid/view/View;

.field private mStatusBarLeftSide:Landroid/view/View;

.field private mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mStatusbarContent:Landroid/view/ViewGroup;

.field private mSystemIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getHighlightHintWidth()I
    .locals 1

    .line 187
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 240
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->getInstance()Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->registerListener(Landroid/content/Context;Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;)V

    return-void
.end method

.method public onBurnInPreventTrigger(I)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    .line 263
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->updateStatusBarPadding()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 252
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 255
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->getInstance()Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->unregisterListener(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 66
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    .line 69
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    .line 70
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mNotifications:Landroid/view/View;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->status_bar_contents_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    .line 72
    sget v0, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    .line 74
    sget v0, Lcom/android/systemui/R$id;->status_bar_left_side:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarLeftSide:Landroid/view/View;

    .line 77
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const-string v1, "status_icon_container"

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setOpTag(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomStatusBar()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 84
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 90
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->highlighthintview_left:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->highlighthintview_right:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->highlighthintview:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    goto/16 :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarLeftSide:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 110
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarLeftSide:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->highlighthintview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    :cond_5
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->highlighthintview_right:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_6
    sget v0, Lcom/android/systemui/R$id;->highlighthintview_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    goto :goto_0

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->highlighthintview_left:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_8
    sget v0, Lcom/android/systemui/R$id;->highlighthintview_right:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    .line 141
    :cond_9
    :goto_0
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 144
    :cond_a
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 146
    sget v1, Lcom/android/systemui/R$id;->highlighthintview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    if-eqz v0, :cond_c

    const/16 v1, 0x3e8

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 161
    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const-string v2, "mAppOps"

    invoke-static {v1, p0, v2, v0}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 4

    .line 167
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    .line 168
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v1

    .line 169
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 173
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mNotifications:Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 0

    return-void
.end method

.method protected updateStatusBarPadding()V
    .locals 7

    .line 197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isHolePunchCutoutHide(Landroid/content/Context;)Z

    move-result v0

    .line 199
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/16 v1, 0x438

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->op_status_bar_cust_padding_top:I

    invoke-static {v4, v5, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    .line 206
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    .line 205
    invoke-virtual {p0, v5, v4, v6, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 210
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-static {v4, v5, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->status_bar_padding_end:I

    invoke-static {v5, v6, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v1

    if-eqz v0, :cond_2

    move v4, v1

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-eqz v2, :cond_4

    move v1, v4

    .line 217
    :cond_4
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 217
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_5
    return-void
.end method
