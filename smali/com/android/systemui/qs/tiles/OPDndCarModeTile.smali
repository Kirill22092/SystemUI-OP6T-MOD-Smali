.class public Lcom/android/systemui/qs/tiles/OPDndCarModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OPDndCarModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCarModeStatus:I

.field private mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    .line 66
    new-instance p1, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v2, "oneplus_carmode_switch"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 75
    new-instance p1, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v2, "zen_mode_car"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 82
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->changeTile()Z

    move-result p0

    return p0
.end method

.method private changeTile()Z
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->handleDestroy()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 119
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.carmode"

    const-string v2, "com.oneplus.carmode.activity.SettingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d4

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_op_car_mode_dnd_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user clicked dnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPDndCarModeTile"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 103
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 170
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 174
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 146
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_0

    .line 147
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 149
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 150
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_op_car_mode_dnd_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 151
    sget p2, Lcom/android/systemui/R$drawable;->op_carmode_dnd_qs_icon:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 152
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_1

    .line 153
    sget p2, Lcom/android/systemui/R$string;->quick_settings_op_car_mode_dnd_summary_on:I

    goto :goto_0

    .line 154
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->quick_settings_op_car_mode_dnd_summary_off:I

    .line 152
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 155
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 156
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 184
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 108
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
