.class public final Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmartspaceProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartspaceCard"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CARD_ID_FIELD_NUMBER:I = 0x2

.field public static final CARD_PRIORITY_FIELD_NUMBER:I = 0xd

.field public static final CARD_TYPE_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field public static final DURING_EVENT_FIELD_NUMBER:I = 0x4

.field public static final DURING_EVENT_STATIC_FIELD_NUMBER:I = 0xf

.field public static final EVENT_DURATION_MILLIS_FIELD_NUMBER:I = 0xb

.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0xa

.field public static final EXPIRY_CRITERIA_FIELD_NUMBER:I = 0xc

.field public static final ICON_FIELD_NUMBER:I = 0x6

.field public static final IS_DATA_FROM_3P_APP_FIELD_NUMBER:I = 0x13

.field public static final IS_SENSITIVE_FIELD_NUMBER:I = 0x11

.field public static final IS_WORK_PROFILE_FIELD_NUMBER:I = 0x12

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final POST_EVENT_FIELD_NUMBER:I = 0x5

.field public static final POST_EVENT_STATIC_FIELD_NUMBER:I = 0x10

.field public static final PRE_EVENT_FIELD_NUMBER:I = 0x3

.field public static final PRE_EVENT_STATIC_FIELD_NUMBER:I = 0xe

.field public static final SHOULD_DISCARD_FIELD_NUMBER:I = 0x1

.field public static final TAP_ACTION_FIELD_NUMBER:I = 0x8

.field public static final UPDATE_TIME_MILLIS_FIELD_NUMBER:I = 0x9


# instance fields
.field private bitField0_:I

.field private cardId_:I

.field private cardPriority_:I

.field private cardType_:I

.field private duringEventStatic_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private duringEvent_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private eventDurationMillis_:J

.field private eventTimeMillis_:J

.field private expiryCriteria_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

.field private icon_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

.field private isDataFrom3PApp_:Z

.field private isSensitive_:Z

.field private isWorkProfile_:Z

.field private postEventStatic_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private postEvent_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private preEventStatic_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private preEvent_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private shouldDiscard_:Z

.field private tapAction_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

.field private updateTimeMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7373
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    .line 7376
    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 7377
    const-class v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6400()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .locals 1

    .line 387
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;
    .locals 1

    .line 6127
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7301
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 7366
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 7360
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 7345
    :pswitch_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 7347
    const-class p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    monitor-enter p1

    .line 7348
    :try_start_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7350
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7353
    sput-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->PARSER:Lcom/google/protobuf/Parser;

    .line 7355
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 7342
    :pswitch_3
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    return-object p0

    :pswitch_4
    const/16 p0, 0x16

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "shouldDiscard_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "cardId_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "preEvent_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "duringEvent_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "postEvent_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "icon_"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string p2, "cardType_"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    .line 7318
    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p2

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string p2, "tapAction_"

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-string p2, "updateTimeMillis_"

    aput-object p2, p0, p1

    const/16 p1, 0xb

    const-string p2, "eventTimeMillis_"

    aput-object p2, p0, p1

    const/16 p1, 0xc

    const-string p2, "eventDurationMillis_"

    aput-object p2, p0, p1

    const/16 p1, 0xd

    const-string p2, "expiryCriteria_"

    aput-object p2, p0, p1

    const/16 p1, 0xe

    const-string p2, "cardPriority_"

    aput-object p2, p0, p1

    const/16 p1, 0xf

    .line 7325
    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p2

    aput-object p2, p0, p1

    const/16 p1, 0x10

    const-string p2, "preEventStatic_"

    aput-object p2, p0, p1

    const/16 p1, 0x11

    const-string p2, "duringEventStatic_"

    aput-object p2, p0, p1

    const/16 p1, 0x12

    const-string p2, "postEventStatic_"

    aput-object p2, p0, p1

    const/16 p1, 0x13

    const-string p2, "isSensitive_"

    aput-object p2, p0, p1

    const/16 p1, 0x14

    const-string p2, "isWorkProfile_"

    aput-object p2, p0, p1

    const/16 p1, 0x15

    const-string p2, "isDataFrom3PApp_"

    aput-object p2, p0, p1

    .line 7338
    sget-object p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    const-string p2, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0004\u0002\u0003\t\u0003\u0004\t\u0004\u0005\t\u0005\u0006\t\t\u0007\u000c\n\u0008\t\u000b\t\u0002\u000c\n\u0002\r\u000b\u0002\u000e\u000c\t\u000f\r\u000c\u0001\u000e\t\u0006\u000f\t\u0007\u0010\t\u0008\u0011\u0007\u0010\u0012\u0007\u0011\u0013\u0007\u0012"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7306
    :pswitch_5
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;

    invoke-direct {p0, p2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;-><init>(Lcom/google/geo/sidekick/SmartspaceProto$1;)V

    return-object p0

    .line 7303
    :pswitch_6
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCardPriority()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;
    .locals 0

    .line 4863
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority_:I

    invoke-static {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->forNumber(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4864
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIORITY_UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    :cond_0
    return-object p0
.end method

.method public getCardType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;
    .locals 0

    .line 5585
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardType_:I

    invoke-static {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->forNumber(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5586
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    :cond_0
    return-object p0
.end method

.method public getDuringEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 0

    .line 5047
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getEventDurationMillis()J
    .locals 2

    .line 5804
    iget-wide v0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis_:J

    return-wide v0
.end method

.method public getEventTimeMillis()J
    .locals 2

    .line 5757
    iget-wide v0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis_:J

    return-wide v0
.end method

.method public getExpiryCriteria()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;
    .locals 0

    .line 5851
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->expiryCriteria_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getIcon()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;
    .locals 0

    .line 5511
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->icon_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPostEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 0

    .line 5129
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->postEvent_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPreEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 0

    .line 4965
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->preEvent_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getShouldDiscard()Z
    .locals 0

    .line 4824
    iget-boolean p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->shouldDiscard_:Z

    return p0
.end method

.method public getTapAction()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;
    .locals 0

    .line 5628
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasIcon()Z
    .locals 0

    .line 5500
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->bitField0_:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasShouldDiscard()Z
    .locals 1

    .line 4813
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTapAction()Z
    .locals 0

    .line 5617
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->bitField0_:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
