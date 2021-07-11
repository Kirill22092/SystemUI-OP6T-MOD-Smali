.class public final enum Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;
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
    name = "CardPriority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority$CardPriorityVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

.field public static final enum PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

.field public static final enum PRIORITY_UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

.field public static final enum SECONDARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 402
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    const-string v1, "PRIORITY_UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIORITY_UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    .line 406
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    const-string v1, "PRIMARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    .line 410
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    const-string v1, "SECONDARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->SECONDARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    .line 397
    sget-object v5, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIORITY_UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->$VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 479
    iput p3, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->SECONDARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    return-object p0

    .line 443
    :cond_1
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIMARY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    return-object p0

    .line 442
    :cond_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->PRIORITY_UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    return-object p0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 464
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority$CardPriorityVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;
    .locals 1

    .line 397
    const-class v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    return-object p0
.end method

.method public static values()[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;
    .locals 1

    .line 397
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->$VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    invoke-virtual {v0}, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 429
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardPriority;->value:I

    return p0
.end method
