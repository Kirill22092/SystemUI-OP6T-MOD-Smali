.class public Lcom/android/systemui/statusbar/notification/row/FooterView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field private mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field private mShowHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->clear_all_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllTopPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/FooterView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllTopPadding:I

    return p0
.end method

.method private compactFooterButtons(I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxLines(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxLines(I)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    if-le v0, v1, :cond_1

    .line 113
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: parent-width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dismiss-btn-width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 115
    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", manage-btn-width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 116
    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FooterView"

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    div-int/lit8 v0, v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->compactFooterButtons(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;-><init>(Lcom/android/systemui/statusbar/notification/row/FooterView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    .line 46
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 1

    .line 50
    sget v0, Lcom/android/systemui/R$id;->dismiss_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isHistoryShown()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mShowHistory:Z

    return p0
.end method

.method public isOnEmptySpace(FF)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-lez p0, :cond_0

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

.method public synthetic lambda$onConfigurationChanged$0$FooterView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget v0, Lcom/android/systemui/R$string;->clear_all_notifications_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_clear_all:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mShowHistory:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->showHistory(Z)V

    .line 111
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$FooterView$41XRRTwqAWxRJ4ZxHuVwRz_46Cw;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$FooterView$41XRRTwqAWxRJ4ZxHuVwRz_46Cw;-><init>(Lcom/android/systemui/statusbar/notification/row/FooterView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 57
    sget v0, Lcom/android/systemui/R$id;->manage_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    return-void
.end method

.method public setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setManageButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public showHistory(Z)V
    .locals 1

    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mShowHistory:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget v0, Lcom/android/systemui/R$string;->manage_notifications_history_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->manage_notifications_history_text:I

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget v0, Lcom/android/systemui/R$string;->manage_notifications_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->manage_notifications_text:I

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
