.class public final synthetic Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;

    invoke-direct {v0}, Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;->INSTANCE:Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method
