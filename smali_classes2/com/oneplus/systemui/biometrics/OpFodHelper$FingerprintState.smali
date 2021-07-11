.class final enum Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;
.super Ljava/lang/Enum;
.source "OpFodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FingerprintState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

.field public static final enum LOCKOUT:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

.field public static final enum RUNNING:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

.field public static final enum STOP:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

.field public static final enum SUSPEND:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->RUNNING:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    .line 28
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    const-string v1, "STOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->STOP:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    .line 30
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    const-string v1, "SUSPEND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->SUSPEND:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    .line 32
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    const-string v1, "LOCKOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->LOCKOUT:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    .line 26
    sget-object v6, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->RUNNING:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->STOP:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->SUSPEND:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->$VALUES:[Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;
    .locals 1

    .line 26
    const-class v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;
    .locals 1

    .line 26
    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->$VALUES:[Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-virtual {v0}, [Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    return-object v0
.end method
