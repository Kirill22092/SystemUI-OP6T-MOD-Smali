.class public Lcom/oneplus/networkspeed/NetworkSpeedView;
.super Landroid/widget/LinearLayout;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsVisible:Z

.field private mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mTextDown:Ljava/lang/String;

.field private mTextUp:Ljava/lang/String;

.field private mTextViewDown:Landroid/widget/TextView;

.field private mTextViewUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/networkspeed/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mIsVisible:Z

    .line 106
    new-instance p2, Lcom/oneplus/networkspeed/NetworkSpeedView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/networkspeed/NetworkSpeedView$1;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedView;)V

    iput-object p2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 49
    const-class p2, Lcom/oneplus/networkspeed/NetworkSpeedController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/networkspeed/NetworkSpeedController;

    iput-object p2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    .line 50
    const-class p2, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 52
    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/networkspeed/NetworkSpeedView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->updateText()V

    return-void
.end method

.method private refreshTextView()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, -0x42b33333    # -0.05f

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 163
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    const v0, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateText()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextUp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextDown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkSpeedView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mIsVisible:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextUp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextDown:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->registerReceiver()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 102
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onConfigurationChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkSpeedView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->unregisterReceiver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/systemui/R$id;->speed_word_up:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->speed_word_down:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    const-string v0, "NetworkSpeedView"

    const-string v1, "onFinishInflate"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->refreshTextView()V

    return-void
.end method

.method public onSpeedChange(Ljava/lang/String;)V
    .locals 2

    const-string v0, ":"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 77
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 79
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextUp:Ljava/lang/String;

    const/4 v0, 0x1

    .line 80
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextDown:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->updateText()V

    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVisibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkSpeedView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mIsVisible:Z

    if-eq p1, v0, :cond_2

    .line 133
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mIsVisible:Z

    .line 134
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->updateText()V

    :cond_2
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method
