.class public final enum Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;
.super Ljava/lang/Enum;
.source "OpHomeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

.field public static final enum DOWN:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

.field public static final enum LEFT:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

.field public static final enum NONE:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

.field public static final enum RIGHT:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

.field public static final enum UP:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    .line 45
    new-instance v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    const-string v1, "UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->UP:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    .line 46
    new-instance v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    const-string v1, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->DOWN:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    .line 47
    new-instance v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    const-string v1, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    .line 48
    new-instance v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    const-string v1, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->RIGHT:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    .line 43
    sget-object v7, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    aput-object v7, v1, v2

    sget-object v2, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->UP:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->DOWN:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->$VALUES:[Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;
    .locals 1

    .line 43
    const-class v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;
    .locals 1

    .line 43
    sget-object v0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->$VALUES:[Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    invoke-virtual {v0}, [Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$AnimDirection;

    return-object v0
.end method
