.class public final enum Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
.super Ljava/lang/Enum;
.source "CornerPathRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/ui/CornerPathRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Corner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

.field public static final enum TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 39
    new-instance v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    .line 40
    new-instance v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    .line 41
    new-instance v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const-string v1, "TOP_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    .line 42
    new-instance v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const-string v1, "TOP_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    .line 38
    sget-object v6, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->$VALUES:[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .locals 1

    .line 38
    const-class v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->$VALUES:[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    return-object v0
.end method
