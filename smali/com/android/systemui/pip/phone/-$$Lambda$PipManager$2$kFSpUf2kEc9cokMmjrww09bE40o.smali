.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/pip/phone/PipManager$2;->lambda$onActivityPinned$0()V

    return-void
.end method
