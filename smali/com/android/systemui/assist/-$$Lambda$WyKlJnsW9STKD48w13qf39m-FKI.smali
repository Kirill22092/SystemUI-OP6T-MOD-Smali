.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/Clock;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;

    invoke-direct {v0}, Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;->INSTANCE:Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
