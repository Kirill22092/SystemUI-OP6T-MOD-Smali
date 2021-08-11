.class public final enum Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;
.super Ljava/lang/Enum;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BiometricUiEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_FACE_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_FACE_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_FACE_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_FINGERPRINT_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_FINGERPRINT_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_FINGERPRINT_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_IRIS_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_IRIS_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_IRIS_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field static final ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/biometrics/BiometricSourceType;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/biometrics/BiometricSourceType;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/biometrics/BiometricSourceType;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_FINGERPRINT_SUCCESS"

    const/4 v2, 0x0

    const/16 v3, 0x18c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_FINGERPRINT_FAILURE"

    const/4 v3, 0x1

    const/16 v4, 0x18d

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_FINGERPRINT_ERROR"

    const/4 v4, 0x2

    const/16 v5, 0x18e

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_FACE_SUCCESS"

    const/4 v5, 0x3

    const/16 v6, 0x18f

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_FACE_FAILURE"

    const/4 v6, 0x4

    const/16 v7, 0x190

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_FACE_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0x191

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_IRIS_SUCCESS"

    const/4 v8, 0x6

    const/16 v9, 0x192

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_IRIS_FAILURE"

    const/4 v9, 0x7

    const/16 v10, 0x193

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const-string v1, "BIOMETRIC_IRIS_ERROR"

    const/16 v10, 0x8

    const/16 v11, 0x194

    invoke-direct {v0, v1, v10, v11}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v11, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v11, v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v7, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v8, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_ERROR:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static/range {v3 .. v8}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_SUCCESS:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FINGERPRINT_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_FACE_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_IRIS_FAILURE:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

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

    iput p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->mId:I

    return p0
.end method
