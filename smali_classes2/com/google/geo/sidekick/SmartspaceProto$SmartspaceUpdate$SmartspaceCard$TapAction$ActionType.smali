.class public final enum Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;
.super Ljava/lang/Enum;
.source "SmartspaceProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType$ActionTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

.field public static final enum BROADCAST:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

.field public static final enum START_ACTIVITY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

.field public static final enum UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 3870
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    .line 3878
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    const-string v1, "BROADCAST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->BROADCAST:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    .line 3886
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    const-string v1, "START_ACTIVITY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->START_ACTIVITY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    .line 3865
    sget-object v5, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->BROADCAST:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->$VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3962
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3963
    iput p3, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3928
    :cond_0
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->START_ACTIVITY:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    return-object p0

    .line 3927
    :cond_1
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->BROADCAST:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    return-object p0

    .line 3926
    :cond_2
    sget-object p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->UNDEFINED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    return-object p0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 3948
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType$ActionTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;
    .locals 1

    .line 3865
    const-class v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;
    .locals 1

    .line 3865
    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->$VALUES:[Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    invoke-virtual {v0}, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 3913
    iget p0, p0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;->value:I

    return p0
.end method
