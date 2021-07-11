.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;

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

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer$3;->lambda$reportUnlockAttempt$0()V

    return-void
.end method
