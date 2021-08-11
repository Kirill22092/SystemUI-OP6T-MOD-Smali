.class public final enum Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
.super Ljava/lang/Enum;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlobalActionsEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_SCREENSHOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_POWER_MENU_OPEN"

    const/4 v2, 0x0

    const/16 v3, 0x151

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_POWER_MENU_CLOSE"

    const/4 v3, 0x1

    const/16 v4, 0x1d7

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_BUGREPORT_PRESS"

    const/4 v4, 0x2

    const/16 v5, 0x158

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_BUGREPORT_LONG_PRESS"

    const/4 v5, 0x3

    const/16 v6, 0x159

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_EMERGENCY_DIALER_PRESS"

    const/4 v6, 0x4

    const/16 v7, 0x15a

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_SCREENSHOT_PRESS"

    const/4 v7, 0x5

    const/16 v8, 0x15b

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_SCREENSHOT_LONG_PRESS"

    const/4 v8, 0x6

    const/16 v9, 0x15c

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    sget-object v9, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->mId:I

    return p0
.end method
