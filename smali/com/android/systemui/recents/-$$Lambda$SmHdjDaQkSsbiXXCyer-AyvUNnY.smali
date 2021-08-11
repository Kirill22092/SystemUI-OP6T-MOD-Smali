.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;

    invoke-direct {v0}, Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->onRecentsDrawn()V

    return-void
.end method
