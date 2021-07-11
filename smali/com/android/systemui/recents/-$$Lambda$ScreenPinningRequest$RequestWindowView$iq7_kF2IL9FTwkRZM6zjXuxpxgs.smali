.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequest$RequestWindowView$iq7_kF2IL9FTwkRZM6zjXuxpxgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequest$RequestWindowView$iq7_kF2IL9FTwkRZM6zjXuxpxgs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequest$RequestWindowView$iq7_kF2IL9FTwkRZM6zjXuxpxgs;

    invoke-direct {v0}, Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequest$RequestWindowView$iq7_kF2IL9FTwkRZM6zjXuxpxgs;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequest$RequestWindowView$iq7_kF2IL9FTwkRZM6zjXuxpxgs;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequest$RequestWindowView$iq7_kF2IL9FTwkRZM6zjXuxpxgs;

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

    invoke-static {p1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->lambda$inflateView$0(Ldagger/Lazy;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    return-object p0
.end method
