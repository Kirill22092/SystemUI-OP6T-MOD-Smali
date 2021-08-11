.class public Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "OpNotificationPanelView.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field protected mNeedShowOTAWizard:Z

.field private mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v0, "OpNotificationPanelView"

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string p2, "OpNotificationPanelView init "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method private getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mNotificationPanelViewController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method private getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mStatusBar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method


# virtual methods
.method public initOpBottomArea()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->setShowOTAWizard(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method public setShowOTAWizard(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowOTAWizard, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setShowOTAWizard(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mKeyguardBottomArea == null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStatuBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public updateOpLockIcon()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon notificationShadeWindowView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getLockIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez v2, :cond_2

    sget v2, Lcom/android/systemui/R$id;->lock_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    :cond_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon complete"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_0
    if-nez v0, :cond_6

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon statusbarViewContainer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez p0, :cond_7

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon lockIcon is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon keyguardStatusView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon mStatusBar is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void
.end method
