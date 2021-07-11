.class public final enum Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;
.super Ljava/lang/Enum;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DozingUpdateUiEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_DOCKING:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_NOTIFICATION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SENSOR_DOUBLE_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SENSOR_LONG_SQUEEZE:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SENSOR_PICKUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SENSOR_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SENSOR_WAKEUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SENSOR_WAKE_LOCKSCREEN:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

.field public static final enum DOZING_UPDATE_SIGMOTION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 148
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_NOTIFICATION"

    const/4 v2, 0x0

    const/16 v3, 0x1b1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_NOTIFICATION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 151
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SIGMOTION"

    const/4 v3, 0x1

    const/16 v4, 0x1b2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SIGMOTION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 154
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SENSOR_PICKUP"

    const/4 v4, 0x2

    const/16 v5, 0x1b3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_PICKUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 157
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SENSOR_DOUBLE_TAP"

    const/4 v5, 0x3

    const/16 v6, 0x1b4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_DOUBLE_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 160
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SENSOR_LONG_SQUEEZE"

    const/4 v6, 0x4

    const/16 v7, 0x1b5

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_LONG_SQUEEZE:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 163
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_DOCKING"

    const/4 v7, 0x5

    const/16 v8, 0x1b6

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_DOCKING:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 166
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SENSOR_WAKEUP"

    const/4 v8, 0x6

    const/16 v9, 0x1b7

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_WAKEUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 169
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SENSOR_WAKE_LOCKSCREEN"

    const/4 v9, 0x7

    const/16 v10, 0x1b8

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_WAKE_LOCKSCREEN:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 172
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const-string v1, "DOZING_UPDATE_SENSOR_TAP"

    const/16 v10, 0x8

    const/16 v11, 0x1b9

    invoke-direct {v0, v1, v10, v11}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 146
    sget-object v11, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_NOTIFICATION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v11, v1, v2

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SIGMOTION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_PICKUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_DOUBLE_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_LONG_SQUEEZE:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_DOCKING:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_WAKEUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_WAKE_LOCKSCREEN:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->$VALUES:[Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->mId:I

    return-void
.end method

.method static fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 196
    :pswitch_0
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 195
    :pswitch_1
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_WAKE_LOCKSCREEN:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 194
    :pswitch_2
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_WAKEUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 193
    :pswitch_3
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_DOCKING:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 192
    :pswitch_4
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_LONG_SQUEEZE:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 191
    :pswitch_5
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_DOUBLE_TAP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 190
    :pswitch_6
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SENSOR_PICKUP:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 189
    :pswitch_7
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_SIGMOTION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    .line 188
    :pswitch_8
    sget-object p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_NOTIFICATION:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;
    .locals 1

    .line 146
    const-class v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;
    .locals 1

    .line 146
    sget-object v0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->$VALUES:[Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->mId:I

    return p0
.end method
