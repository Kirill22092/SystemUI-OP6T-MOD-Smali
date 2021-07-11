.class public Lcom/oneplus/keyguard/OpEmergencyPanel;
.super Landroid/widget/FrameLayout;
.source "OpEmergencyPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;
    }
.end annotation


# instance fields
.field private mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

.field private mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

.field private mContext:Landroid/content/Context;

.field private mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

.field private mHintText:Landroid/widget/TextView;

.field private mLocale:Ljava/util/Locale;

.field private mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mLocale:Ljava/util/Locale;

    .line 54
    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private refreshLocale()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mLocale:Ljava/util/Locale;

    .line 128
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->op_emergency_indicator_hint_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mHintText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onBubbleTouched()V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onBubbleTouched()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->refreshLocale()V

    return-void
.end method

.method public onDrop()V
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onDrop()V

    .line 111
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpEmergencyPanel"

    const-string v0, "onDrop"

    .line 112
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcom/android/systemui/R$id;->indator_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/android/systemui/R$id;->bubble:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpEmergencyBubble;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

    .line 64
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->hint:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mHintText:Landroid/widget/TextView;

    .line 66
    new-instance v0, Lcom/oneplus/keyguard/OpDragPanelController;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/oneplus/keyguard/OpDragPanelController;-><init>(Landroid/content/Context;Lcom/oneplus/keyguard/OpEmergencyPanel;Lcom/oneplus/keyguard/OpEmergencyBubble;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->onStop()V

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onTimeout()V

    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    return-void
.end method
