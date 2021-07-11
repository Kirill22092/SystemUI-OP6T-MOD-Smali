.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;

    invoke-direct {v0}, Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;->INSTANCE:Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldagger/Lazy;

    invoke-static {p1}, Lcom/android/systemui/assist/PhoneStateMonitor;->lambda$isBouncerShowing$1(Ldagger/Lazy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
