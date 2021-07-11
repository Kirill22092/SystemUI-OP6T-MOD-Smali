.class public Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
.super Landroid/widget/FrameLayout;
.source "MultiUserSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mKeyguardMode:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field protected mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mTmpInt2:[I

.field private mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field final mUserManager:Landroid/os/UserManager;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method private synthetic lambda$isMultiUserEnabled$0()Ljava/lang/Boolean;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$bool;->qs_show_user_switcher_for_single_user:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 99
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refreshContentDescription$1()Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private refreshContentDescription()V
    .locals 5

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$Rk51aHgdEumbLebIN0bdVUl-aWQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$Rk51aHgdEumbLebIN0bdVUl-aWQ;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 163
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_user:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private registerListener()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public hasMultipleUsers()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getUserCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "HasSeenMultiUser"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiUserEnabled()Z
    .locals 1

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$xTCgN3mrazovqBP0eNshKQ-KXu4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$xTCgN3mrazovqBP0eNshKQ-KXu4;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$isMultiUserEnabled$0$MultiUserSwitch()Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->lambda$isMultiUserEnabled$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$refreshContentDescription$1$MultiUserSwitch()Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->lambda$refreshContentDescription$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "quick_user"

    const-string v0, "icon"

    const-string v1, "1"

    .line 127
    invoke-static {p1, v0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p0, :cond_2

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    goto :goto_1

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    aget v3, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    aget v2, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    aput v2, v1, v0

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    .line 141
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 65
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 177
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 183
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method public setKeyguardMode(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 71
    const-class p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method
