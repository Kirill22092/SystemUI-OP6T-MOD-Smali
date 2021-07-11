.class final Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType$CardTypeVerifier;
.super Ljava/lang/Object;
.source "SmartspaceProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CardTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 656
    new-instance v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType$CardTypeVerifier;

    invoke-direct {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType$CardTypeVerifier;-><init>()V

    sput-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType$CardTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 659
    invoke-static {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->forNumber(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
