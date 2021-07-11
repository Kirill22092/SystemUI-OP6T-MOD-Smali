.class public Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideControllerImpl.java"

# interfaces
.implements Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;
.implements Lcom/oneplus/opzenmode/OpZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;,
        Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private mAccentColor:I

.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

.field private mIsLandscape:Z

.field private mIsREDVersion:Z

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpThreekeyVolumeGuideCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingType:[I

.field private mThemeColorMode:I

.field private mThreeKeystate:I

.field private mType:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mType:I

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mOpThreekeyVolumeGuideCallBack:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mItemEntities:Ljava/util/List;

    .line 78
    new-instance v1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    invoke-direct {v1, p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;-><init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 83
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    .line 92
    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAccentColor:I

    .line 93
    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThemeColorMode:I

    .line 94
    iput-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsREDVersion:Z

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThreeKeystate:I

    .line 97
    iput-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsLandscape:Z

    .line 99
    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$1;-><init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;IZ)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showH(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->dismissH(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->stateChangeH(I)V

    return-void
.end method

.method private computeTimeoutH()I
    .locals 0

    const/16 p0, 0x3a98

    return p0
.end method

.method private convertThreekeyToType(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private dismissH(I)V
    .locals 2

    .line 160
    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissH r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShowingType[type]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->updateShowingType(II)V

    .line 165
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "drawable"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initDialogData()V
    .locals 20

    move-object/from16 v0, p0

    .line 228
    new-instance v7, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;

    sget v2, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_silent_title:I

    sget v3, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_silent_msg:I

    sget v4, Lcom/android/systemui/R$drawable;->threekey_volume_silent_guide_light_pic:I

    sget v5, Lcom/android/systemui/R$drawable;->threekey_volume_silent_guide_dark_pic:I

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;-><init>(IIIII)V

    .line 230
    new-instance v1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;

    sget v9, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_vibrate_title:I

    sget v10, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_vibrate_msg:I

    sget v11, Lcom/android/systemui/R$drawable;->threekey_volume_vibrate_guide_light_pic:I

    sget v12, Lcom/android/systemui/R$drawable;->threekey_volume_vibrate_guide_dark_pic:I

    const/4 v13, 0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;-><init>(IIIII)V

    .line 232
    new-instance v2, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;

    sget v15, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_ring_title:I

    sget v16, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_ring_msg:I

    sget v17, Lcom/android/systemui/R$drawable;->threekey_volume_ring_guide_light_pic:I

    sget v18, Lcom/android/systemui/R$drawable;->threekey_volume_ring_guide_dark_pic:I

    const/16 v19, 0x2

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;-><init>(IIIII)V

    .line 234
    new-instance v3, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;

    sget v9, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_mutering_title:I

    sget v10, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_mutering_msg:I

    sget v11, Lcom/android/systemui/R$drawable;->threekey_volume_mutering_guide_light_pic:I

    sget v12, Lcom/android/systemui/R$drawable;->threekey_volume_mutering_guide_dark_pic:I

    const/4 v13, 0x3

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;-><init>(IIIII)V

    .line 236
    iget-object v4, v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mItemEntities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mItemEntities:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 510
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isThreekeyGuideEverShow(I)Z
    .locals 4

    const/4 v0, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 476
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_silent_guide_dialog"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    .line 479
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_vibrate_guide_dialog"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 482
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_ring_guide_dialog"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 485
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_mute_ring_guide_dialog"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method

.method private synthetic lambda$showInfoDialog$0(ILandroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "OpThreekeyVolumeGuideControllerImpl"

    const-string p3, "showInfoDialog, setNegativeButton"

    .line 304
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->updateShowingType(II)V

    .line 306
    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->setThreekeyGuideEverShow(I)Z

    return-void
.end method

.method private setThreekeyGuideEverShow(I)Z
    .locals 3

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 494
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_silent_guide_dialog"

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 497
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_vibrate_guide_dialog"

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 500
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_ring_guide_dialog"

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 503
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "threekey_mute_ring_guide_dialog"

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showH(IZ)V
    .locals 4

    .line 143
    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showH r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShowingType[type]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    aget v0, v0, p1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    if-gt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 150
    invoke-direct {p0, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->dismissH(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->isThreekeyGuideEverShow(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    if-ne p1, v2, :cond_5

    if-nez p2, :cond_5

    :cond_4
    return-void

    .line 155
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->updateShowingType(II)V

    .line 156
    iget-object p2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mItemEntities:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showInfoDialog(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showInfoDialog(IIIIILjava/lang/Runnable;)V
    .locals 6

    const-string v0, "OpThreekeyVolumeGuideControllerImpl"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-ne p3, v1, :cond_0

    if-ne p4, v1, :cond_0

    if-ne p1, v1, :cond_0

    const-string p0, "showInfoDialog, nothing to show"

    .line 274
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    .line 280
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 281
    sget v4, Lcom/android/systemui/R$style;->oneplus_theme_dialog_dark:I

    goto :goto_0

    .line 282
    :cond_1
    sget v4, Lcom/android/systemui/R$style;->oneplus_theme_dialog_light:I

    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 284
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eq p2, v1, :cond_2

    .line 287
    invoke-virtual {v3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_2
    if-eq p3, v1, :cond_3

    .line 290
    invoke-virtual {v3, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_3
    if-eq p1, v1, :cond_5

    .line 293
    iget-boolean p2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsLandscape:Z

    if-eqz p2, :cond_4

    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_land"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 295
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInfoDialog, resLandName:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", before:"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 297
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", after:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_4
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomImage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_5
    if-eq p4, v1, :cond_6

    .line 303
    new-instance p1, Lcom/oneplus/opthreekey/-$$Lambda$OpThreekeyVolumeGuideControllerImpl$AXdii1Cjht4N0sLBNN7ptwe34zQ;

    invoke-direct {p1, p0, p5}, Lcom/oneplus/opthreekey/-$$Lambda$OpThreekeyVolumeGuideControllerImpl$AXdii1Cjht4N0sLBNN7ptwe34zQ;-><init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V

    invoke-virtual {v3, p4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 309
    :cond_6
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p6, :cond_7

    .line 311
    new-instance p2, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$2;

    invoke-direct {p2, p0, p6}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$2;-><init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 320
    :cond_7
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p2, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$3;

    invoke-direct {p2, p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$3;-><init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 327
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 328
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p2, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;

    invoke-direct {p2, p0, p5}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$4;-><init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 341
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x10c0100

    .line 345
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 350
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 351
    iget p3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mWindowType:I

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 353
    const-class p3, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 p2, 0x30

    .line 355
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 357
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInfoDialog(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showInfoDialog(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private showInfoDialog(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;Ljava/lang/Runnable;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 252
    iget v5, p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->type:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz v5, :cond_0

    if-eq v5, v0, :cond_0

    const/4 v2, 0x2

    if-eq v5, v2, :cond_0

    const/4 v2, 0x3

    if-eq v5, v2, :cond_0

    move v2, v1

    move v3, v2

    move v4, v3

    goto :goto_1

    .line 259
    :cond_0
    iget v1, p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->nameId:I

    .line 260
    iget v2, p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->msgId:I

    .line 261
    sget v3, Lcom/android/systemui/R$string;->threekey_volume_guide_dialog_ok:I

    .line 262
    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThemeColorMode:I

    if-ne v4, v0, :cond_1

    iget p1, p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->darkResId:I

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$ItemEntity;->resId:I

    :goto_0
    move v4, v3

    move v3, v2

    move v2, v1

    move v1, p1

    :goto_1
    move-object v0, p0

    move-object v6, p2

    .line 267
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showInfoDialog(IIIIILjava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private stateChangeH(I)V
    .locals 3

    .line 184
    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThreeKeystate:I

    .line 185
    sget-boolean v1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChangeH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastThreeKeystate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThreeKeystate:I

    if-eq p1, v1, :cond_1

    .line 187
    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThreeKeystate:I

    :cond_1
    const/4 p1, -0x1

    if-eq v0, p1, :cond_2

    .line 193
    iget p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThreeKeystate:I

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->convertThreekeyToType(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->showH(IZ)V

    :cond_2
    return-void
.end method

.method private updateShowingType(II)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    aput p2, p0, p1

    return-void
.end method

.method private updateTheme(Z)V
    .locals 6

    .line 391
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x64

    .line 392
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 394
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v2

    .line 395
    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThemeColorMode:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAccentColor:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsREDVersion:Z

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 396
    :goto_1
    sget-boolean v4, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTheme change:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " force:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsREDVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsREDVersion:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isREDVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    .line 398
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsREDVersion:Z

    .line 399
    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThemeColorMode:I

    .line 400
    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mAccentColor:I

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->applyTheme()V

    :cond_4
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;)V
    .locals 3

    .line 431
    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mOpThreekeyVolumeGuideCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :try_start_1
    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mType:I

    invoke-interface {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;->onThreekeyVolumeGuideUiStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OpThreekeyVolumeGuideControllerImpl"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call to IOpThreekeyVolumeGuideControllerCallBack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;

    invoke-virtual {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->addCallback(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;)V

    return-void
.end method

.method public applyTheme()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 407
    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mThemeColorMode:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 417
    sget p0, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_light:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    .line 418
    sget p0, Lcom/android/systemui/R$color;->op_control_bg_color_control:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    goto :goto_0

    .line 410
    :cond_0
    sget p0, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    .line 411
    sget p0, Lcom/android/systemui/R$color;->op_control_bg_color_control:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    :goto_0
    return-void
.end method

.method public dismiss(I)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public init(ILcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$UserActivityListener;)V
    .locals 1

    const-string p2, "OpThreekeyVolumeGuideControllerImpl"

    const-string v0, "init"

    .line 213
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mWindowType:I

    .line 216
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 217
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 219
    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->isLandscape()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsLandscape:Z

    .line 220
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 221
    const-class p1, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 222
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 223
    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->initDialogData()V

    return-void
.end method

.method public isNeedToShowGuideUi(IZ)I
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToShowGuideUi, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", force:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->show(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$showInfoDialog$0$OpThreekeyVolumeGuideControllerImpl(ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->lambda$showInfoDialog$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigChanged, newConfig.orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->updateTheme(Z)V

    .line 374
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 375
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsLandscape:Z

    if-eq v1, p1, :cond_1

    .line 376
    iput-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mIsLandscape:Z

    .line 377
    :goto_1
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mShowingType:[I

    array-length p1, p1

    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    .line 378
    invoke-direct {p0, v0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->updateShowingType(II)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->dismiss(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 2

    .line 386
    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThreeKeyStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v0, 0x4

    const/16 v1, 0x96

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;)V
    .locals 1

    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mOpThreekeyVolumeGuideCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 445
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;

    invoke-virtual {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->removeCallback(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController$IOpThreekeyVolumeGuideControllerCallBack;)V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->computeTimeoutH()I

    move-result v0

    .line 174
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    .line 174
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    sget-boolean p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rescheduleTimeout "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public show(IZ)V
    .locals 2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpThreekeyVolumeGuideControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
