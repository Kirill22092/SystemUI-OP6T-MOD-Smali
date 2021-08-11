.class public final enum Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;
.super Ljava/lang/Enum;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BouncerUiEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_DISMISS_EXTENDED_ACCESS"

    const/4 v3, 0x1

    const/16 v4, 0x19d

    invoke-direct {v0, v1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_DISMISS_BIOMETRIC"

    const/4 v4, 0x2

    const/16 v5, 0x19e

    invoke-direct {v0, v1, v4, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_DISMISS_NONE_SECURITY"

    const/4 v5, 0x3

    const/16 v6, 0x19f

    invoke-direct {v0, v1, v5, v6}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_DISMISS_PASSWORD"

    const/4 v6, 0x4

    const/16 v7, 0x1a0

    invoke-direct {v0, v1, v6, v7}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_DISMISS_SIM"

    const/4 v7, 0x5

    const/16 v8, 0x1a1

    invoke-direct {v0, v1, v7, v8}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_PASSWORD_SUCCESS"

    const/4 v8, 0x6

    const/16 v9, 0x1a2

    invoke-direct {v0, v1, v8, v9}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "BOUNCER_PASSWORD_FAILURE"

    const/4 v9, 0x7

    const/16 v10, 0x1a3

    invoke-direct {v0, v1, v9, v10}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

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

    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->mId:I

    return p0
.end method
