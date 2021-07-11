.class public Lcom/oneplus/aod/OpFpAodIndicationText;
.super Landroid/widget/TextView;
.source "OpFpAodIndicationText.java"


# instance fields
.field private mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIndication:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 42
    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 47
    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 52
    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpFpAodIndicationText;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpFpAodIndicationText;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mIndication:Landroid/view/View;

    return-object p0
.end method

.method private getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 3

    .line 109
    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown security quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 114
    :cond_2
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 123
    :cond_3
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 125
    :cond_4
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method private setAodIndicationText(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    return-void
.end method

.method private setAodIndicationText(Ljava/lang/String;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpFpAodIndicationText$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText$1;-><init>(Lcom/oneplus/aod/OpFpAodIndicationText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public animateErrorText()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpFpAodIndicationText$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpFpAodIndicationText$2;-><init>(Lcom/oneplus/aod/OpFpAodIndicationText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 57
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 58
    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 60
    iput-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mIndication:Landroid/view/View;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 192
    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFodIndicationVisibilityChanged(Z)V

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 152
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showOrHide(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpFpAodIndicationText$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText$3;-><init>(Lcom/oneplus/aod/OpFpAodIndicationText;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateFPIndicationText(ZLjava/lang/String;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFPIndicationText: lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFpAodIndicationText"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x104035d

    .line 71
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 79
    invoke-direct {p0, p2}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->animateErrorText()V

    goto :goto_1

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 87
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_3

    .line 88
    sget v0, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_pattern:I

    goto :goto_0

    .line 89
    :cond_3
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_4

    .line 90
    sget v0, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_password:I

    goto :goto_0

    .line 91
    :cond_4
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_5

    .line 92
    sget v0, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_pin:I

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 94
    iget-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 95
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(I)V

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->animateErrorText()V

    :cond_6
    move p1, v0

    .line 101
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFPIndicationText: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    const-string p1, ""

    .line 104
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
