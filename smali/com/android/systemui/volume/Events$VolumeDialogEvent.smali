.class public final enum Lcom/android/systemui/volume/Events$VolumeDialogEvent;
.super Ljava/lang/Enum;
.source "Events.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolumeDialogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$VolumeDialogEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 230
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 231
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_SETTINGS_CLICK"

    const/4 v3, 0x1

    const/16 v4, 0x8f

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 233
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_EXPAND_DETAILS"

    const/4 v4, 0x2

    const/16 v5, 0x90

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 235
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_COLLAPSE_DETAILS"

    const/4 v5, 0x3

    const/16 v6, 0x91

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 237
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_ACTIVE_STREAM_CHANGED"

    const/4 v6, 0x4

    const/16 v7, 0x92

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 239
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_MUTE_STREAM"

    const/4 v7, 0x5

    const/16 v8, 0x93

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 241
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_UNMUTE_STREAM"

    const/4 v8, 0x6

    const/16 v9, 0x94

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 243
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_TO_VIBRATE_STREAM"

    const/4 v9, 0x7

    const/16 v10, 0x95

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 245
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_SLIDER"

    const/16 v10, 0x8

    const/16 v11, 0x96

    invoke-direct {v0, v1, v10, v11}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 247
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_DIALOG_SLIDER_TO_ZERO"

    const/16 v11, 0x9

    const/16 v12, 0x97

    invoke-direct {v0, v1, v11, v12}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 249
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_KEY_TO_ZERO"

    const/16 v12, 0xa

    const/16 v13, 0x98

    invoke-direct {v0, v1, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 251
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "VOLUME_KEY"

    const/16 v13, 0xb

    const/16 v14, 0x99

    invoke-direct {v0, v1, v13, v14}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 253
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "RINGER_MODE_SILENT"

    const/16 v14, 0xc

    const/16 v15, 0x9a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 255
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "RINGER_MODE_VIBRATE"

    const/16 v15, 0xd

    const/16 v14, 0x9b

    invoke-direct {v0, v1, v15, v14}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 257
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "RINGER_MODE_NORMAL"

    const/16 v14, 0xe

    const/16 v15, 0x14e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 259
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "USB_OVERHEAT_ALARM"

    const/16 v15, 0xf

    const/16 v14, 0xa0

    invoke-direct {v0, v1, v15, v14}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 261
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "USB_OVERHEAT_ALARM_DISMISSED"

    const/16 v14, 0x10

    const/16 v15, 0xa1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 228
    sget-object v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput p3, p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->mId:I

    return-void
.end method

.method static fromIconState(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 283
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0

    .line 281
    :cond_0
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0

    .line 279
    :cond_1
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0

    .line 277
    :cond_2
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0
.end method

.method static fromKeyLevel(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 0

    if-nez p0, :cond_0

    .line 292
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_0
    return-object p0
.end method

.method static fromRingerMode(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 304
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0

    .line 302
    :cond_0
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0

    .line 300
    :cond_1
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0

    .line 298
    :cond_2
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0
.end method

.method static fromSliderLevel(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 0

    if-nez p0, :cond_0

    .line 288
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 1

    .line 228
    const-class v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 1

    .line 228
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$VolumeDialogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->mId:I

    return p0
.end method
