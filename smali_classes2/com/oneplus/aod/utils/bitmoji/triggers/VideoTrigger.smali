.class public Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;
.source "VideoTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;
    }
.end annotation


# instance fields
.field private mPlayStart2:J

.field private mUsing:Z

.field private mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mPlayStart2:J

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$array;->op_bitmoji_video_whitelist:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mUsing:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mUsing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->whitelist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mPlayStart2:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private whitelist(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkAudioAttributes(Landroid/media/AudioAttributes;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCategories()[Ljava/lang/String;
    .locals 0

    const-string p0, "watching"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 0

    const-string p0, "watching"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 0

    const-string p0, "video"

    return-object p0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 0

    const-string p0, "video"

    return-object p0
.end method

.method protected getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$1;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method protected inCondition()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->checkAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isActiveInner()Z
    .locals 7

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    sub-long/2addr v2, v5

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    int-to-long v5, p0

    cmp-long p0, v2, v5

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    iget-wide v5, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->mPlayStart2:J

    cmp-long p0, v5, v2

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1
.end method

.method protected tagStartCountToCheckPlay()Ljava/lang/String;
    .locals 0

    const-string p0, "Bitmoji#VideoTrigger"

    return-object p0
.end method
