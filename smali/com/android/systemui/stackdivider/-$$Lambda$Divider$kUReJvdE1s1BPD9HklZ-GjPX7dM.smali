.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;->INSTANCE:Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;

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

    check-cast p1, Ldagger/Lazy;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/Divider;->lambda$growRecents$5(Ldagger/Lazy;)V

    return-void
.end method
