.class public Lcom/oneplus/networkspeed/StatusBarOPCustView;
.super Landroid/widget/LinearLayout;
.source "StatusBarOPCustView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;
    }
.end annotation


# instance fields
.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mTint:I

.field private mVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisibleState:I

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisibleState:I

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDirty:Z

    return-void
.end method

.method private applyColors()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget v1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mTint:I

    .line 158
    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 160
    iget-object v2, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    invoke-virtual {v2, v0}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 163
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public static fromResId(Landroid/content/Context;I)Lcom/oneplus/networkspeed/StatusBarOPCustView;
    .locals 3

    .line 53
    new-instance v0, Lcom/oneplus/networkspeed/StatusBarOPCustView;

    invoke-direct {v0, p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 59
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {v0, p1, p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->setView(Landroid/view/View;Landroid/content/Context;)Z

    .line 63
    invoke-direct {v0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->initDotView()V

    return-object v0
.end method

.method private initDotView()V
    .locals 4

    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 178
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 180
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 181
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    .line 182
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 183
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setView(Landroid/view/View;Landroid/content/Context;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;-><init>(Lcom/oneplus/networkspeed/StatusBarOPCustView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->setView(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private updateState()V
    .locals 4

    .line 187
    iget-boolean v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisible:Z

    if-eqz v0, :cond_2

    .line 188
    iget v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisibleState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, v2}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    .line 206
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    .line 199
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, v1}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    .line 193
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public applyVisible(Z)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 90
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 91
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->setVisibility(I)V

    .line 92
    invoke-direct {p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->updateState()V

    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisible:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDirty:Z

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;

    .line 148
    iput p3, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mTint:I

    .line 149
    invoke-direct {p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->applyColors()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 215
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 216
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDirty:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->applyColors()V

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDirty:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 295
    invoke-super {p0, p1, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mOPCustView:Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, p1}, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->setColor(I)V

    .line 106
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->applyColors()V

    :cond_0
    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mDirty:Z

    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisibleState:I

    if-eq v0, p1, :cond_0

    .line 117
    iput p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView;->mVisibleState:I

    .line 118
    invoke-direct {p0}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->updateState()V

    :cond_0
    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/StatusBarOPCustView;->setVisibleState(I)V

    return-void
.end method
