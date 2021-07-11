.class public final Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
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
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$Builder;,
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBTITLE_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private subtitle_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

.field private title_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2839
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    invoke-direct {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;-><init>()V

    .line 2842
    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    .line 2843
    const-class v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2700()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 1

    .line 713
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 1

    .line 2848
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2788
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2832
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 2826
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2811
    :pswitch_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 2813
    const-class p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    monitor-enter p1

    .line 2814
    :try_start_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 2816
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2819
    sput-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->PARSER:Lcom/google/protobuf/Parser;

    .line 2821
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

    .line 2808
    :pswitch_3
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "title_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "subtitle_"

    aput-object p2, p0, p1

    .line 2804
    sget-object p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->DEFAULT_INSTANCE:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2793
    :pswitch_5
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$Builder;

    invoke-direct {p0, p2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$Builder;-><init>(Lcom/google/geo/sidekick/SmartspaceProto$1;)V

    return-object p0

    .line 2790
    :pswitch_6
    new-instance p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    invoke-direct {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;-><init>()V

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

.method public getSubtitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    .locals 0

    .line 2484
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getTitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    .locals 0

    .line 2402
    iget-object p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title_:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getDefaultInstance()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasSubtitle()Z
    .locals 0

    .line 2473
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTitle()Z
    .locals 1

    .line 2391
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
