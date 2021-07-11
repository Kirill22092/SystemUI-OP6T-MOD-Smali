.class public final synthetic Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;

    invoke-direct {v0}, Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;->INSTANCE:Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/systemui/pip/PipAnimationController;->lambda$new$0()Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0
.end method
