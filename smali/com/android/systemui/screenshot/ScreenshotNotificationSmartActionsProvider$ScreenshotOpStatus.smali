.class public final enum Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;
.super Ljava/lang/Enum;
.source "ScreenshotNotificationSmartActionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ScreenshotOpStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

.field public static final enum ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

.field public static final enum OP_STATUS_UNKNOWN:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

.field public static final enum SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

.field public static final enum TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    const-string v1, "OP_STATUS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->OP_STATUS_UNKNOWN:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    .line 50
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    .line 51
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    .line 52
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    const-string v1, "TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    .line 48
    sget-object v6, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->OP_STATUS_UNKNOWN:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;
    .locals 1

    .line 48
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    return-object v0
.end method
