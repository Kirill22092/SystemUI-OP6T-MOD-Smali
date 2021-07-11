.class public Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
.super Ljava/lang/Object;
.source "OpFingerprintAnimationCtrl.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAnimPostDelayTime:J

.field private mAnimPostDelayTimeOnAod:J

.field private mAnimationState:I

.field private mContext:Landroid/content/Context;

.field private mCurAnimationType:I

.field private mCustAnimPostDelayTime:J

.field private mCustAnimPostDelayTimeOnAod:J

.field private mDownAnimFrameNum:I

.field private mDownAnimStartIndex:I

.field private mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

.field private mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

.field private mHandler:Landroid/os/Handler;

.field private mIsInteractive:Z

.field private mOnGoingAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

.field private mOnGoingAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

.field mSettingsObserver:Landroid/database/ContentObserver;

.field private mUpAnimFrameNum:I

.field private mUpAnimStartIndex:I

.field private mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

.field private mUpAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    .line 41
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTime:J

    .line 46
    iput-wide v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 50
    iput-wide v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCustAnimPostDelayTime:J

    .line 51
    iput-wide v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCustAnimPostDelayTimeOnAod:J

    .line 55
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimStartIndex:I

    .line 56
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimFrameNum:I

    .line 58
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimStartIndex:I

    .line 59
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimFrameNum:I

    .line 63
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    .line 70
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mIsInteractive:Z

    .line 73
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl$1;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 137
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    .line 139
    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_animation_view_1:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    .line 140
    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_animation_view_3:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->fingerprint_animation_post_delay_time:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTime:J

    .line 145
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->fingerprint_animation_post_delay_time_on_aod:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 148
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->fingerprint_cust_animation_post_delay_time:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCustAnimPostDelayTime:J

    .line 149
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->fingerprint_cust_animation_post_delay_time_on_aod:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCustAnimPostDelayTimeOnAod:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FingerprintAnimationCtrl"

    const-string p2, "Parse fingerprint animation post delay time error"

    .line 152
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-wide v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTime:J

    .line 154
    iput-wide v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 161
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_custom_unlock_animation_style"

    .line 162
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, -0x1

    .line 161
    invoke-virtual {p1, v0, p2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method protected checkAnimationValueValid()V
    .locals 5

    .line 96
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_unlock_animation_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " checkAnimationValueValid: current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintAnimationCtrl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v1, v2, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v3, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getDownEndFrameIndex(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 110
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v1, v2, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 114
    :cond_2
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    .line 117
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getDownStartFrameIndex(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimStartIndex:I

    .line 118
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getDownPlayFrameNum(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimFrameNum:I

    .line 120
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getUpStartFrameIndex(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimStartIndex:I

    .line 121
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getUpPlayFrameNum(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimFrameNum:I

    .line 125
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    .line 127
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    .line 130
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mIsInteractive:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    return-void
.end method

.method public isPlayingAnimation()Z
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz p0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->isAnimationRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public playAnimation(I)V
    .locals 3

    .line 214
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->DEBUG:Z

    const-string v1, "FingerprintAnimationCtrl"

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimation: type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    if-ne p1, v0, :cond_2

    .line 219
    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "playAnimation: type no change"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_4

    if-eq p1, v2, :cond_4

    .line 226
    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "playAnimation: type none or not touch down"

    .line 227
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 232
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->stopAnimation(I)V

    if-ne p1, v2, :cond_6

    .line 235
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-nez p1, :cond_5

    return-void

    .line 238
    :cond_5
    invoke-virtual {p1, v2}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->start(Z)V

    .line 239
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    .line 240
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 242
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-nez p1, :cond_7

    return-void

    .line 245
    :cond_7
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    .line 246
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->stop()V

    .line 247
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->start(Z)V

    .line 248
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    :cond_8
    :goto_0
    return-void
.end method

.method public resetState()V
    .locals 2

    const-string v0, "FingerprintAnimationCtrl"

    const-string v1, "resetState"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->stop()V

    .line 297
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->resetResource()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->stop()V

    .line 302
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->resetResource()V

    :cond_1
    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    .line 306
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    return-void
.end method

.method public stopAnimation(I)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAnimation: current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOnGoingAnimationView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintAnimationCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    if-eqz v0, :cond_3

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->stop()V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->stop()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    .line 266
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mOnGoingAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    .line 269
    :cond_3
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    return-void
.end method

.method public updateAnimationDelayTime(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 281
    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTime:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 283
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1, v0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->updateAnimPostDelayTime(J)V

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz p0, :cond_2

    .line 288
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->updateAnimPostDelayTime(J)V

    :cond_2
    return-void
.end method

.method public updateAnimationRes(Z)V
    .locals 9

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateanimationRes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInteractive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintAnimationCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mIsInteractive:Z

    .line 178
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownAnimationHelper = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUpAnimationHelper = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCustAnimPostDelayTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCustAnimPostDelayTimeOnAod:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 187
    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTime:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 191
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-nez p1, :cond_4

    .line 192
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getDownAnimationRes(Landroid/content/Context;I)[I

    move-result-object v4

    iget v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimStartIndex:I

    iget v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimFrameNum:I

    move-object v2, p1

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;-><init>(Landroid/widget/ImageView;[IJII)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->updateAnimPostDelayTime(J)V

    .line 200
    :goto_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-nez p1, :cond_5

    .line 201
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationResHelper;->getUpAnimationRes(I)[I

    move-result-object v4

    iget v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimStartIndex:I

    iget v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimFrameNum:I

    move-object v2, p1

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;-><init>(Landroid/widget/ImageView;[IJII)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    goto :goto_2

    .line 207
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->updateAnimPostDelayTime(J)V

    :goto_2
    return-void
.end method

.method public updateLayoutDimension(Z)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 314
    sget v1, Lcom/android/systemui/R$dimen;->fp_animation_width_2k:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->fp_animation_width_1080p:I

    .line 313
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 315
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 316
    sget p1, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    .line 315
    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 319
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 320
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 321
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 325
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationView:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V
    .locals 3

    .line 334
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->DEBUG:Z

    const-string v1, "FingerprintAnimationCtrl"

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register fp animation\'s callback = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animationState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    if-nez v0, :cond_1

    const-string p0, "It shouldn\'t go into the state."

    .line 338
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    .line 344
    :cond_2
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mAnimationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz p0, :cond_3

    .line 346
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    :cond_3
    :goto_0
    return-void
.end method
