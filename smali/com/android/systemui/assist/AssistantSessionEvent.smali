.class public final enum Lcom/android/systemui/assist/AssistantSessionEvent;
.super Ljava/lang/Enum;
.source "AssistantSessionEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistantSessionEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_UNKNOWN"

    const/4 v3, 0x0

    const/16 v4, 0x20b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_TIMEOUT_DISMISS"

    const/4 v3, 0x1

    const/16 v4, 0x20c

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_INVOCATION_START"

    const/4 v3, 0x2

    const/16 v4, 0x20d

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_INVOCATION_CANCELLED"

    const/4 v3, 0x3

    const/16 v4, 0x20e

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_USER_DISMISS"

    const/4 v3, 0x4

    const/16 v4, 0x20f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_UPDATE"

    const/4 v3, 0x5

    const/16 v4, 0x210

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v2, "ASSISTANT_SESSION_CLOSE"

    const/4 v3, 0x6

    const/16 v4, 0x211

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

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

    iput p3, p0, Lcom/android/systemui/assist/AssistantSessionEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistantSessionEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistantSessionEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistantSessionEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/AssistantSessionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistantSessionEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/AssistantSessionEvent;->id:I

    return p0
.end method
