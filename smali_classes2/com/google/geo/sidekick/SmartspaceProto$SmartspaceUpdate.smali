.class public final Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmartspaceProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CARD_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7771
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    invoke-direct {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;-><init>()V

    .line 7774
    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    .line 7775
    const-class v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$12200()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;
    .locals 1

    .line 7590
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7722
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 7764
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 7758
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 7743
    :pswitch_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 7745
    const-class p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    monitor-enter p1

    .line 7746
    :try_start_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7748
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7751
    sput-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->PARSER:Lcom/google/protobuf/Parser;

    .line 7753
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

    .line 7740
    :pswitch_3
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "card_"

    aput-object p3, p0, p2

    .line 7730
    const-class p2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    aput-object p2, p0, p1

    .line 7736
    sget-object p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7727
    :pswitch_5
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;

    invoke-direct {p0, p2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$Builder;-><init>(Lcom/google/geo/sidekick/SmartspaceProto$1;)V

    return-object p0

    .line 7724
    :pswitch_6
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;

    invoke-direct {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;-><init>()V

    return-object p0

    nop

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

.method public getCardList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;",
            ">;"
        }
    .end annotation

    .line 7399
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
