.class public Lcom/android/systemui/qs/tiles/ReadModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ReadModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mDefaultSetting:Lcom/oneplus/util/SystemSetting;

.field private mGrayModeSetting:Lcom/oneplus/util/SystemSetting;

.field private mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mIsSupportColorMode:Z

.field private mModeSetting:Lcom/oneplus/util/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 7

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe9

    aput v2, v0, v1

    .line 64
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mIsSupportColorMode:Z

    .line 70
    new-instance v6, Lcom/android/systemui/qs/tiles/ReadModeTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "reading_mode_status"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/ReadModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    .line 80
    new-instance v0, Lcom/android/systemui/qs/tiles/ReadModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ReadModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 88
    new-instance v0, Lcom/android/systemui/qs/tiles/ReadModeTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ReadModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 98
    new-instance v6, Lcom/android/systemui/qs/tiles/ReadModeTile$4;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "accessibility_display_grayscale_enabled"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/ReadModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mGrayModeSetting:Lcom/oneplus/util/SystemSetting;

    .line 108
    new-instance v6, Lcom/android/systemui/qs/tiles/ReadModeTile$5;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v4, "reading_mode_option_manual"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/ReadModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDefaultSetting:Lcom/oneplus/util/SystemSetting;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ReadModeTile;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private isBlackEnabled()Z
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {p0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isColorCalibrationAvailable()Z
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 250
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 251
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isGrayEnabled()Z

    move-result p0

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isColorEnabled()Z
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {p0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEnabled()Z
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

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

.method private isGrayEnabled()Z
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mGrayModeSetting:Lcom/oneplus/util/SystemSetting;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/util/SystemSetting;->getValue(I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private popDialog()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x50d0069

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x50d0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 204
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 205
    sget v1, Lcom/android/systemui/R$style;->oneplus_theme_dialog_dark:I

    goto :goto_0

    .line 206
    :cond_0
    sget v1, Lcom/android/systemui/R$style;->oneplus_theme_dialog_light:I

    .line 207
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x50d006a

    .line 208
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$ReadModeTile$in6zYK0Fb8g8gTkm5jCFznPCRvw;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$ReadModeTile$in6zYK0Fb8g8gTkm5jCFznPCRvw;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;)V

    .line 209
    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->cancel:I

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$ReadModeTile$4gqVt6jbv_huC305Rm5UTrtM7yA;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$ReadModeTile$4gqVt6jbv_huC305Rm5UTrtM7yA;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;)V

    .line 226
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 234
    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 235
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 236
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 237
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setEnabled(Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reading_mode_status_manual"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 308
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.OP_READING_MODE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d1

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_read_mode_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 6

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 138
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 142
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mIsSupportColorMode:Z

    const-string v3, "force-on"

    const-string v4, "force-off"

    if-nez v2, :cond_3

    .line 143
    sget-boolean v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "legacy read mode clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 144
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "off by user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDefaultSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result v0

    .line 156
    sget-boolean v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "option="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->popDialog()V

    goto :goto_1

    :cond_7
    const-string v0, "force-on-color"

    .line 166
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected handleLongClick()V
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mGrayModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mIsSupportColorMode:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDefaultSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 266
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateState:state.value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_0

    .line 268
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 270
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 271
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_read_mode_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 272
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_read_mode_on:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 273
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 274
    sget v0, Lcom/android/systemui/R$string;->quick_settings_read_mode_summary_on:I

    goto :goto_0

    .line 275
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->quick_settings_read_mode_summary_off:I

    .line 273
    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 276
    const-class p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorCalibrationAvailable()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 280
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_1

    .line 282
    :cond_2
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_3

    const/4 v1, 0x2

    :cond_3
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 287
    :goto_1
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mIsSupportColorMode:Z

    const-string v0, ""

    if-eqz p2, :cond_6

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_6

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x50d0069

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 290
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isBlackEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 291
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x50d0068

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 293
    :cond_5
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 296
    :cond_6
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_2
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ReadModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oem.read_mode.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$popDialog$0$ReadModeTile(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1"

    const-string v0, "sel_effect"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "bw"

    .line 218
    invoke-static {v0, p2, p1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "force-on"

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "clr"

    .line 214
    invoke-static {v0, p2, p1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "force-on-color"

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$popDialog$1$ReadModeTile(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p2, "user cancel"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 128
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
