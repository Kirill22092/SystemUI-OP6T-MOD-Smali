.class public final enum Lcom/android/systemui/log/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/log/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/log/LogLevel;

.field public static final enum DEBUG:Lcom/android/systemui/log/LogLevel;

.field public static final enum ERROR:Lcom/android/systemui/log/LogLevel;

.field public static final enum INFO:Lcom/android/systemui/log/LogLevel;

.field public static final enum VERBOSE:Lcom/android/systemui/log/LogLevel;

.field public static final enum WARNING:Lcom/android/systemui/log/LogLevel;

.field public static final enum WTF:Lcom/android/systemui/log/LogLevel;


# instance fields
.field private final nativeLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/android/systemui/log/LogLevel;

    new-instance v2, Lcom/android/systemui/log/LogLevel;

    const-string v3, "VERBOSE"

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 25
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/systemui/log/LogLevel;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    const/4 v6, 0x3

    .line 26
    invoke-direct {v2, v3, v4, v6}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/systemui/log/LogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x4

    .line 27
    invoke-direct {v2, v3, v5, v4}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/systemui/log/LogLevel;

    const-string v3, "WARNING"

    const/4 v5, 0x5

    .line 28
    invoke-direct {v2, v3, v6, v5}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/systemui/log/LogLevel;

    const-string v3, "ERROR"

    .line 29
    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    aput-object v2, v1, v4

    new-instance v0, Lcom/android/systemui/log/LogLevel;

    const-string v2, "WTF"

    const/4 v3, 0x7

    .line 30
    invoke-direct {v0, v2, v5, v3}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/log/LogLevel;->nativeLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    const-class v0, Lcom/android/systemui/log/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/log/LogLevel;
    .locals 1

    sget-object v0, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    invoke-virtual {v0}, [Lcom/android/systemui/log/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/log/LogLevel;

    return-object v0
.end method
