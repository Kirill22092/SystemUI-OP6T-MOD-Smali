.class public Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;
.source "PhoneTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;
    }
.end annotation


# instance fields
.field private mPhoneState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->mPhoneState:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->mPhoneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected checkAudioAttributes(Landroid/media/AudioAttributes;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkConfigIsActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p1

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkConfigIsActive: configActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected getCategories()[Ljava/lang/String;
    .locals 0

    const-string p0, "messaging"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 0

    const-string p0, "messaging"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 0

    const-string p0, "phone"

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 0

    const-string p0, "messaging"

    return-object p0
.end method

.method protected getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$1;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method protected inCondition()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method protected isAudioActive()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlaybackStateActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected tagStartCountToCheckPlay()Ljava/lang/String;
    .locals 0

    const-string p0, "Bitmoji#PhoneTrigger"

    return-object p0
.end method
