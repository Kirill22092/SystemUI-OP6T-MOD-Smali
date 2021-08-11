.class public final Lkotlin/jvm/internal/FloatCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

.field private static final MAX_VALUE:F = 3.4028235E38f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-direct {v0}, Lkotlin/jvm/internal/FloatCompanionObject;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAX_VALUE()F
    .locals 0

    sget p0, Lkotlin/jvm/internal/FloatCompanionObject;->MAX_VALUE:F

    return p0
.end method
