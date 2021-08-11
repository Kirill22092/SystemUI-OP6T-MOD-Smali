.class public final enum Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;
.super Ljava/lang/Enum;
.source "OpKeyguardClockInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardClockInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

.field private static allValues:[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

.field public static final enum aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

.field public static final enum keyguardOne:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

.field public static final enum keyguardTwo:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

.field public static final enum qs:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    const-string v1, "keyguardOne"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->keyguardOne:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    const-string v1, "keyguardTwo"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->keyguardTwo:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    const-string v1, "aod"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    const-string v1, "qs"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->qs:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v6, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->keyguardOne:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    aput-object v6, v1, v2

    sget-object v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->keyguardTwo:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->$VALUES:[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->values()[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->allValues:[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

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

.method public static fromOrdinal(I)Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;
    .locals 1

    sget-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->allValues:[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;
    .locals 1

    const-class v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;
    .locals 1

    sget-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->$VALUES:[Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    invoke-virtual {v0}, [Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    return-object v0
.end method
