.class public final Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmartspaceProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExpiryCriteria"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

.field public static final EXPIRATION_TIME_MILLIS_FIELD_NUMBER:I = 0x1

.field public static final MAX_IMPRESSIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private expirationTimeMillis_:J

.field private maxImpressions_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4782
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    invoke-direct {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;-><init>()V

    .line 4785
    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    .line 4786
    const-class v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4438
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5800()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;
    .locals 1

    .line 4433
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;
    .locals 1

    .line 4791
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4731
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 4775
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 4769
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4754
    :pswitch_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 4756
    const-class p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    monitor-enter p1

    .line 4757
    :try_start_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 4759
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4762
    sput-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->PARSER:Lcom/google/protobuf/Parser;

    .line 4764
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

    .line 4751
    :pswitch_3
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "expirationTimeMillis_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "maxImpressions_"

    aput-object p2, p0, p1

    .line 4747
    sget-object p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0004\u0001"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4736
    :pswitch_5
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria$Builder;

    invoke-direct {p0, p2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria$Builder;-><init>(Lcom/google/geo/sidekick/SmartspaceProto$1;)V

    return-object p0

    .line 4733
    :pswitch_6
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    invoke-direct {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;-><init>()V

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

.method public getExpirationTimeMillis()J
    .locals 2

    .line 4463
    iget-wide v0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->expirationTimeMillis_:J

    return-wide v0
.end method
