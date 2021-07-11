.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;

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

    check-cast p1, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-interface {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipShowMenu()V

    return-void
.end method
