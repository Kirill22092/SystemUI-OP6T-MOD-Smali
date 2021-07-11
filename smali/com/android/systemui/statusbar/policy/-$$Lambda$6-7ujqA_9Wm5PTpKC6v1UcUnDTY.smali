.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$6-7ujqA_9Wm5PTpKC6v1UcUnDTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$6-7ujqA_9Wm5PTpKC6v1UcUnDTY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$6-7ujqA_9Wm5PTpKC6v1UcUnDTY;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$6-7ujqA_9Wm5PTpKC6v1UcUnDTY;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$6-7ujqA_9Wm5PTpKC6v1UcUnDTY;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$6-7ujqA_9Wm5PTpKC6v1UcUnDTY;

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

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onUnlockedChanged()V

    return-void
.end method
