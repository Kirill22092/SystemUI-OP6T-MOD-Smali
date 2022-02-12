.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$wyfOWSoAtNXMn6peOSSRdcVKKIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$wyfOWSoAtNXMn6peOSSRdcVKKIs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$wyfOWSoAtNXMn6peOSSRdcVKKIs;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$wyfOWSoAtNXMn6peOSSRdcVKKIs;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$wyfOWSoAtNXMn6peOSSRdcVKKIs;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$wyfOWSoAtNXMn6peOSSRdcVKKIs;

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

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleScreenTurnedOn$1()V

    return-void
.end method
