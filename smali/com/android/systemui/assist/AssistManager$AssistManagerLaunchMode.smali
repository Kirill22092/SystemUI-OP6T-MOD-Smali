.class public final enum Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;
.super Ljava/lang/Enum;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssistManagerLaunchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

.field public static final enum DEFAULT:Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

.field public static final enum UNKNOWN:Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;->UNKNOWN:Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;->DEFAULT:Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    sget-object v4, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;->UNKNOWN:Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;->$VALUES:[Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;->$VALUES:[Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistManager$AssistManagerLaunchMode;

    return-object v0
.end method
