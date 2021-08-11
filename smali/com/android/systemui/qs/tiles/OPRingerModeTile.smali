.class public Lcom/android/systemui/qs/tiles/OPRingerModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OPRingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mAudio:Landroid/media/AudioManager;

.field private mDebounce:Z

.field private mIconResList:[I

.field private mLabelResList:[I

.field private final mReceiver:Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;

.field private mRingerModeIdx:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x3

    new-array v0, p1, [I

    sget v1, Lcom/android/systemui/R$string;->volume_ringer_status_normal:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->volume_ringer_status_vibrate:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$string;->volume_ringer_status_silent:I

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mLabelResList:[I

    new-array p1, p1, [I

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_ring:I

    aput v0, p1, v2

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_vibrate:I

    aput v0, p1, v3

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_silence:I

    aput v0, p1, v4

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mIconResList:[I

    iput v2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    new-instance p1, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;-><init>(Lcom/android/systemui/qs/tiles/OPRingerModeTile;Lcom/android/systemui/qs/tiles/OPRingerModeTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mDebounce:Z

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<init>: ringer_mode_internal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->updateNewRingerMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/OPRingerModeTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->updateNewRingerMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private isSupportSocTriState()Z
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0x8a

    aput v1, p0, v0

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$scheduleResetDebounce$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mDebounce:Z

    return-void
.end method

.method private scheduleResetDebounce(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$OPRingerModeTile$D10Y8Nnp2RSDj8Fard0JzbGWqHo;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$OPRingerModeTile$D10Y8Nnp2RSDj8Fard0JzbGWqHo;-><init>(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateNewRingerMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d8

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mLabelResList:[I

    iget v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    aget v0, v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Error: mAudio is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mDebounce:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "clicking too fast, disable for a while ..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mDebounce:Z

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->scheduleResetDebounce(J)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick: curr_ringer_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->updateNewRingerMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->register()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->unregister()V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mAudio:Landroid/media/AudioManager;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v1}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    xor-int/lit8 v2, p2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    if-nez p2, :cond_2

    const/4 v0, 0x2

    :cond_2
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mIconResList:[I

    iget v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mRingerModeIdx:I

    aget p2, p2, v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->mLabelResList:[I

    aget v0, v1, v0

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->isSupportSocTriState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$scheduleResetDebounce$0$OPRingerModeTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->lambda$scheduleResetDebounce$0()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
