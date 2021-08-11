.class public final enum Lcom/android/systemui/qs/QSEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/qs/QSEvent;

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QS_ACTION_CLICK"

    const/4 v3, 0x0

    const/16 v4, 0x183

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QS_ACTION_SECONDARY_CLICK"

    const/4 v3, 0x1

    const/16 v4, 0x184

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QS_ACTION_LONG_PRESS"

    const/4 v3, 0x2

    const/16 v4, 0x185

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QS_PANEL_EXPANDED"

    const/4 v3, 0x3

    const/16 v4, 0x186

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QS_PANEL_COLLAPSED"

    const/4 v3, 0x4

    const/16 v4, 0x187

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QS_TILE_VISIBLE"

    const/4 v3, 0x5

    const/16 v4, 0x188

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QQS_PANEL_EXPANDED"

    const/4 v3, 0x6

    const/16 v4, 0x189

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QQS_PANEL_COLLAPSED"

    const/4 v3, 0x7

    const/16 v4, 0x18a

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v2, "QQS_TILE_VISIBLE"

    const/16 v3, 0x8

    const/16 v4, 0x18b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/qs/QSEvent;->$VALUES:[Lcom/android/systemui/qs/QSEvent;

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

    iput p3, p0, Lcom/android/systemui/qs/QSEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSEvent;->$VALUES:[Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSEvent;->_id:I

    return p0
.end method
