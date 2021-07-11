.class public final enum Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;
.super Ljava/lang/Enum;
.source "SmartspaceProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType$CardTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum ALARM:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum AMBIENT_MUSIC:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum ASSISTANT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum BIRTHDAY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum CALENDAR:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum COMMUTE_TIME:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum FLIGHT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum HAMMERSPACE_DEBUG:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum OOBE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum REMINDER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum TIPS:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

.field public static final enum WEATHER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 499
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 503
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "WEATHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->WEATHER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 507
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "CALENDAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->CALENDAR:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 511
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "COMMUTE_TIME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->COMMUTE_TIME:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 515
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "FLIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->FLIGHT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 519
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "BIRTHDAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->BIRTHDAY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 523
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "AMBIENT_MUSIC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->AMBIENT_MUSIC:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 527
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "TIPS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->TIPS:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 531
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "REMINDER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->REMINDER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 535
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "ASSISTANT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->ASSISTANT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 539
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "ALARM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->ALARM:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 543
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "HAMMERSPACE_DEBUG"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->HAMMERSPACE_DEBUG:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 547
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const-string v1, "OOBE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->OOBE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    .line 494
    sget-object v15, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v15, v1, v2

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->WEATHER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->CALENDAR:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->COMMUTE_TIME:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->FLIGHT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->BIRTHDAY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->AMBIENT_MUSIC:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->TIPS:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->REMINDER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->ASSISTANT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->ALARM:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->HAMMERSPACE_DEBUG:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->$VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 665
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 666
    iput p3, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 631
    :pswitch_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->OOBE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 630
    :pswitch_1
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->HAMMERSPACE_DEBUG:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 629
    :pswitch_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->ALARM:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 628
    :pswitch_3
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->ASSISTANT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 627
    :pswitch_4
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->REMINDER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 626
    :pswitch_5
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->TIPS:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 625
    :pswitch_6
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->AMBIENT_MUSIC:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 624
    :pswitch_7
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->BIRTHDAY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 623
    :pswitch_8
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->FLIGHT:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 622
    :pswitch_9
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->COMMUTE_TIME:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 621
    :pswitch_a
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->CALENDAR:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 620
    :pswitch_b
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->WEATHER:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    .line 619
    :pswitch_c
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 651
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType$CardTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;
    .locals 1

    .line 494
    const-class v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object p0
.end method

.method public static values()[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;
    .locals 1

    .line 494
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->$VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    invoke-virtual {v0}, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 606
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->value:I

    return p0
.end method
