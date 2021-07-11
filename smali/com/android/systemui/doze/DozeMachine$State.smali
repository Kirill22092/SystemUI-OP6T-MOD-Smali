.class public final enum Lcom/android/systemui/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 68
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 70
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 72
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 74
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 76
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_REQUEST_PULSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 78
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 80
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSING_BRIGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    .line 82
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSE_DONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 84
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "FINISH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 86
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_PAUSED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 88
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_PAUSING"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 90
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_DOCKED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/android/systemui/doze/DozeMachine$State;

    .line 66
    sget-object v14, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    .line 66
    const-class v0, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, [Lcom/android/systemui/doze/DozeMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method


# virtual methods
.method canPulse()Z
    .locals 2

    .line 93
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method isAlwaysOn()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I
    .locals 3

    .line 123
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    :pswitch_1
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x2

    :cond_2
    return v2

    :pswitch_2
    return v1

    :pswitch_3
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    :pswitch_4
    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method staysAwake()Z
    .locals 1

    .line 106
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
