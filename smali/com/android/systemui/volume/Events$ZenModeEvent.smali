.class public final enum Lcom/android/systemui/volume/Events$ZenModeEvent;
.super Ljava/lang/Enum;
.source "Events.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZenModeEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$ZenModeEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 311
    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 312
    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "ZEN_MODE_OFF"

    const/4 v3, 0x1

    const/16 v4, 0x14f

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 314
    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "ZEN_MODE_IMPORTANT_ONLY"

    const/4 v4, 0x2

    const/16 v5, 0x9d

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 316
    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "ZEN_MODE_ALARMS_ONLY"

    const/4 v5, 0x3

    const/16 v6, 0x9e

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 318
    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "ZEN_MODE_NO_INTERRUPTIONS"

    const/4 v6, 0x4

    const/16 v7, 0x9f

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 309
    sget-object v7, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/systemui/volume/Events$ZenModeEvent;->$VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 323
    iput p3, p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->mId:I

    return-void
.end method

.method static fromZenMode(I)Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 335
    sget-object p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0

    .line 333
    :cond_0
    sget-object p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0

    .line 334
    :cond_1
    sget-object p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0

    .line 332
    :cond_2
    sget-object p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0

    .line 331
    :cond_3
    sget-object p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    .line 309
    const-class v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    .line 309
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->$VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$ZenModeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 326
    iget p0, p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->mId:I

    return p0
.end method
