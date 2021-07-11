.class public final enum Lcom/android/systemui/screenshot/ScreenshotEvent;
.super Ljava/lang/Enum;
.source "ScreenshotEvent.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/ScreenshotEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SCROLL_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_REQUESTED_GLOBAL_ACTIONS"

    const/4 v2, 0x0

    const/16 v3, 0x12e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 32
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_REQUESTED_KEY_CHORD"

    const/4 v3, 0x1

    const/16 v4, 0x12f

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 34
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_REQUESTED_KEY_OTHER"

    const/4 v4, 0x2

    const/16 v5, 0x180

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 36
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_REQUESTED_OVERVIEW"

    const/4 v5, 0x3

    const/16 v6, 0x130

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 38
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS"

    const/4 v6, 0x4

    const/16 v7, 0x17e

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 40
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_REQUESTED_OTHER"

    const/4 v7, 0x5

    const/16 v8, 0x131

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 42
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_SAVED"

    const/4 v8, 0x6

    const/16 v9, 0x132

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 44
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_NOT_SAVED"

    const/4 v9, 0x7

    const/16 v10, 0x150

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 46
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_PREVIEW_TAPPED"

    const/16 v10, 0x8

    const/16 v11, 0x133

    invoke-direct {v0, v1, v10, v11}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 48
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_EDIT_TAPPED"

    const/16 v11, 0x9

    const/16 v12, 0x134

    invoke-direct {v0, v1, v11, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 50
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_SHARE_TAPPED"

    const/16 v12, 0xa

    const/16 v13, 0x135

    invoke-direct {v0, v1, v12, v13}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 52
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_SMART_ACTION_TAPPED"

    const/16 v13, 0xb

    const/16 v14, 0x176

    invoke-direct {v0, v1, v13, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 54
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_SCROLL_TAPPED"

    const/16 v14, 0xc

    const/16 v15, 0x175

    invoke-direct {v0, v1, v14, v15}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SCROLL_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 56
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_INTERACTION_TIMEOUT"

    const/16 v15, 0xd

    const/16 v14, 0x136

    invoke-direct {v0, v1, v15, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 58
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const-string v1, "SCREENSHOT_EXPLICIT_DISMISSAL"

    const/16 v14, 0xe

    const/16 v15, 0x137

    invoke-direct {v0, v1, v14, v15}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 29
    sget-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SCROLL_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    return-void
.end method

.method static getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 86
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    .line 83
    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    .line 81
    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    .line 79
    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    .line 77
    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    .line 75
    :cond_4
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 29
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    return p0
.end method
