.class public final enum Lcom/android/systemui/assist/AssistHandleBehavior;
.super Ljava/lang/Enum;
.source "AssistHandleBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistHandleBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum TEST:Lcom/android/systemui/assist/AssistHandleBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const-string v1, "TEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->TEST:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const-string v1, "OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const-string v1, "LIKE_HOME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const-string v1, "REMINDER_EXP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/assist/AssistHandleBehavior;

    sget-object v6, Lcom/android/systemui/assist/AssistHandleBehavior;->TEST:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/assist/AssistHandleBehavior;->LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/assist/AssistHandleBehavior;->$VALUES:[Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistHandleBehavior;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehavior;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistHandleBehavior;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->$VALUES:[Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/AssistHandleBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistHandleBehavior;

    return-object v0
.end method
