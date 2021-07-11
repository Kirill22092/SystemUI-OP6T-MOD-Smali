.class public final enum Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
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
    name = "VolumeDialogCloseEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 179
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 180
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE"

    const/4 v3, 0x1

    const/16 v4, 0x86

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 182
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_SYSTEM"

    const/4 v4, 0x2

    const/16 v5, 0x87

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 185
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_TIMEOUT"

    const/4 v5, 0x3

    const/16 v6, 0x88

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 187
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_SCREEN_OFF"

    const/4 v6, 0x4

    const/16 v7, 0x89

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 189
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_SETTINGS"

    const/4 v7, 0x5

    const/16 v8, 0x8a

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 192
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_STREAM_GONE"

    const/4 v8, 0x6

    const/16 v9, 0x8c

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 195
    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED"

    const/4 v9, 0x7

    const/16 v10, 0x8e

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 177
    sget-object v10, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput p3, p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->mId:I

    return-void
.end method

.method static fromReason(I)Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    .line 224
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 222
    :cond_0
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 220
    :cond_1
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 218
    :cond_2
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 216
    :cond_3
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 214
    :cond_4
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 212
    :cond_5
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0

    .line 210
    :cond_6
    sget-object p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
    .locals 1

    .line 177
    const-class v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
    .locals 1

    .line 177
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 204
    iget p0, p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->mId:I

    return p0
.end method
