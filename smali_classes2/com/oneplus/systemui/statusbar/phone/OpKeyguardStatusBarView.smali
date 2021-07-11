.class public Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "OpKeyguardStatusBarView.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;


# instance fields
.field private mCarrierLabel:Landroid/widget/TextView;

.field private mHighlightHintView:Landroid/view/View;

.field private mKeyguardHeader:Landroid/view/View;

.field private mSystemIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 85
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->getInstance()Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->registerListener(Landroid/content/Context;Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;)V

    return-void
.end method

.method public onBurnInPreventTrigger(I)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mKeyguardHeader:Landroid/view/View;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 98
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->getInstance()Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->unregisterListener(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    .line 70
    sget v0, Lcom/android/systemui/R$id;->highlighthintview:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    const/16 v1, 0x3e9

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    sget v0, Lcom/android/systemui/R$id;->keyguard_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mKeyguardHeader:Landroid/view/View;

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 5

    .line 110
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    .line 111
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v1

    .line 113
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 121
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
