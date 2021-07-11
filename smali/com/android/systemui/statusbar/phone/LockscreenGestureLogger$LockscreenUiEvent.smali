.class public final enum Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;
.super Ljava/lang/Enum;
.source "LockscreenGestureLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockscreenUiEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_CAMERA:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_DIALER:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_LOCK_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_NOTIFICATION_FALSE_TOUCH:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_NOTIFICATION_SHADE_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

.field public static final enum LOCKSCREEN_UNLOCKED_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_PULL_SHADE_OPEN"

    const/4 v2, 0x0

    const/16 v3, 0x21b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_LOCK_TAP"

    const/4 v3, 0x1

    const/16 v4, 0x21c

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_QUICK_SETTINGS_OPEN"

    const/4 v4, 0x2

    const/16 v5, 0x21d

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_UNLOCKED_QUICK_SETTINGS_OPEN"

    const/4 v5, 0x3

    const/16 v6, 0x21e

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_LOCK_SHOW_HINT"

    const/4 v6, 0x4

    const/16 v7, 0x21f

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_NOTIFICATION_SHADE_QUICK_SETTINGS_OPEN"

    const/4 v7, 0x5

    const/16 v8, 0x220

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_NOTIFICATION_SHADE_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_DIALER"

    const/4 v8, 0x6

    const/16 v9, 0x221

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_DIALER:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_CAMERA"

    const/4 v9, 0x7

    const/16 v10, 0x222

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_CAMERA:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_UNLOCK"

    const/16 v10, 0x8

    const/16 v11, 0x223

    invoke-direct {v0, v1, v10, v11}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_NOTIFICATION_FALSE_TOUCH"

    const/16 v11, 0x9

    const/16 v12, 0x224

    invoke-direct {v0, v1, v11, v12}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_NOTIFICATION_FALSE_TOUCH:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const-string v1, "LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND"

    const/16 v12, 0xa

    const/16 v13, 0x225

    invoke-direct {v0, v1, v12, v13}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 44
    sget-object v13, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v13, v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_NOTIFICATION_SHADE_QUICK_SETTINGS_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_DIALER:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_CAMERA:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_NOTIFICATION_FALSE_TOUCH:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;
    .locals 1

    .line 44
    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->mId:I

    return p0
.end method
