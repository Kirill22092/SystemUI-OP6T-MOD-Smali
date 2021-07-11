.class public Lcom/android/systemui/qs/tiles/GameModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "GameModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mEsportModeSetting:Lcom/oneplus/util/SystemSetting;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateNavBarTime:J

.field private mModeSetting:Lcom/oneplus/util/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 14

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    .line 59
    new-instance p1, Lcom/android/systemui/qs/tiles/GameModeTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "game_mode_status"

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/qs/tiles/GameModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    .line 70
    new-instance p1, Lcom/android/systemui/qs/tiles/GameModeTile$2;

    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const-string v12, "esport_mode_enabled"

    const/4 v13, 0x1

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/qs/tiles/GameModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mEsportModeSetting:Lcom/oneplus/util/SystemSetting;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/GameModeTile;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/GameModeTile;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/GameModeTile;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isEnabled()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {p0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setEnabled(Z)V
    .locals 5

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 101
    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    move-wide v2, v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/GameModeTile$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/GameModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Z)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 149
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.OP_GAMING_MODE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_game_mode_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 94
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/GameModeTile;->setEnabled(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mEsportModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 126
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_0

    .line 127
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 129
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 130
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_game_mode_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const-string p2, ""

    .line 132
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 134
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_game_mode_on:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_1

    .line 136
    sget p2, Lcom/android/systemui/R$string;->quick_settings_game_mode_summary_on:I

    goto :goto_0

    .line 137
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->quick_settings_game_mode_summary_off:I

    .line 135
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 138
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 139
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/GameModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 87
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
